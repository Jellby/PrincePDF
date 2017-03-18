from __future__ import (unicode_literals, division, absolute_import, print_function)

__license__   = 'GPL v3'
__copyright__ = '2013, 2014, 2017, Jellby <jellby@yahoo.com>'
__docformat__ = 'restructuredtext en'

from calibre.customize import InterfaceActionBase

load_translations()

class PrincePDFPlugin(InterfaceActionBase):
    name                    = _('Prince PDF')
    description             = _('Converts to PDF using the Prince software (third-party)')
    supported_platforms     = ['linux', 'windows']
    author                  = 'Jellby'
    version                 = (1, 4, 1)
    minimum_calibre_version = (2, 72, 0)
    actual_plugin           = 'calibre_plugins.prince_pdf.ui:InterfacePlugin'

    def is_customizable(self):
        return True

    def config_widget(self):
        from calibre_plugins.prince_pdf.config import ConfigWidget
        return ConfigWidget()

    def save_settings(self, config_widget):
        config_widget.save_settings()
        ac = self.actual_plugin_
        if ac is not None:
            ac.apply_settings()
