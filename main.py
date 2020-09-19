from __future__ import (unicode_literals, division, absolute_import, print_function)

__license__   = 'GPL v3'
__copyright__ = '2013, 2014, 2017, Jellby <jellby@yahoo.com>'
__docformat__ = 'restructuredtext en'

try:
    from PyQt5.Qt import Qt, QDialog, QPushButton, QLabel, QDialogButtonBox, QGridLayout, QSizePolicy
except ImportError:
    from PyQt4.Qt import Qt, QDialog, QPushButton, QLabel, QDialogButtonBox, QGridLayout, QSizePolicy
from calibre_plugins.prince_pdf.config import prefs
from calibre_plugins.prince_pdf.convert import ConvertDialog
from calibre_plugins.prince_pdf.log_box import LogDialog

load_translations()

# Main dialog of the plugin
class PrincePDFDialog(QDialog):
    prince_log = ''

    # GUI definition
    def __init__(self, gui, icon, do_user_config):
        QDialog.__init__(self, gui)
        self.icon = icon
        self.gui = gui
        self.do_user_config = do_user_config

        self.setAttribute(Qt.WA_DeleteOnClose)

        self.setWindowTitle(_('Prince PDF'))
        self.setWindowIcon(icon)

        self.l = QGridLayout()
        self.setLayout(self.l)

        self.image = QLabel()
        self.image.setPixmap(icon.pixmap(120, 120))
        self.l.addWidget(self.image, 1, 1, 4, 1, Qt.AlignVCenter)

        self.convert_to_PDF_button = QPushButton(_('Convert to &PDF'), self)
        self.convert_to_PDF_button.clicked.connect(self.convert_to_PDF)
        self.convert_to_PDF_button.setDefault(True)
        self.convert_to_PDF_button.setToolTip(_('<qt>Start the conversion process</qt>'))
        self.l.addWidget(self.convert_to_PDF_button, 1, 2, Qt.AlignVCenter)

        self.view_log = QPushButton(_('&View log'), self)
        self.view_log.clicked.connect(self.show_log)
        self.view_log.setToolTip(_('<qt>Display the log from the last Prince run</qt>'))
        self.l.addWidget(self.view_log, 2, 2, Qt.AlignVCenter)
        self.view_log.hide()

        self.conf_button = QPushButton(_('Con&figure'), self)
        self.conf_button.clicked.connect(self.config)
        self.conf_button.setToolTip(_('<qt>Configure this plugin</qt>'))
        self.l.addWidget(self.conf_button, 4, 2, Qt.AlignVCenter)

        self.info = QLabel()
        self.l.addWidget(self.info, 5, 1, 1, -1)

        self.suggestion = QLabel()
        self.suggestion.setAlignment(Qt.AlignCenter)
        self.l.addWidget(self.suggestion, 6, 1, 1, -1)

        self.l.setColumnStretch(1, 1)
        self.l.setColumnStretch(2, 10)
        self.l.setRowStretch(1, 1)
        self.l.setRowStretch(2, 1)
        self.l.setRowStretch(3, 10)
        self.l.setRowStretch(4, 1)
        self.l.setRowStretch(5, 1)
        self.l.setRowStretch(6, 1)
        self.l.setRowMinimumHeight(1, 1)
        self.l.setRowMinimumHeight(2, 1)
        self.l.setRowMinimumHeight(3, 1)
        self.l.setRowMinimumHeight(4, 1)
        self.l.setRowMinimumHeight(5, 1)
        self.l.setRowMinimumHeight(6, 1)

        self.buttons = QDialogButtonBox(QDialogButtonBox.Close | QDialogButtonBox.Help)
        self.l.addWidget(self.buttons, 7, 1, 1, -1)
        self.buttons.rejected.connect(self.reject)
        self.buttons.helpRequested.connect(self.about)

        self.adjustSize()

        # Update the info now and every time the selection or the data changes
        self.gui.library_view.model().dataChanged.connect(self.update_info)
        self.gui.library_view.selectionModel().selectionChanged.connect(self.update_info)
        self.update_info()

    def update_info(self):
        '''
        Update the info on top of the window
        '''

        self.db = self.gui.current_db
        # Get selected rows
        rows = self.gui.library_view.selectionModel().selectedRows()
        if not rows or len(rows) == 0:
            self.info.setText(_('<b>No books selected</b>'))
            self.info.setAlignment(Qt.AlignCenter)
            self.suggestion.setText(_('Select one single book'))
            self.selected = None
            self.convert_to_PDF_button.setEnabled(False)
        elif len(rows) > 1:
            self.info.setText(_('<b>Many books selected</b>'))
            self.info.setAlignment(Qt.AlignCenter)
            self.suggestion.setText(_('Select one single book'))
            self.selected = None
            self.convert_to_PDF_button.setEnabled(False)
        else:
            # If there is only one selected book, enable conversion
            # and show list of available formats (formats in prefs are bold)
            book_id = self.gui.library_view.model().id(rows[0])
            fmts = self.db.formats(book_id, index_is_id=True)
            if (fmts):
                fmts = fmts.split(',')
            else: 
                fmts = [_('<i>none</i>')]
            available = False
            for i,fmt in enumerate(fmts):
                fmts[i] = fmt.lower()
                if fmts[i] in prefs['formats']:
                    fmts[i] = '<b>%s</b>' % fmts[i]
                    available = True
            self.info.setText(_('Available formats: %s') % ', '.join(fmts))
            self.info.setAlignment(Qt.AlignLeft)
            # Conversion enabled only if some "preferred" format is found
            if (available):
                self.suggestion.setText(_('Ready'))
                self.selected = book_id
                self.convert_to_PDF_button.setEnabled(True)
            else:
                self.suggestion.setText(_('No preferred format available'))
                self.selected = None
                self.convert_to_PDF_button.setEnabled(False)

    def about(self):
        '''
        Display a short help message
        '''
        from os.path import join
        from calibre.ptempfile import TemporaryDirectory
        from calibre.gui2.dialogs.message_box import MessageBox
        from calibre_plugins.prince_pdf.help import help_txt, license_txt
        from calibre_plugins.prince_pdf import PrincePDFPlugin
        from calibre_plugins.prince_pdf import __license__

        author = PrincePDFPlugin.author
        version = "%i.%i.%i" % PrincePDFPlugin.version
        license = __license__
        with TemporaryDirectory('xxx') as tdir:
          for x in ('prince_icon.png', 'small_icon.png'):
            with open(join(tdir, x),'w') as f:
              f.write(get_resources('images/' + x))
          help_box = MessageBox(type_ = MessageBox.INFO, \
                                title = _('About the Prince PDF Plugin'), \
                                msg = help_txt % {'author':author, 'version':version, 'license':license, 'dir':tdir, 'code':'style="font-family:monospace ; font-weight:bold"'}, \
                                det_msg = 'Copyright \u00a9 %s\n%s' % (__copyright__, license_txt), \
                                q_icon = self.icon, \
                                show_copy_button = False)
          #help_box.gridLayout.addWidget(help_box.icon_widget,0,0,Qt.AlignTop)
          help_box.gridLayout.setAlignment(help_box.icon_widget,Qt.AlignTop)
          help_box.exec_()

    def convert_to_PDF(self):
        '''
        Unpack and convert the currently selected book to PDF
        '''
        from calibre.gui2 import error_dialog
        from calibre.constants import DEBUG

        # Get available formats
        book_id = self.selected
        fmts = self.db.formats(book_id, index_is_id=True)
        fmts = fmts.lower().split(',')
        # Process only the first format matching the 'formats' configuration option
        for fmt in prefs['formats']:
            fmt = fmt.lower()
            if (not fmt in fmts): continue
            mi = self.db.get_metadata(book_id, index_is_id=True, get_cover=False)
            pdf_base_file = self.get_filename(book_id, mi)

            # This is the actual code:
            if DEBUG: print('===========')
            # Unpack the book and call the conversion dialog
            (opf, oeb) = self.unpack(book_id, fmt)
            if (opf == None or oeb == None):
               return error_dialog(self.gui, _('Cannot convert to PDF'), _('Format not supported: %s') % fmt, show=True)
            convert_dialog = ConvertDialog(mi, fmt, opf, oeb, self.icon)
            convert_dialog.pdf_file = pdf_base_file
            pdf_file = ''
            if (convert_dialog.exec_()):
                pdf_file = convert_dialog.pdf_file
            self.prince_log = convert_dialog.prince_log
            # After the dialog returns, pdf_file has the output file path,
            # and prince_log has the Prince console output
            if DEBUG: print(_('PDF file: %s') % pdf_file)
            # If there is any log, enable the View log button
            if (self.prince_log):
                self.view_log.show()
                log_msg = _(' Check the log.')
            else:
                self.view_log.hide()
                log_msg = ''
            # If the conversion failed, pdf_file will be None,
            if (pdf_file == None):
                error_dialog(self.gui, _('Could not convert to PDF'), _('The conversion failed.') + log_msg , show=True)
            # If the user cancelled the dialog, pdf_file will be ''
            if (pdf_file):
                # Set the metadata in the PDF and add it or save it
                try:
                    self.set_pdf_metadata(mi, pdf_file)
                except:
                    error_dialog(self.gui, _('Could not convert to PDF'), _("Error reading or writing the PDF file:\n%s" % pdf_file), show=True)
                    return
                if (prefs['add_book']):
                    self.add_pdf(book_id, pdf_file, ('pdf' in fmts))
                else:
                    self.save_pdf(pdf_file, pdf_base_file)
	    if DEBUG: print('===========')
	    return
        # No matching format in the book
        return error_dialog(self.gui, _('Cannot convert to PDF'), _('No supported format available'), show=True)

    def show_log(self):
        '''
        Display the Prince log dialog
        '''
        msg = LogDialog(self.prince_log, self.icon)
        msg.exec_()

    def config(self):
        '''
        Display the configuration dialog
        '''
        self.do_user_config(parent=self)

    def get_filename(self, book_id, mi):
        '''
        Obtain a filename from the save_to_disk template
        :param book_id: The book identifier
        :param mi: The book metadata
        '''
        from os.path import join
        from calibre.library.save_to_disk import get_components, config
        from calibre import sanitize_file_name_unicode
        from calibre.utils.filenames import ascii_filename

        opts = config().parse()
        components = get_components(opts.template, mi, book_id, opts.timefmt,
                                    sanitize_func=(ascii_filename if opts.asciiize else sanitize_file_name_unicode),
                                    to_lowercase=opts.to_lowercase, replace_whitespace=opts.replace_whitespace)
        base_path = join(*components)
        return '%s.pdf' % base_path

    def unpack(self, book_id, fmt):
        '''
        Unpack the book in a temporary directory
        :param book_id: The book identifier
        :param fmt: The format to unpack
        '''
        from calibre.constants import DEBUG
        from calibre.ptempfile import PersistentTemporaryDirectory
        from calibre.ebooks.tweak import get_tools
        from calibre.ebooks.oeb.base import OEBBook
        from calibre.ebooks.oeb.reader import OEBReader
        from calibre.utils.logging import default_log
        from calibre_plugins.prince_pdf.dummy_preprocessor import dummy_preprocessor

        book_file = self.db.format(book_id, fmt, index_is_id=True, as_path=True)
        if DEBUG: print(_('Unpacking book...'))
        tdir = PersistentTemporaryDirectory('_unpack')
        exploder = get_tools(fmt)[0]
        if (exploder == None): return (None, None)
        opf = exploder(book_file, tdir)
        html_preprocessor = dummy_preprocessor()
        css_preprocessor = dummy_preprocessor()
        oeb = OEBBook(default_log, html_preprocessor, css_preprocessor)
        OEBReader()(oeb, opf)
        return (opf, oeb)

    def set_pdf_metadata(self, mi, pdf_file):
        '''
        Set the metadata in the PDF file
        :param mi: The book metadata
        :param pdf_file: The path to the PDF file
        '''
        from calibre.constants import DEBUG
        from calibre.ebooks.metadata.pdf import set_metadata

        if DEBUG: print(_('Setting metadata...'))
        pdf_stream = open(pdf_file, 'r+b')
        set_metadata(pdf_stream, mi)
        pdf_stream.close()

    def add_pdf(self, book_id, pdf_file, exists):
        '''
        Add the PDF file to the book record, asking for replacement
        :param book_id: The book identifier
        :param pdf_file: The path to the PDF file
        :param exists: True if there is already a PDF in the book
        '''
        from calibre.constants import DEBUG
        from calibre.gui2.dialogs.message_box import MessageBox

        add_it = True
        if (exists):
            msg = MessageBox(MessageBox.QUESTION, _('Existing format'),
                             _('The selected book already contains a PDF format. Are you sure you want to replace it?'),
                             _("The temporary file can be found in:\n%s") % pdf_file)
            msg.toggle_det_msg()
            add_it = (msg.exec_())
        if (add_it):
            if DEBUG: print(_('Adding PDF...'))
            self.db.new_api.add_format(book_id, 'pdf', pdf_file)
            self.gui.library_view.model().refresh_ids([book_id])
            self.gui.library_view.refresh_book_details()
            self.gui.tags_view.recount()

    def save_pdf(self, pdf_file, pdf_base_file):
        '''
        Save the PDF file in the final location
        :param pdf_file: The path to the PDF file
        :param pdf_base_file: The desired file name and relative path
        '''
        from os import makedirs
        from os.path import basename, dirname, join, exists
        from shutil import move
        from calibre.constants import DEBUG
        from calibre.gui2 import choose_dir
        from calibre.gui2.dialogs.message_box import MessageBox
        from calibre.gui2 import error_dialog

        path = choose_dir(self.gui, 'save to disk dialog', _('Choose destination directory'))
        if not path:
            return
        save_file = join(path, pdf_base_file)
        base_dir = dirname(save_file)
        try:
            makedirs(base_dir)
        except BaseException:
            if not exists(base_dir): raise
        try:
            move(pdf_file, save_file)
        except:
            error_dialog(self.gui, _('Could not save PDF'), _("Error writing the PDF file:\n%s" % save_file), show=True)
            return
        if DEBUG: print(save_file)
        MessageBox(MessageBox.INFO, _('File saved'), _("PDF file saved in:\n%s") % save_file).exec_()
