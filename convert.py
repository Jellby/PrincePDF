from __future__ import (unicode_literals, division, absolute_import, print_function)

__license__   = 'GPL v3'
__copyright__ = '2013, 2014, 2017, Jellby <jellby@yahoo.com>'
__docformat__ = 'restructuredtext en'

try:
    from PyQt5.Qt import Qt, QDialog, QHBoxLayout, QVBoxLayout, QLabel, QPushButton, QCheckBox, QTabWidget, QDialogButtonBox, QPlainTextEdit, QFont, QProcess, QProgressBar, QComboBox, QLineEdit
except ImportError:
    from PyQt4.Qt import Qt, QDialog, QHBoxLayout, QVBoxLayout, QLabel, QPushButton, QCheckBox, QTabWidget, QDialogButtonBox, QPlainTextEdit, QFont, QProcess, QProgressBar, QComboBox, QLineEdit
from calibre_plugins.prince_pdf.config import prefs
from calibre_plugins.prince_pdf.texteditwithtooltip import TextEditWithTooltip

load_translations()

# This dialog is created after the input book has been unpacked
class ConvertDialog(QDialog):

    hide_text = _('&Hide styles')
    show_text = _('&Show styles')
    prince_log = ''
    prince_file = ''
    prince_css = ''

    # GUI definition
    def __init__(self, mi, fmt, opf, oeb, icon):
        '''
        :param mi: The book metadata
        :param fmt: The source format used for conversion
        :param opf: The path to the OPF file
        :param oeb: An OEB object for the unpacked book
        :param icon: The window icon
        '''
        self.opf = opf
        self.oeb = oeb
        self.mi = mi
        # The unpacked book needs to be parsed before, to read the contents
        # of the prince-style file, if it exists
        self.parse()

        QDialog.__init__(self)

        self.setAttribute(Qt.WA_DeleteOnClose)

        self.setWindowTitle(_('Convert to PDF with Prince'))
        self.setWindowIcon(icon)

        self.l = QVBoxLayout()
        self.setLayout(self.l)

        self.title_label = QLabel(_('<b>Title:</b> %s') % self.mi.title)
        self.l.addWidget(self.title_label)

        self.format_label = QLabel(_('<b>Source format:</b> %s') % fmt)
        self.l.addWidget(self.format_label)

        self.add_book = QCheckBox(_('&Add PDF to the book record'))
        self.add_book.setToolTip(_('<qt>Add the converted PDF to the selected book record</qt>'))
        self.add_book.setChecked(prefs['add_book'])
        self.add_book.stateChanged.connect(self.set_add_book)
        self.l.addWidget(self.add_book)

        self.ll = QHBoxLayout()
        self.ll.setAlignment(Qt.AlignLeft)
        self.l.addLayout(self.ll)

        self.label_css = QLabel(_('&Custom style:'))
        self.ll.addWidget(self.label_css)

        self.css_list = QComboBox()
        self.css_list.setToolTip(_('<qt>Select one style to use. Additional styles can be created in the plugin configuration</qt>'))
        for key in sorted(prefs['custom_CSS_list'], key=lambda x: x.lower()):
            self.css_list.addItem(key, key)
        self.css_list.setCurrentIndex(self.css_list.findText(prefs['default_CSS']))
        self.css_list.currentIndexChanged.connect(self.set_css)
        self.ll.addWidget(self.css_list)
        self.label_css.setBuddy(self.css_list)

        self.ll_ = QHBoxLayout()
        self.l.addLayout(self.ll_)

        self.label_args = QLabel(_('A&dditional command-line arguments:'))
        self.ll_.addWidget(self.label_args)

        self.args = QLineEdit(self)
        self.args.setText(prefs['custom_args_list'][prefs['default_CSS']])
        self.args.setToolTip(_('<qt>Specify additional command-line arguments for the conversion</qt>'))
        self.ll_.addWidget(self.args)
        self.label_args.setBuddy(self.args)

        self.css = QTabWidget()
        self.css.setMinimumWidth(500)
        self.l.addWidget(self.css)

        self.css1 = TextEditWithTooltip()
        self.css1.setLineWrapMode(TextEditWithTooltip.NoWrap)
        self.css1.load_text(self.replace_templates(prefs['custom_CSS_list'][prefs['default_CSS']]),'css')
        self.css1.setToolTip(_('<qt>This stylesheet can be modified<br/>The default can be configured</qt>'))
        i = self.css.addTab(self.css1, _('C&ustom CSS'))
        self.css.setTabToolTip(i, _('<qt>Custom CSS stylesheet to be used for this conversion</qt>'))

        monofont = QFont('')
        monofont.setStyleHint(QFont.TypeWriter)

        if (self.prince_css):
            self.css2 = QPlainTextEdit()
            self.css2.setStyleSheet('* { font-family: monospace }')
            self.css2.setLineWrapMode(QPlainTextEdit.NoWrap)
            self.css2.setPlainText(self.prince_css)
            self.css2.setReadOnly(True)
            self.css2.setToolTip(_('<qt>This stylesheet cannot be modified</qt>'))
            i = self.css.addTab(self.css2, _('&Book CSS'))
            self.css.setTabToolTip(i, _('<qt>Book-specific CSS stylesheet included in the ebook file</qt>'))

        self.ll = QHBoxLayout()
        self.l.addLayout(self.ll)

        if (prefs['show_CSS']):
            self.toggle = QPushButton(self.hide_text, self)
        else:
            self.toggle = QPushButton(self.show_text, self)
        self.toggle.setToolTip(_('<qt>Show/hide the additional styles used for the conversion</qt>'))
        self.toggle.clicked.connect(self.toggle_tabs)

        self.convert = QPushButton(_('Con&vert'), self)
        self.convert.setToolTip(_('<qt>Run the conversion with Prince</qt>'))
        self.convert.setDefault(True)

        self.buttons = QDialogButtonBox(QDialogButtonBox.Cancel)
        self.buttons.addButton(self.toggle, QDialogButtonBox.ResetRole)
        self.buttons.addButton(self.convert, QDialogButtonBox.AcceptRole)
        self.l.addWidget(self.buttons)
        self.buttons.accepted.connect(self.prince_convert)
        self.buttons.rejected.connect(self.reject)

        if (not prefs['show_CSS']):
            self.css.hide()
        self.adjustSize()

    def toggle_tabs(self):
        '''
        Enable/disable the CSS tabs, and store the setting
        '''
        if (self.css.isVisible()):
            self.css.hide()
            self.label_args.hide()
            self.args.hide()
            self.toggle.setText(self.show_text)
            self.adjustSize()
        else:
            self.css.show()
            self.label_args.show()
            self.args.show()
            self.toggle.setText(self.hide_text)
            self.adjustSize()
        prefs['show_CSS'] = self.css.isVisible()

    def set_add_book(self):
        '''
        Save the status of the add_book checkbox
        '''
        prefs['add_book'] = self.add_book.isChecked()

    def set_css(self):
        '''
        Fill the custom CSS text box with the selected stylesheet (and command-line arguments)
        '''
        style = unicode(self.css_list.currentText())
        self.css1.load_text(self.replace_templates(prefs['custom_CSS_list'][style]),'css')
        self.args.setText(prefs['custom_args_list'][style])
        prefs['default_CSS'] = style

    def parse(self):
        '''
        Parse the unpacked OPF file to find and read the prince-style file
        '''
        from calibre.constants import DEBUG
        from os.path import dirname, join
        from lxml import etree
        import codecs

        if DEBUG: print(_('Parsing book...'))
        opf_dir = dirname(self.opf)
        root = etree.parse(self.opf).getroot()
        metadata = root.find('{*}metadata')
        for meta in metadata.findall("{*}meta[@name='prince-style']"):
            prince_id = meta.get('content')
            for item in self.oeb.manifest:
                if (item.id == prince_id):
                    self.prince_file = item.href
                    break
        if (self.prince_file):
            fl = codecs.open(join(opf_dir, self.prince_file), 'rb', 'utf-8')
            self.prince_css = fl.read()
            fl.close()

    def replace_templates(self, text):
        '''
        Replace templates (enclosed by '@{@', '@}@') in the input text
        '''
        import re
        import json
        from calibre.ebooks.metadata.book.formatter import SafeFormat
        from calibre.constants import DEBUG

        matches = list(re.finditer('@{@(.+?)@}@',text,re.DOTALL))
        results = {}
        for match in reversed(matches):
            result = SafeFormat().safe_format(match.group(1), self.mi, ('EXCEPTION: '), self.mi)
            # Escape quotes, backslashes and newlines
            result = re.sub(r'''['"\\]''', r'\\\g<0>', result)
            result = re.sub('\n', r'\A ', result)
            results[match.group(1)] = result
            text = text[:match.start(0)] + result + text[match.end(0):]
        if DEBUG:
            print(_('Replacing templates'))
            for match in matches:
                print(_('Found: %s (%d-%d)') % (match.group(1), match.start(0), match.end(0)))
                print(_('Replace with: %s') % results[match.group(1)])
        return text

    def prince_convert(self):
        '''
        Call the actual Prince command to convert to PDF
        '''
        from os import makedirs
        from os.path import dirname, join, exists
        from calibre.ptempfile import PersistentTemporaryFile
        from calibre.constants import DEBUG
        from shlex import split as shsplit

        # All files are relative to the OPF location
        opf_dir = dirname(self.opf)
        base_dir = dirname(self.pdf_file)
        base_dir = join(opf_dir, base_dir)
        try:
            makedirs(base_dir)
        except BaseException:
            if not exists(base_dir): raise

        # Create a temporary CSS file with the box contents
        custom_CSS = PersistentTemporaryFile()
        custom_CSS.write(unicode(self.css1.toPlainText()))
        custom_CSS.close()
        # Create a temporary file with the list of input files
        file_list = PersistentTemporaryFile()
        for item in self.oeb.spine:
            file_list.write(item.href + "\n")
        file_list.close()
        # Build the command line
        command = prefs['prince_exe']
        args = ['-v']
        if self.prince_file:
            args.append('-s')
            args.append(self.prince_file)
        args.append('-s')
        args.append(custom_CSS.name)
        args.append('-l')
        args.append(file_list.name)
        args.append('-o')
        args.append(self.pdf_file)
        # Additional command-line arguments
        args.extend(shsplit(self.args.text()))

        # Hide the convert button and show a busy indicator
        self.convert.setEnabled(False)
        self.progress_bar = QProgressBar()
        self.progress_bar.setRange(0,0)
        self.progress_bar.setValue(0)
        self.l.addWidget(self.progress_bar)

        # Run the command and return the path to the PDF file
        if DEBUG: print(_('Converting book...'))
        process = QProcess(self)
        process.setWorkingDirectory(opf_dir)
        process.setProcessChannelMode(QProcess.MergedChannels);
        process.error.connect(self.error)
        process.finished.connect(self.end)
        self.process = process
        if DEBUG:
          from subprocess import list2cmdline
          line = list2cmdline([command] + args)
          print(_('Command line: %s') % line)
        process.start(command, args)

    def error(self, rc):
        '''
        Show a message when there is an error in the command
        :param rc: The error code
        '''
        from calibre.gui2 import error_dialog

        # Remove the progress bar while the error message is displayed
        self.progress_bar.hide()
        self.progress_bar.deleteLater()
        error_dialog(self, _('Process error'), _('<p>Error code: %s'
            '<p>make sure Prince (<a href="http://www.princexml.com">www.princexml.com</a>) is installed '
            'and the correct command-line-interface executable is set in the configuration of this plugin, '
            'which is usually:'
            '<ul><li>In Windows: <code><i>Prince_folder</i>\\Engine\\bin\\prince.exe</code>'
            '    <li>In Linux: <code>prince</code>'
            '</ul>') % rc, show=True)
        self.pdf_file = None
        self.accept()

    def end(self, rc):
        '''
        Close and return the filename when the process ends
        :param rc: The return code (0 if successful)
        '''
        from os.path import join

        self.prince_log = unicode(self.process.readAllStandardOutput().data())
        opf_dir = unicode(self.process.workingDirectory())
        if (rc == 0):
            self.pdf_file = join(opf_dir, self.pdf_file)
        else:
            self.pdf_file = None
        self.accept()
