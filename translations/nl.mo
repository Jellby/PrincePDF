��    e      D  �   l      �  m  �  e  �     e     u  	   �     �     �     �     �     �     �     �       	   "     ,     G     `     y  '   �     �  Q  �  8     :   I  N   �  @   �  h        }  0   �  =   �  [     1   g  C   �  :   �  *     !   C  :   e  %   �  '   �  6   �  ^   %  9   �  @   �  E   �  %   E  J   k  +   �  D   �     '  #   ,     P  #   l     �     �  �   �     �     �     �     �     �     �       
        )     2     B     ]  7   p     �     �  )   �     �       
   -     8     Q     c     �     �     �     �     �  
   �  
   �     �     
                     1     E     _     x     �     �  O   �  U   
  &   `     �     �     �  �  �  �  p!  e  6(     �*     �*  	   �*  	   �*     �*     �*     
+     +     0+     B+     a+  	   t+     ~+     �+     �+     �+  2   �+     ,  b  &,  G   �-  A   �-  R   .  C   f.  �   �.     -/  :   J/  F   �/  l   �/  D   90  E   ~0  S   �0  /   1  #   H1  6   l1  *   �1  )   �1  1   �1  q   *2  B   �2  N   �2  G   .3  #   v3  Y   �3  3   �3  H   (4  
   q4  &   |4     �4  %   �4     �4     �4  �   5     6     6     26  %   M6     s6     �6     �6     �6  	   �6     �6     �6     �6  3   7     ;7     U7  /   j7  "   �7     �7     �7     �7     �7     8  $   /8     T8     r8     �8     �8  
   �8  
   �8     �8  
   �8  
   �8     �8     �8     �8     9  "   '9     J9     e9     9  d   �9  Y   �9  1   W:     �:  	   �:     �:     F             8          S   9      3             ^   M   c   
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
Last-Translator: Meteor0id, 2019
Language-Team: Dutch (http://app.transifex.com/calibre/calibre-plugins/language/nl/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: nl
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">Prince PDF Plugin (v. %(version)s)</h3>
<p style="text-align:center"><i>Gemaakt door %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">Deze plug-in zal een boek converteren naar PDF dankzij Prince.</p>
<p style="margin:0">Prince is een extern programma, u kunt het hier downloaden<a href="http://www.princexml.com/">www.princexml.com</a>.</p>

<p style="margin:1em 0 0 0">Maar een paar formaten kunnen geconverteerd worden met deze plug-in, bijv EPUB, AZW3 en HTMLZ. Als u een boek wilt converteren in een ander formaat, converteer het dan eerst in een van deze formaten.</p>

<p style="margin:1em 0 0 0">Voor de werkelijke conversie krijgt u de mogelijkheid om de PDF toe te voegen aan het book record. Wanneer de PDF niet toegevoegd is zal deze opgeslagen worden op uw schijf, door de save-to-disk template.</p>

<p style="margin:1em 0 0 0">De conversie zal geen andere calibre conversie-instellingen gebruiken, in plaats daarvan zal het een aanpasbare CSS file, waar Prince-specifieke properties gebruikt kunnen worden. Dit bestand kan aangepast worden in de plug-in configuratie. Daarbovenop herkent en gebruikt de plug-in elk extra CSS bestand gespecificeerd in het boek zelf, als een <span %(code)s>&lt;meta&gt;</span> tag met <span %(code)s>name="prince-style"</span> en <span %(code)s>content="<i>idref</i>"</span>, waar <span %(code)s><i>idref</i></span> de <span %(code)s>id</span> is van het extra CSS bestand in het manifest.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince is auteursrechtelijk beschermd &copy; YesLogic Pty. Ltd.</i></p>
<p style="margin:0"><img src="%(dir)s/small_icon.png"/> Deze plug-in is uitgebracht onder %(license)s.</p>
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
 Controleer de log. PDF &toevoegen aan boek record &Boek CSS &Bladeren &Aangepaste stijl: &Aangepaste stijlen: &Verberg stijlen &Prince uitvoerbaar: &Reset staandaard &Toon CSS in de Convert dialog &Stijlen weergeven &Toon log <b>Veel boeken geselecteerd</b> <b>Geen boeken geselecteerd</b> <b>Bron formaat:</b> %s <b>Titel:</b> %s <b>Waarschuwing</b>: Verwijdert gewijzigde stijlen <i>geen</i> <p>Fout code: %s<p>zorg ervoor dat Prince (<a href="http://www.princexml.com">www.princexml.com</a>) is geïnstalleerd en dat de uitvoerbare .EXE command-line interface correct werd ingesteld in deze plugin, die gewoonlijk te vinden is:<ul><li>In Windows: <code><i>Prince_folder</i>\Engine\bin\prince.exe</code>    <li>In Linux: <code>prince</code></ul> <qt>Voeg een nieuwe lege stijl toe met de naam aan de linkerkant </qt> <qt>Voeg de omgezette PDF naar het geselecteerde boekbestand</qt> <qt>Additionele command-line argumenten gebruikt in conversies met deze stijl</qt> <qt>Boek-specifieke CSS stylesheet bijgevoegd in ebook bestand</qt> <qt>Door komma's gescheiden lijst van geprefereerde formaten te gebruiken als bron, de eerste die overeen komt wordt gebruikt</qt> <qt>Pas deze plugin aan</qt> <qt>Console weergave van de laatste Prince uitvoering</qt> <qt>Aangepaste CSS stylesheet om voor deze conversie te gebruiken</qt> <qt>Aangepaste stijlblad dat, indien geselecteerd, zal toegepast worden bij alle Prince PDF conversies</qt> <qt>Toon het logboek van de laatst uitgevoerde Prince conversie</qt> <qt>Executable voor de Prince programma (command-line interface)</qt> <qt>Lijst met gedefinieerde aangepaste stijlen Selecteer er een om te bewerken</qt> <qt>Naam voor de nieuwe of hernoemde stijl</qt> <qt>Verwijder de huidige stijl</qt> <qt>Hernoem de huidige stijl naar de naam rechts</qt> <qt>Herstel de standaard instellingen</qt> <qt>Voer de conversie uit met Prince</qt> <qt>Zoek de Prince executable op uw computer</qt> <qt>Selecteer een stijl voor gebruik. bijkomende stijlen kunnen aangemaakt worden in de plugin configuratie</qt> <qt>Toon standaard de stijlen in het conversie dialoogvenster</qt> <qt>Tonen/Verbergen van de additionele stijlen gebruikt in deze conversie</qt> <qt>Specifieer aanvullende command-line argumenten voor conversie</qt> <qt>Start het conversie proces</qt> <qt>Deze stylesheet kan aangepast worden<br/>De standaard kan worden geconfigureerd</qt> <qt>Deze style sheet kan niet aangepast worden</qt> Een stijl met de naam "%s" is al gedefinieerd, gebruik aan andere naam. &Toevoegen A&dditionle opdrachtregel argumenten: Over het Prince PDF Plugin Addi&tionele command-line argumenten: PDF toevoegen... Beschikbare formaten: %s Metagegevens uit het boek kan gebruikt worden in het stijlblad. Alles tussen %(s1)s en %(s2)s zal verwerkt worden als een Calibre sjabloon. Bijvoorbeeld, %(s3)s zal in het stijlblad vervangen worden door de titel van het boek bij het converteren. &Persoonlijke CSS Kan geen stijl toevoegen Kan niet naar PDF omzetten Kan de laatste stijl niet verwijderen Kan de stijl niet hernoemen Kies doelmap Opdrachtregel: %s Con&figureren &Omzetten Omzetten naar &PDF Omzetten naar PDF met Prince Boek omzetten... Omzetten naar PDF met Prince software (third-party) Omzetten naar PDF mislukt Kon PDF niet opslaan Fout bij lezen of schrijven van PDF-bestand:
%s Fout bij schrijven PDF-bestand:
%s Bestaand formaat Bestand bewaard Formaat niet ondersteund: %s Gevonden: %s (%d-%d) Geen voorkeursformaat aanwezig Geen ondersteund formaat beschikbaar PDF bestand opgeslagen in:
%s PDF bestand: %s Boek doorlopen... Voorkeurs&formaten: Prince PDF Prince log Verwerk-fout Ver&wijder Her&noemen Klaar Vervangen door: %s Vervang sjablonen Start de Prince PDF plugin Selecteer het Prince .EXE bestand Selecteer één enkel boek Metagegevens instellen... Het omzetten is mislukt. De laatste stijl kan niet worden verwijderd. U kunt het hernoemen en/of de inhoud ervan verwijderen. Het geselecteerde boek bevat al een PDF formaat. Weet je zeker dat je dit wilt vervangen? Het tijdelijke bestand kan worden gevonden in:
%s Boek uitpakken... standaard oud 