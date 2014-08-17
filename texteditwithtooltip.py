try:
    from PyQt5.Qt import QPlainTextEdit
except ImportError:
    from PyQt4.Qt import QPlainTextEdit
from calibre.gui2.tweak_book.editor.text import TextEdit

class TextEditWithTooltip(TextEdit):
    '''
    A copy of the TextEdit widget, without tooltip override
    '''
    def event(self, ev):
        return QPlainTextEdit.event(self, ev)
