��    _                   m  	  e  w     �     �  	   	               (     <     N     b     t     �  	   �     �     �     �     �  ,        ;  Q  G  =   �  :   �  @     h   S     �  0   �  =     [   J  1   �  C   �  ?     /   \  &   �  ?   �  %   �  '     6   A  h   x  >   �  E      %   f  J   �  +   �  I        M     R     n     |  �   �     j     v     �  !   �     �     �  
   �                    9  7   L     �     �  )   �     �     �  
   	          -     ?     ]     {     �     �  
   �  
   �     �     �     �     �     �                .     G     ^     r  T   �  U   �  &   4     [     m     u  �  y  t  u   �  �'     �*      �*  	   �*     +     +  "   ,+     O+     j+     �+  (   �+     �+     �+  "   �+      ,     6,     M,  1   ^,     �,  _  �,  X   �-  D   U.  I   �.  �   �.  $   m/  7   �/  Y   �/  l   $0  D   �0  F   �0  g   1  9   �1  -   �1  U   �1  4   C2  0   x2  ?   �2  �   �2  K   q3  \   �3  *   4  g   E4  9   �4  ^   �4     F5     S5     o5     �5  �   �5     �6  ,   �6  $   �6  4   �6  )   .7     X7     s7     �7     �7      �7     �7  1   �7      8  #   28  2   V8  '   �8     �8     �8     �8     �8  "   	9  %   ,9     R9     o9     �9  
   �9     �9     �9  
   �9     �9     �9     �9     �9      :     &:     F:     d:  %   �:  p   �:  d   ;  &   �;     �;     �;     �;           )      "   5   /   Z       H   _   P       R   4   T       Y   A          :         O   M         N                   8   7   #   0           
   .           ;   =   !   1   -               \   ^      3         ?   9   J   @              D                      ,       F   [      K      >   G   6         Q      ]               L      B      I          C       W   S      X         &   	       U         2   +      *       (               <      $   '       %   V   E    
<h3 style="text-align:center">The Prince PDF Plugin (v. %(version)s)</h3>
<p style="text-align:center"><i>Created by %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">This plugin will convert a book to PDF using Prince.</p>
<p style="margin:0">Prince is an external program, you can download it from <a href="http://www.princexml.com/">www.princexml.com</a>.</p>

<p style="margin:1em 0 0 0">Only a few formats can be converted with this plugin, mainly EPUB, AZW3 and HTMLZ. If you want to convert a book in another format, convert it first to one of these formats.</p>

<p style="margin:1em 0 0 0">Before the actual conversion, you will be able to choose whether or not to add the resulting PDF to the book record. If the PDF is not added, it will be saved in disk, using the save-to-disk template.</p>

<p style="margin:1em 0 0 0">The conversion will not use any other of the calibre conversion settings, but instead it will use a custom CSS file, where Prince-specific properties can be used. This file can be modified in the plugin configuration. In addition, the plugin will recognize and use any extra CSS file specified in the book itself, as a <span %(code)s>&lt;meta&gt;</span> tag with <span %(code)s>name="prince-style"</span> and <span %(code)s>content="<i>idref</i>"</span>, where <span %(code)s><i>idref</i></span> is the <span %(code)s>id</span> of the extra CSS file in the manifest.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince is copyrighted &copy; YesLogic Pty. Ltd.</i></p>
<p style="margin:0"><img src="%(dir)s/small_icon.png"/> This plugin is released under %(license)s.</p>
 
This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
  Check the log. &Add PDF to the book record &Book CSS &Browse &Custom CSS: &Custom stylesheet: &Hide stylesheets &Prince executable: &Restore defaults &Show CSS in the Convert dialog &Show stylesheets &View log <b>Many books selected</b> <b>No books selected</b> <b>Source format:</b> %s <b>Title:</b> %s <b>Warning</b>: Deletes modified stylesheets <i>none</i> <p>Error code: %s<p>make sure Prince (<a href="http://www.princexml.com">www.princexml.com</a>) is installed and the correct command-line-interface executable is set in the configuration of this plugin, which is usually:<ul><li>In Windows: <code><i>Prince_folder</i>\Engine\bin\prince.exe</code>    <li>In Linux: <code>prince</code></ul> <qt>Add a new empty stylesheet with the name on the left</qt> <qt>Add the converted PDF to the selected book record</qt> <qt>Book-specific CSS stylesheet included in the ebook file</qt> <qt>Comma-separated list of preferred formats to use as source, the first that matches will be used</qt> <qt>Configure this plugin</qt> <qt>Console output from the last Prince run</qt> <qt>Custom CSS stylesheet to be used for this conversion</qt> <qt>Custom stylesheet that will be applied, if selected, to all Prince PDF conversions</qt> <qt>Display the log from the last Prince run</qt> <qt>Executable for the Prince program (command-line interface)</qt> <qt>List of custom stylesheets defined. Select one to edit</qt> <qt>Name for the new or renamed stylesheet</qt> <qt>Remove the current stylesheet</qt> <qt>Rename the current stylesheet to the name on the right</qt> <qt>Restore the default settings</qt> <qt>Run the conversion with Prince</qt> <qt>Search the Prince executable in your computer</qt> <qt>Select one stylesheet to use. Additional stylesheets can be created in the plugin configuration</qt> <qt>Show by default the stylesheets in the Convert dialog</qt> <qt>Show/hide the additional stylesheets used for the conversion</qt> <qt>Start the conversion process</qt> <qt>This stylesheet can be modified<br/>The default can be configured</qt> <qt>This stylesheet cannot be modified</qt> A stylesheet with the name "%s" is already defined, use a different name. A&dd About the Prince PDF Plugin Adding PDF... Available formats: %s Book metadata can be used in the stylesheet. Anything between %(s1)s and %(s2)s will be processed as a calibre template. For instance, %(s3)s in the stylesheet will be replaced with the book title in the conversion. C&ustom CSS Cannot add stylesheet Cannot convert to PDF Cannot delete the last stylesheet Cannot rename stylesheet Choose destination directory Con&figure Con&vert Convert to &PDF Convert to PDF with Prince Converting book... Converts to PDF using the Prince software (third-party) Could not convert to PDF Could not save PDF Error reading or writing the PDF file:
%s Error writing the PDF file:
%s Existing format File saved Format not supported: %s Found: %s (%d-%d) No preferred format available No supported format available PDF file saved in:
%s Parsing book... Preferred &formats: Prince PDF Prince log Process error Re&move Re&name Ready Replace with: %s Replacing templates Run the Prince PDF Plugin Select Prince executable Select one single book Setting metadata... The conversion failed. The last stylesheet cannot be removed. You can rename it and/or remove its contents. The selected book already contains a PDF format. Are you sure you want to replace it? The temporary file can be found in:
%s Unpacking book... default old Project-Id-Version: calibre-plugins
POT-Creation-Date: 2014-09-11 19:02+0100
PO-Revision-Date: 2015-10-07 08:37+0000
Last-Translator: valsu <valsu@hylia.de>
Language-Team: German (http://www.transifex.com/calibre/calibre-plugins/language/de/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: de
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">Die Prince PDF Erweiterung(v. %(version)s)</h3>

<p style="text-align:center"><i>Erstellt von %(author)s</i></p>


<hr/>


<p style="margin:1em 0 0 0">Diese Erweiterung wird ein Buch mit Prince in eine PDF-Datei konvertieren.</p>

<p style="margin:0">Prince ist ein externes Programm, das von <a href="http://www.princexml.com/">www.princexml.com</a> heruntergeladen werden kann.</p>



<p style="margin:1em 0 0 0">Nur wenige Formate können mit dieser Erweiterung konvertiert werden, hauptsächlich EPUB, AZW3 und HTMLZ. Wenn Sie ein Buch in ein anderes Format konvertieren möchten, dann konvertieren Sie es zuerst in eines der genannten Formate.</p>


<p style="margin:1em 0 0 0">Vor der eigentlichen Konvertierung haben Sie die Möglichkeit einzustellen, ob die erstellte PDF zur Bückerliste hinzugefügt werden soll. Wird die PDF nicht hinzugefügt, wird sie unter Verwendung der Auf-Datenträger-speichern-Formatvorlage auf dem Datenträger gespeichert.</p>


<p style="margin:1em 0 0 0">Die Konvertierung wird keine Caliblres Konvertierungseinstellungen verwenden, sondern eine benutzerdefinierte CSS-Datei, in der Prince-spezifische Eigenschaften verwendet werden können. Zudem wird die Erweiterung jegliche zusätzliche CSS-Dateien erkennen und verwenden, die im Buch selbst angegeben werden. Die Angabe erfolgt als ein <span %(code)s>&lt;meta&gt;</span>-Tag mit <span %(code)s>name="prince-style"</span> und <span %(code)s>content="<i>idref</i>"</span>, wobei im Manifest <span %(code)s><i>idref</i></span> die <span %(code)s>id</span> der zusätzlichen CSS-Datei ist.</p>


<hr/>


<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince ist durch &copy; YesLogic Pty. Ltd. urheberrechtlich geschützt</i></p>

<p style="margin:0"><img src="%(dir)s/small_icon.png"/> Diese Erweiterung ist unter den Bedingungen der %(license)s freigegeben.</p>

 
Dieses Programm ist freie Software. Sie können es unter den Bedingungen der GNU General Public License, wie von der Free Software Foundation veröffentlicht, weitergeben und/oder modifizieren, entweder gemäß Version 3 der Lizenz oder (nach Ihrer Option) jeder späteren Version.

Die Veröffentlichung dieses Programms erfolgt in der Hoffnung, daß es Ihnen von Nutzen sein wird, aber OHNE IRGENDEINE GARANTIE, sogar ohne die implizite Garantie der MARKTREIFE oder der VERWENDBARKEIT FÜR EINEN BESTIMMTEN ZWECK. Details finden Sie in der GNU General Public License.

Sie sollten ein Exemplar der GNU General Public License zusammen mit diesem Programm erhalten haben. Falls nicht, siehe <http://www.gnu.org/licenses/>.
 Prüfen Sie das Protokoll. PDF zum Bucheintr&ag hinzufügen &Buch CSS Du&rchsuchen Benutzerdefiniertes &CSS: &Benutzerdefinierte Formatvorlage: &Formatvorlagen ausblenden &Prince-Programmdatei: Standards &wiederherstellen Die C&SS im Konvertieren-Dialog anzeigen Formatvorlagen an&zeigen &Protokoll ansehen <b>Mehrere Bücher ausgewählt</b> <b>Keine Bücher ausgewählt</b> <b>Quellformat:</b> %s <b>Titel:</b> %s <b>Warnung</b>: Löscht geänderte Formatvorlagen <i>kein</i> <p>Fehler-Code: %s<p>Stellen Sie sicher, dass Prince  (<a href="http://www.princexml.com">www.princexml.com</a>) installiert und die richtige Kommandozeilen-Datei in der Erweiterungskonfiguration eingestellt ist, normalerweise:<ul><li>Unter Windows: <code><i>Prince_Verzeichnis</i>\Engine\bin\prince.exe</code><li>Unter Linux: <code>prince</code></ul> <qt>Eine neue leere Formatvorlage mit diesem Namen auf der linken Seite hinzufügen</qt> <qt>Konvertierte PDF zur ausgewählten Bücherliste hinzufügen</qt> <qt>Buchspezifische CSS-Formatvorlage in der E-Book-Datei eingefügt</qt> <qt>Durch Kommata getrennte Auflistung von bevorzugten Formaten, die als Quelle genutzt werden. Es wird der erste Treffer verwendet</qt> <qt>Dieses Plugin konfigurieren</qt> <qt>Konsolenausgabe der letzten Prince-Ausführung</qt> <qt>Die für diese Konvertierung zu verwendende benutzerdefinierte CSS-Formatvorlage</qt> <qt>Anzuwendende benutzerdefinierte Formatvorlage für alle Konvertierungen mit Prince PDF, wenn ausgewählt <qt>Die Protokollierung der letzten Prince-Ausführung anzeigen</qt> <qt>Programmdatei des Prince-Programms (Befehlszeilenoberfläche)</qt> <qt>Liste mit festgelegten benutzerdefinierten Formatvorlagen. Wählen Sie eine zum Bearbeiten aus</qt> <qt>Name für die neue oder umbenannte Formatvorlage</qt> <qt>Die aktuelle Formatvorlage entfernen</qt> <qt>Die aktuelle Formatvorlage nach dem Namen auf der rechten Seite neu benennen</qt> <qt>Wiederherstellung der Standardeinstellungen</qt> <qt>Die Konvertierung mit Prince ausführen</qt> <qt>Suchen Sie die Prince-Programmdatei auf Ihrem Computer</qt> <qt>Zu verwendende Formatvorlagen auswählen. Zusätzliche Formatvorlagen können in der Erweiterungskonfiguration erstellt werden</qt> <qt>Standardmäßig die Formatvorlagen im Konvertieren-Dialog anzeigen</qt> <qt>Die zusätzlich verwendeten Formatvorlagen dieser Konvertierung anzeigen/ausblenden</qt> <qt>Den Konvertierungsprozess starten</qt> <qt>Diese Formatvorlage kann geändert werden<br/>Die Standardeinstellung kann konfiguriert werden</qt> <qt>Diese Formatvorlage kann nicht verändert werden</qt> Eine Formatvorlage mit dem Namen "%s" ist bereits bestimmt, verwenden Sie einen anderen Namen. Hinzufü&gen Über das Prince PDF Plugin PDF wird hinzugefügt Verfügbare Formate: %s Metadaten des Buches können in der Formatvorlage verwendet werden. Alles zwischen %(s1)s und %(s2)s werden als Calibre-Vorlagen verarbeitet. Beispielsweise wird %(s3)s in der Formatvorlage bei der Konvertierung durch den Buchtitel ersetzt. Ben&utzerdefiniertes CSS Formatvorlage kann nicht hinzugefügt werden Kann nicht in PDF konvertiert werden Die letzte Formatvorlage kann nicht gelöscht werden Formatvorlage kann nicht umbenannt werden Zielverzeichnis auswählen Kon&figurieren Kon&vertieren In &PDF konvertieren Mit Prince nach PDF konvertieren Buch wird konvertiert... Mit Prince nach PDF konvertieren (Dritt-Software) Konnte nicht in PDF konvertieren PDF konnte nicht gespeichert werden Fehler beim Lesen oder Schreiben der PDF-Datei:
%s Fehler beim Schreiben der PDF-Datei:
%s Vorhandenes Format Datei gespeichert Format nicht unterstützt: %s Gefunden: %s (%d-%d) Kein bevorzugtes Format verfügbar Kein unterstütztes Format verfügbar PDF-Datei gespeichert in:
%s Buch wird geparst... Bevorzugte &Formate: Prince PDF Prince-Protokoll Prozessfehler Entfer&nen Umbe&nennen Bereit Ersetzen mit: %s Ersetzungsvorlagen Das Prince PDF Plugin ausführen Prince-Programmdatei auswählen Wählen Sie ein einziges Buch Metadaten werden eingestellt... Die Konvertierung ist fehlgeschlagen. Die letzte Formatvorlage kann nicht entfernt werden. Sie können sie umbenennen und/oder ihren Inhalt entfernen. Das ausgewählte Buch enthält bereits ein PDF-Format. Sind Sie sicher, dass Sie es ersetzen wollen? Die temporäre Datei finden Sie in:
%s Buch wird entpackt... Standard alt 