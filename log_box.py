__license__   = 'GPL v3'
__copyright__ = '2013, 2014, 2023, Jellby <jellby@yahoo.com>'
__docformat__ = 'restructuredtext en'

try:
    from PyQt5.Qt import QDialog, QDialogButtonBox, QFont, QPlainTextEdit, QVBoxLayout
except ImportError:
    from PyQt4.Qt import QDialog, QDialogButtonBox, QFont, QPlainTextEdit, QVBoxLayout

load_translations()

# This dialog shows the log from the Prince run
class LogDialog(QDialog):

    # GUI definition
    def __init__(self, log, icon):
        '''
        :param log: The text to show in the dialog
        :param icon: The window icon
        '''
        QDialog.__init__(self)

        self.setWindowTitle(_('Prince log'))
        self.setWindowIcon(icon)

        self.l = QVBoxLayout()
        self.setLayout(self.l)

        monofont = QFont('')
        monofont.setStyleHint(QFont.StyleHint.TypeWriter)

        self.box = QPlainTextEdit()
        self.box.setPlainText(log)
        self.box.setStyleSheet('* { font-family: monospace }')
        self.box.setMinimumWidth(500)
        self.box.setLineWrapMode(QPlainTextEdit.LineWrapMode.NoWrap)
        self.box.setReadOnly(True)
        self.box.setToolTip(_('<qt>Console output from the last Prince run</qt>'))
        self.l.addWidget(self.box)
         
        self.buttons = QDialogButtonBox(QDialogButtonBox.Ok)
        self.l.addWidget(self.buttons)
        self.buttons.accepted.connect(self.accept)

        self.adjustSize()
