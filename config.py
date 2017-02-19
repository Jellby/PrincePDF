from __future__ import (unicode_literals, division, absolute_import, print_function)

__license__   = 'GPL v3'
__copyright__ = '2013, 2014, 2017, Jellby <jellby@yahoo.com>'
__docformat__ = 'restructuredtext en'

try:
    from PyQt5.Qt import Qt, QWidget, QHBoxLayout, QVBoxLayout, QLabel, QLineEdit, QPushButton, QFileDialog, QCheckBox, QComboBox, QGroupBox
except ImportError:
    from PyQt4.Qt import Qt, QWidget, QHBoxLayout, QVBoxLayout, QLabel, QLineEdit, QPushButton, QFileDialog, QCheckBox, QComboBox, QGroupBox
from calibre.utils.config import JSONConfig
from calibre_plugins.prince_pdf.texteditwithtooltip import TextEditWithTooltip

load_translations()

prefs = JSONConfig('plugins/prince_pdf')

# Set defaults
prefs.defaults['prince_exe'] = 'prince'
prefs.defaults['formats'] = ['epub','azw3','htmlz']
prefs.defaults['add_book'] = True
prefs.defaults['show_CSS'] = False
prefs.defaults['default_CSS'] = _('default')
prefs.defaults['custom_CSS_list'] = {_('default'):'''/*
@font-face {
  font-family: serif;
  src: local("Droid Serif")
}
*/

@page {
  size: 9cm 12cm;
  margin: 5mm 1mm 1mm 1mm !important;
  @top-left {
    font-size: 50%;
    font-style: italic;
    border-bottom: solid thin black;
    margin-bottom: 1mm;
    content: string(booktitle);
  }
  @top-center {
    font-size: 50%;
    font-style: italic;
    border-bottom: solid thin black;
    margin-bottom: 1mm;
    content: string(chaptertitle);
  }
  @top-right {
    font-size: 50%;
    border-bottom: solid thin black;
    margin-bottom: 1mm;
    content: counter(page) "/" counter(pages);
  }
}

@page:first {
  margin: 1mm 1mm 1mm 1mm;
  @top-left {
    border-width: 0;
    margin: 0;
    content: normal;
  }
  @top-center {
    border-width: 0;
    margin: 0;
    content: normal;
  }
  @top-right {
    border-width: 0;
    margin: 0;
    content: normal;
  }
}

body {
  font-size: 10pt;
  font-family: serif;
  text-align: justify;
  prince-image-resolution: 166dpi;
  hyphens: auto;
  string-set: booktitle "@{@{title}@}@"
  string-set: author "@{@{author}@}@"
}'''}
prefs.defaults['custom_args_list'] = {_('default'):''}

# Configuration widget (included in the configuration dialog)
class ConfigWidget(QWidget):

    # GUI definition
    def __init__(self):
        QWidget.__init__(self)
        self.l = QVBoxLayout()
        self.setLayout(self.l)

        self.ll = QHBoxLayout()
        self.l.addLayout(self.ll)

        self.label_exe = QLabel(_('&Prince executable:'))
        self.ll.addWidget(self.label_exe)

        self.exe = QLineEdit(self)
        self.exe.setText(prefs['prince_exe'])
        self.exe.setToolTip(_('<qt>Executable for the Prince program (command-line interface)</qt>'))
        self.ll.addWidget(self.exe)
        self.label_exe.setBuddy(self.exe)

        self.browse = QPushButton(_('&Browse') + '...', self)
        self.browse.setToolTip(_('<qt>Search the Prince executable in your computer</qt>'))
        self.browse.clicked.connect(self.select_exe)
        self.ll.addWidget(self.browse)

        self.lll = QHBoxLayout()
        self.l.addLayout(self.lll)

        self.label_fmts = QLabel(_('Preferred &formats:'))
        self.lll.addWidget(self.label_fmts)

        self.fmts = QLineEdit(self)
        self.fmts.setText(','.join(prefs['formats']))
        self.fmts.setToolTip(_('<qt>Comma-separated list of preferred formats to use as source, the first that matches will be used</qt>'))
        self.lll.addWidget(self.fmts)
        self.label_fmts.setBuddy(self.fmts)

        self.add_book = QCheckBox(_('&Add PDF to the book record'))
        self.add_book.setToolTip(_('<qt>Add the converted PDF to the selected book record</qt>'))
        self.add_book.setChecked(prefs['add_book'])
        self.l.addWidget(self.add_book)

        self.show_css = QCheckBox(_('&Show CSS in the Convert dialog'))
        self.show_css.setToolTip(_('<qt>Show by default the styles in the Convert dialog</qt>'))
        self.show_css.setChecked(prefs['show_CSS'])
        self.l.addWidget(self.show_css)

        self.css_layout = QVBoxLayout()

        self.llll = QHBoxLayout()
        self.css_layout.addLayout(self.llll)

        self.css_list = QComboBox()
        self.css_list.setToolTip(_('<qt>List of custom styles defined. Select one to edit</qt>'))
        self.css_list.setSizeAdjustPolicy(QComboBox.AdjustToContents)
        self.CSS_list = prefs['custom_CSS_list'].copy()
        self.default_CSS = prefs['default_CSS']
        if 'custom_CSS' in prefs:
            self.CSS_list[_('old')] = prefs['custom_CSS']
            self.default_CSS = _('old')
        if self.default_CSS not in self.CSS_list:
            self.default_CSS = sorted(self.CSS_list, key=lambda x: x.lower())[0]
        for key in sorted(self.CSS_list, key=lambda x: x.lower()):
            self.css_list.addItem(key, key)
        self.css_list.setCurrentIndex(self.css_list.findText(self.default_CSS))
        self.css_list.currentIndexChanged.connect(self.set_css)
        self.llll.addWidget(self.css_list)

        self.css_rename = QPushButton(_('Re&name'))
        self.css_rename.setToolTip(_('<qt>Rename the current style to the name on the right</qt>'))
        self.css_rename.clicked.connect(self.rename_css)
        self.css_rename.setEnabled(False)
        self.llll.addWidget(self.css_rename)

        self.css_name = QLineEdit(self)
        self.css_name.setToolTip(_('<qt>Name for the new or renamed style</qt>'))
        self.css_name.setText(self.css_list.currentText())
        self.css_name.textChanged.connect(self.check_names)
        self.llll.addWidget(self.css_name)

        self.css_add = QPushButton(_('A&dd'))
        self.css_add.setToolTip(_('<qt>Add a new empty style with the name on the left</qt>'))
        self.css_add.clicked.connect(self.add_css)
        self.css_add.setEnabled(False)
        self.llll.addWidget(self.css_add)

        self.css_remove = QPushButton(_('Re&move'))
        self.css_remove.setToolTip(_('<qt>Remove the current style</qt>'))
        self.css_remove.clicked.connect(self.remove_css)
        self.llll.addWidget(self.css_remove)

        self.llll_ = QHBoxLayout()
        self.css_layout.addLayout(self.llll_)

        self.label_args = QLabel(_('Addi&tional command-line arguments:'))
        self.llll_.addWidget(self.label_args)

        self.args = QLineEdit(self)
        # Make sure custom_CSS_list and custom_args_list have the same keys
        if 'custom_args_list' in prefs:
          self.args_list = prefs['custom_args_list'].copy()
        else:
          self.args_list = {}
        for key in self.CSS_list:
          if not key in self.args_list:
            self.args_list[key] = ''
        for key in self.args_list:
          if not key in self.CSS_list:
            del self.args_list[key]
        self.args.setText(self.args_list[unicode(self.css_list.currentText())])
        self.args.setToolTip(_('<qt>Additional command-line arguments used in conversions with this style</qt>'))
        self.llll_.addWidget(self.args)
        self.label_args.setBuddy(self.args)

        self.css = TextEditWithTooltip()
        self.css.setLineWrapMode(TextEditWithTooltip.NoWrap)
        self.css.load_text(self.CSS_list[unicode(self.css_list.currentText())],'css')
        self.css.setToolTip(_('<qt>Custom stylesheet that will be applied, if selected, to all Prince PDF conversions</qt>'))
        self.css_layout.addWidget(self.css)

        self.css_templates = QLabel(_('Book metadata can be used in the stylesheet. Anything between %(s1)s and %(s2)s will be processed as a calibre template. For instance, %(s3)s in the stylesheet will be replaced with the book title in the conversion.') % \
          {'s1':'<span style="font-family:monospace ; font-weight:bold">@{@</span>', \
           's2':'<span style="font-family:monospace ; font-weight:bold">@}@</span>', \
           's3':'<span style="font-family:monospace ; font-weight:bold">@{@{title}@}@</span>'})
        self.css_templates.setWordWrap(True)
        self.css_layout.addWidget(self.css_templates)

        self.css_box = QGroupBox(_('&Custom CSS:'))
        self.css_box.setLayout(self.css_layout)
        self.l.addWidget(self.css_box)

        self.lllll = QHBoxLayout()
        self.lllll.setAlignment(Qt.AlignLeft)
        self.l.addLayout(self.lllll)

        self.defaults = QPushButton(_('&Restore defaults'))
        self.defaults.setToolTip(_('<qt>Restore the default settings</qt>'))
        self.defaults.clicked.connect(self.restore_defaults)
        self.lllll.addWidget(self.defaults, alignment=Qt.AlignLeft)

        self.warning = QLabel(_('<b>Warning</b>: Deletes modified styles'))
        self.lllll.addWidget(self.warning)

        self.adjustSize()

    def select_exe(self):
        '''
        Create a dialog to select the Prince executable
        '''
        dialog = QFileDialog()
        dialog.setFileMode(QFileDialog.ExistingFile)
        filename = dialog.getOpenFileName(self, _('Select Prince executable'), '', '')
        if filename:
            try:
                self.exe.setText(filename)
            except(TypeError):
                self.exe.setText(filename[0])

    def restore_defaults(self):
        '''
        Restore the default settings
        '''
        self.exe.setText(prefs.defaults['prince_exe'])
        self.fmts.setText(','.join(prefs.defaults['formats']).lower())
        self.show_css.setChecked(prefs.defaults['show_CSS'])
        self.add_book.setChecked(prefs.defaults['add_book'])
        self.css_list.currentIndexChanged.disconnect()
        self.css_list.clear()
        self.CSS_list = prefs.defaults['custom_CSS_list'].copy()
        self.args_list = prefs.defaults['custom_args_list'].copy()
        self.default_CSS = prefs.defaults['default_CSS']
        for key in sorted(self.CSS_list, key=lambda x: x.lower()):
            self.css_list.addItem(key, key)
        self.css_list.setCurrentIndex(self.css_list.findText(self.default_CSS))
        self.css_name.setText(self.default_CSS)
        self.css.load_text(self.CSS_list[unicode(self.css_list.currentText())],'css')
        self.args.setText(self.args_list[unicode(self.css_list.currentText())])
        self.css_list.currentIndexChanged.connect(self.set_css)

    def save_settings(self):
        '''
        Save the current settings
        '''
        prefs['prince_exe'] = unicode(self.exe.text())
        prefs['formats'] = unicode(self.fmts.text().lower()).split(',')
        prefs['show_CSS'] = self.show_css.isChecked()
        prefs['add_book'] = self.add_book.isChecked()
        self.set_css()
        prefs['default_CSS'] = self.default_CSS
        prefs['custom_CSS_list'] = self.CSS_list.copy()
        prefs['custom_args_list'] = self.args_list.copy()
        if 'custom_CSS' in prefs:
            del prefs['custom_CSS']

    def set_css(self):
        '''
        Fill the CSS text box with the selected stylesheet, and similarly for command-line arguments
        '''
        self.CSS_list[self.default_CSS] = unicode(self.css.toPlainText())
        self.args_list[self.default_CSS] = unicode(self.args.text())
        self.default_CSS = unicode(self.css_list.currentText())
        self.css.load_text(self.CSS_list[self.default_CSS],'css')
        self.args.setText(self.args_list[self.default_CSS])
        self.css_name.setText(self.css_list.currentText())

    def add_css(self):
        '''
        Add a new style
        '''
        from calibre.gui2 import error_dialog

        name = unicode(self.css_name.text())
        if name in self.CSS_list:
            error_dialog(self, _('Cannot add style'), _('A style with the name "%s" is already defined, use a different name.') % name, show=True)
        else:
            self.CSS_list[name] = ''
            self.args_list[name] = ''
            self.css_list.addItem(name, name)
            self.css_list.setCurrentIndex(self.css_list.findText(name))
            self.css_add.setEnabled(False)
            self.css_rename.setEnabled(False)

    def remove_css(self):
        '''
        Remove an existing style
        '''
        from calibre.gui2 import error_dialog

        if (self.css_list.count() > 1):
            self.css_list.currentIndexChanged.disconnect()
            self.css_list.removeItem(self.css_list.currentIndex())
            del self.CSS_list[self.default_CSS]
            del self.args_list[self.default_CSS]
            self.default_CSS = unicode(self.css_list.currentText())
            self.css.load_text(self.CSS_list[self.default_CSS],'css')
            self.args.setText(self.args_list[self.default_CSS])
            self.css_list.currentIndexChanged.connect(self.set_css)
            self.css_name.setText(self.css_list.currentText())
        else:
            error_dialog(self, _('Cannot delete the last style'), _('The last style cannot be removed. You can rename it and/or remove its contents.'), show=True)

    def rename_css(self):
        '''
        Rename a style
        '''
        from calibre.gui2 import error_dialog

        name = unicode(self.css_name.text())
        if name in self.CSS_list:
            error_dialog(self, _('Cannot rename style'), _('A style with the name "%s" is already defined, use a different name.') % name, show=True)
        else:
            self.CSS_list[name] = self.CSS_list.pop(self.default_CSS)
            self.args_list[name] = self.args_list.pop(self.default_CSS)
            self.css_list.setItemText(self.css_list.currentIndex(),name)
            self.default_CSS = name

    def check_names(self, text):
        name = unicode(text)
        if name in self.CSS_list:
            self.css_add.setEnabled(False)
            self.css_rename.setEnabled(False)
        else:
            self.css_add.setEnabled(True)
            self.css_rename.setEnabled(True)
