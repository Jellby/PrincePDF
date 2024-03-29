��    e      D  �   l      �  m  �  e  �     e     u  	   �     �     �     �     �     �     �     �       	   "     ,     G     `     y  '   �     �  Q  �  8     :   I  N   �  @   �  h        }  0   �  =   �  [     1   g  C   �  :   �  *     !   C  :   e  %   �  '   �  6   �  ^   %  9   �  @   �  E   �  %   E  J   k  +   �  D   �     '  #   ,     P  #   l     �     �  �   �     �     �     �     �     �     �       
        )     2     B     ]  7   p     �     �  )   �     �       
   -     8     Q     c     �     �     �     �     �  
   �  
   �     �     
                     1     E     _     x     �     �  O   �  U   
  &   `     �     �     �  �  �  t  m!  �  �(     �+      �+  	   �+     �+     
,     %,     @,     R,     i,  (   �,     �,     �,  "   �,      �,     -     ,-  )   =-     g-  _  s-  U   �.  D   )/  f   n/  I   �/  �   0  $   �0  7   �0  Y   1  l   _1  D   �1  F   2  S   X2  2   �2  %   �2  O   3  4   U3  0   �3  ?   �3  l   �3  I   h4  U   �4  Q   5  *   Z5  g   �5  9   �5  U   '6     }6  %   �6     �6  %   �6     �6     7  �    7     8  #   *8  $   N8  +   s8      �8     �8     �8     �8     �8     	9      9     ?9  1   X9      �9  #   �9  2   �9  '   :     *:     =:     O:     m:  "   �:  %   �:     �:     �:     �:     ;  
    ;     +;     <;  
   J;     U;     a;     h;     y;      �;     �;     �;     �;  %   <  h   1<  d   �<  &   �<     &=     <=     E=     F             8          S   9      3             ^   M   c   
   b   U   _              N          I           (   Q   [   C   =           %       ;   '                         T       .          <   K   D              -              >   B                  2   !   $   *   6   Z   H   Y       A   #   X                 ]   0   "   G       \      V   O   ,   L         /           7      5      ?   1          e   +      a   W   &   R           P           J            	   E   d       )   `   4             :   @    
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
  Check the log. &Add PDF to the book record &Book CSS &Browse &Custom style: &Custom styles: &Hide styles &Prince executable: &Restore defaults &Show CSS in the Convert dialog &Show styles &View log <b>Many books selected</b> <b>No books selected</b> <b>Source format:</b> %s <b>Title:</b> %s <b>Warning</b>: Deletes modified styles <i>none</i> <p>Error code: %s<p>make sure Prince (<a href="http://www.princexml.com">www.princexml.com</a>) is installed and the correct command-line-interface executable is set in the configuration of this plugin, which is usually:<ul><li>In Windows: <code><i>Prince_folder</i>\Engine\bin\prince.exe</code>    <li>In Linux: <code>prince</code></ul> <qt>Add a new empty style with the name on the left</qt> <qt>Add the converted PDF to the selected book record</qt> <qt>Additional command-line arguments used in conversions with this style</qt> <qt>Book-specific CSS stylesheet included in the ebook file</qt> <qt>Comma-separated list of preferred formats to use as source, the first that matches will be used</qt> <qt>Configure this plugin</qt> <qt>Console output from the last Prince run</qt> <qt>Custom CSS stylesheet to be used for this conversion</qt> <qt>Custom stylesheet that will be applied, if selected, to all Prince PDF conversions</qt> <qt>Display the log from the last Prince run</qt> <qt>Executable for the Prince program (command-line interface)</qt> <qt>List of custom styles defined. Select one to edit</qt> <qt>Name for the new or renamed style</qt> <qt>Remove the current style</qt> <qt>Rename the current style to the name on the right</qt> <qt>Restore the default settings</qt> <qt>Run the conversion with Prince</qt> <qt>Search the Prince executable in your computer</qt> <qt>Select one style to use. Additional styles can be created in the plugin configuration</qt> <qt>Show by default the styles in the Convert dialog</qt> <qt>Show/hide the additional styles used for the conversion</qt> <qt>Specify additional command-line arguments for the conversion</qt> <qt>Start the conversion process</qt> <qt>This stylesheet can be modified<br/>The default can be configured</qt> <qt>This stylesheet cannot be modified</qt> A style with the name "%s" is already defined, use a different name. A&dd A&dditional command-line arguments: About the Prince PDF Plugin Addi&tional command-line arguments: Adding PDF... Available formats: %s Book metadata can be used in the stylesheet. Anything between %(s1)s and %(s2)s will be processed as a calibre template. For instance, %(s3)s in the stylesheet will be replaced with the book title in the conversion. C&ustom CSS Cannot add style Cannot convert to PDF Cannot delete the last style Cannot rename style Choose destination directory Command line: %s Con&figure Con&vert Convert to &PDF Convert to PDF with Prince Converting book... Converts to PDF using the Prince software (third-party) Could not convert to PDF Could not save PDF Error reading or writing the PDF file:
%s Error writing the PDF file:
%s Existing format File saved Format not supported: %s Found: %s (%d-%d) No preferred format available No supported format available PDF file saved in:
%s PDF file: %s Parsing book... Preferred &formats: Prince PDF Prince log Process error Re&move Re&name Ready Replace with: %s Replacing templates Run the Prince PDF Plugin Select Prince executable Select one single book Setting metadata... The conversion failed. The last style cannot be removed. You can rename it and/or remove its contents. The selected book already contains a PDF format. Are you sure you want to replace it? The temporary file can be found in:
%s Unpacking book... default old Project-Id-Version: calibre-plugins
PO-Revision-Date: 2014-08-17 10:09+0000
Last-Translator: pitfd, 2018
Language-Team: German (http://app.transifex.com/calibre/calibre-plugins/language/de/)
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
 Prüfen Sie das Protokoll. PDF zum Bucheintr&ag hinzufügen &Buch CSS Du&rchsuchen &Benutzerdefinierter Stil: &Benutzerdefinierte Stile: &Stile ausblenden &Prince-Programmdatei: Standards &wiederherstellen Die C&SS im Konvertieren-Dialog anzeigen &Stile anzeigen &Protokoll ansehen <b>Mehrere Bücher ausgewählt</b> <b>Keine Bücher ausgewählt</b> <b>Quellformat:</b> %s <b>Titel:</b> %s <b>Warnung:</b>: Löscht geänderte Stile <i>kein</i> <p>Fehler-Code: %s<p>Stellen Sie sicher, dass Prince  (<a href="http://www.princexml.com">www.princexml.com</a>) installiert und die richtige Kommandozeilen-Datei in der Erweiterungskonfiguration eingestellt ist, normalerweise:<ul><li>Unter Windows: <code><i>Prince_Verzeichnis</i>\Engine\bin\prince.exe</code><li>Unter Linux: <code>prince</code></ul> <qt>Fügen Sie einen neuen leeren Stil mit dem Namen auf der linken Seite hinzu.</qt> <qt>Konvertierte PDF zur ausgewählten Bücherliste hinzufügen</qt> <qt>Zusätzliche Befehlszeilenargumente, die bei Konvertierungen mit diesem Stil verwendet werden</qt> <qt>Buchspezifische CSS-Formatvorlage in der E-Book-Datei eingefügt</qt> <qt>Durch Kommata getrennte Auflistung von bevorzugten Formaten, die als Quelle genutzt werden. Es wird der erste Treffer verwendet</qt> <qt>Dieses Plugin konfigurieren</qt> <qt>Konsolenausgabe der letzten Prince-Ausführung</qt> <qt>Die für diese Konvertierung zu verwendende benutzerdefinierte CSS-Formatvorlage</qt> <qt>Anzuwendende benutzerdefinierte Formatvorlage für alle Konvertierungen mit Prince PDF, wenn ausgewählt <qt>Die Protokollierung der letzten Prince-Ausführung anzeigen</qt> <qt>Programmdatei des Prince-Programms (Befehlszeilenoberfläche)</qt> <qt>Liste der benutzerdefinierten Stile. Wählen Sie einen zum Bearbeiten aus,</qt> <qt>Name für den neuen oder umbenannten Stil</qt> <qt>Den aktuellen Stil entfernen</qt> <qt>Benennen Sie den aktuellen Stil in den Namen auf der rechten Seite um.</qt> <qt>Wiederherstellung der Standardeinstellungen</qt> <qt>Die Konvertierung mit Prince ausführen</qt> <qt>Suchen Sie die Prince-Programmdatei auf Ihrem Computer</qt> <qt>Wählen Sie einen Stil aus. Zusätzliche Stile können in der Plugin-Konfiguration erstellt werden.</qt> <qt>Standardmäßige Anzeige der Stile im Dialogfeld "Konvertieren" </qt> <qt>Ein-/Ausblenden der für die Konvertierung verwendeten zusätzlichen Formate</qt> <qt>Geben Sie zusätzliche Befehlszeilenargumente für die Konvertierung an.</qt> <qt>Den Konvertierungsprozess starten</qt> <qt>Diese Formatvorlage kann geändert werden<br/>Die Standardeinstellung kann konfiguriert werden</qt> <qt>Diese Formatvorlage kann nicht verändert werden</qt> Ein Stil mit dem Namen "%s" ist bereits definiert, verwenden Sie einen anderen Namen. Hinzufü&gen &Zusätzliche Befehlszeilenargumente: Über das Prince PDF Plugin &Zusätzliche Befehlszeilenargumente: PDF wird hinzugefügt Verfügbare Formate: %s Metadaten des Buches können in der Formatvorlage verwendet werden. Alles zwischen %(s1)s und %(s2)s werden als Calibre-Vorlagen verarbeitet. Beispielsweise wird %(s3)s in der Formatvorlage bei der Konvertierung durch den Buchtitel ersetzt. Ben&utzerdefiniertes CSS Stil kann nicht hinzugefügt werden Kann nicht in PDF konvertiert werden Der letzte Stil kann nicht gelöscht werden Stil kann nicht umbenannt werden Zielverzeichnis auswählen Befehlszeile: %s Kon&figurieren Kon&vertieren In &PDF konvertieren Mit Prince nach PDF konvertieren Buch wird konvertiert... Mit Prince nach PDF konvertieren (Dritt-Software) Konnte nicht in PDF konvertieren PDF konnte nicht gespeichert werden Fehler beim Lesen oder Schreiben der PDF-Datei:
%s Fehler beim Schreiben der PDF-Datei:
%s Vorhandenes Format Datei gespeichert Format nicht unterstützt: %s Gefunden: %s (%d-%d) Kein bevorzugtes Format verfügbar Kein unterstütztes Format verfügbar PDF-Datei gespeichert in:
%s PDF-Datei: %s Buch wird geparst... Bevorzugte &Formate: Prince PDF Prince-Protokoll Prozessfehler Entfer&nen Umbe&nennen Bereit Ersetzen mit: %s Ersetzungsvorlagen Das Prince PDF Plugin ausführen Prince-Programmdatei auswählen Wählen Sie ein einziges Buch Metadaten werden eingestellt... Die Konvertierung ist fehlgeschlagen. Der letzte Stil kann nicht entfernt werden. Sie können ihn umbenennen und/oder seinen Inhalt entfernen. Das ausgewählte Buch enthält bereits ein PDF-Format. Sind Sie sicher, dass Sie es ersetzen wollen? Die temporäre Datei finden Sie in:
%s Buch wird entpackt... Standard alt 