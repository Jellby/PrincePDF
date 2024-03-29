��    e      D  �   l      �  m  �  e  �     e     u  	   �     �     �     �     �     �     �     �       	   "     ,     G     `     y  '   �     �  Q  �  8     :   I  N   �  @   �  h        }  0   �  =   �  [     1   g  C   �  :   �  *     !   C  :   e  %   �  '   �  6   �  ^   %  9   �  @   �  E   �  %   E  J   k  +   �  D   �     '  #   ,     P  #   l     �     �  �   �     �     �     �     �     �     �       
        )     2     B     ]  7   p     �     �  )   �     �       
   -     8     Q     c     �     �     �     �     �  
   �  
   �     �     
                     1     E     _     x     �     �  O   �  U   
  &   `     �     �     �  �  �  �  �!  m  5(     �*     �*     �*  	   �*     �*     �*     +      +      1+  !   R+     t+  
   �+     �+     �+     �+     �+  +   �+     ,  `  ",  ;   �-  5   �-  V   �-  8   L.  �   �.  #   /  4   +/  H   `/  `   �/  4   
0  A   ?0  M   �0  /   �0  %   �0  B   %1  -   h1  '   �1  A   �1  d    2  <   e2  G   �2  B   �2  (   -3  O   V3  +   �3  E   �3     4  "   $4     G4  "   `4     �4     �4  �   �4     5     �5     �5  #   �5     �5     6     6     -6     :6     F6     [6     {6  9   �6     �6     �6  1   �6  "   .7     Q7  
   d7     o7     �7     �7  !   �7     �7     �7     �7     	8  
   8  
   )8  
   48     ?8     H8     Q8     V8     f8     w8     �8     �8     �8     �8  [   �8  ]   F9     �9     �9     �9     �9     F             8          S   9      3             ^   M   c   
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
Last-Translator: efef6ec5b435a041fce803c7f8af77d2_2341d43, 2018
Language-Team: Swedish (http://app.transifex.com/calibre/calibre-plugins/language/sv/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: sv
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">Tillägget Prince PDF (v. %(version)s)</h3>
<p style="text-align:center"><i>Skapad %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">Detta tillägg kommer att konvertera en bok till PDF med Prince.</p>
<p style="margin:0">Prince är ett externt program, kan du hämta det från <a href="http://www.princexml.com/">www.princexml.com</a>.</p>

<p style="margin:1em 0 0 0">Only a few formats can be converted with this plugin, mainly EPUB, AZW3 and HTMLZ. If you want to convert a book in another format, convert it first to one of these formats.</p>

<p style="margin:1em 0 0 0">Innan själva konverteringen, kommer du att kunna välja om de vill lägga till den resulterande PDF:n till bokposten. Om PDF inte läggs till kommer det sparas på disk med hjälp av spara-till-disk-mall.</p>

<p style="margin:1em 0 0 0">Konverteringen kommer inte att använda någon annan av calibre-konverteringsinställningar, men i stället kommer att använda en egen CSS-fil, där Princes specifika egenskaper kan användas. Denna fil kan ändras i tilläggskonfigurationen. Dessutom kommer tillägget känna igen och använda någon extra CSS-fil som anges i själva boken, som en<span %(code)s>&lt;meta&gt;</span> etikett med <span %(code)s>name="prince-style"</span> och <span %(code)s>content="<i>idref</i>"</span>, där <span %(code)s><i>idref</i></span> är <span %(code)s>id</span> av den extra CSS-filen i manifestet.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince är upphovsrättsskyddat &kopia; YesLogic Pty. Ltd</i></p>
<p style="margin:0"><img src="%(dir)s/small_icon.png"/> Detta tillägg är släppt under %(license)s.</p>
 
Detta program är fri mjukvara: du kan återdistribuera det och/eller modifiera det under vilkoren i GNU General Public Licens som publicerats av Free Software Foundation, antingen version 3 av Licensen, eller
(som du väljer) någon senare version.

Detta program är distributerat i hopp om att det ska vara användbart,
men UTAN NÅGON GARANTI; även utan underförstådd garanti
SÄLJBARHET eller LÄMPLIGHET FÖR ETT VISST SYFTE. Se
GNU General Public Licens för mer detaljer.

Du bör ha fått en kopia av GNU General Public Licens
tillsammans med det här programmet. Om inte, se <http://www.gnu.org/licenses/>.
 Undersök loggen &Lägg PDF bokhandlingen &Bok CSS &Bläddra &Anpassad stil: &Anpassade stilar: &Göm stilar &Prince (exekverbar) programfil: &Återställer grundinställning &Visa CSS i konverteringsdialogen &Visa stilar &Visa logg <b>Många böcker valda</b> <b>Inga böcker valda</b> <b>Källformat:</b> %s <b>Titel:</b> %s <b>Varning</b>: Tar bort modifierade stilar <i>inga</i> <p>Felkod: %s<p>försökra dig att Prince (<a href="http://www.princexml.com">www.princexml.com</a>) är installerad och att rätt kommandoradsgränssnitt program är inställt i konfigurationen av detta tillägg, vilket är vanligtvis är:<ul><li>I Windows: <code><i>Prince_folder</i>\Engine\bin\prince.exe</code> <li>I Linux: <code>prince</code></ul> <qt>Lägg till en ny tom stil med namnet till vänster</qt> <qt>Lägg till konverterad PDF till vald bokpost</qt> <qt>Ytterligare kommandoradsargument som används i konverteringar med denna stil</qt> <qt>Bokspecifik CSS-stilmal inkluderad i e-bokfilen</qt> <qt>Kommaseparerad lista över önskade format som ska användas som källa, den första att träffarna kommer att användas</qt> <qt>Konfigurera detta tillägg</qt> <qt>Konsolutdata från Princes senaste körning</qt> <qt>Anpassat CSS-format som skall användas för denna konvertering</qt> <qt>Anpassad stilmall som ska tillämpas, om de väljs, till alla Prince PDF-konverteringar</qt> <qt>Visa loggen från senaste Prince-körningen</qt> <qt>Programfil för Prince program (kommandoradsgränssnitt)</qt> <qt>Lista över anpassade definierade stilar. Välj en för att redigera</qt> <qt>Namn på den nya eller omdöpta stilen</qt> <qt>Ta bort den nuvarande stilen</qt> <qt>Byt namn på den nuvarande stilen till namnet till höger</qt> <qt>Återställer standardinställningar</qt> <qt>Utför konvertering med Prince</qt> <qt>Manuell bläddring efter din exekverbara fil för Prince</qt> <qt>Välj en stil att använda. Ytterligare stilar kan skapas i insticksmodulenskonfigurationen</qt> <qt>Visa efter standard stilar i dialogrutan Konvertera</qt> <qt>Visa/dölj ytterligare stilar som används för konverteringen</qt> <qt>Ange ytterligare kommandoradsargument för konverteringen</qt> <qt>Påböra konverteringsprocessen</qt> <qt>Denna stilmall kan modifieras<br/>Grundinställningen kan konfigureras</qt> <qt>Denna stilmall kan inte modifieras</qt> En stil med namnet "%s" är redan definierat, använd ett annat namn. &Lägg till &Ytterligare kommandoradsargument: Om Prince PDF-tillägget &Ytterligare kommandoradsargument: Lägger till PDF... Tillgängliga format: %s Bokens metadata kan användas i formatmallen. Allt mellan %(s1)s och %(s2)s kommer att behandlas som en calibre-mall. Till exempel, kommer %(s3)s i stilmallen ersätts med bokens titel under konverteringen. &Anpassa CSS Kan inte lägga till stil Kan inte konvertera till PDF Kan inte ta bort den senaste stilen Kan inte byta namn på stil Välj destinationskatalog Kommandorad: %s Kon&figurera Kon&vertera Konvertera till &PDF Konvertera till  PDF med Prince Konverterar bok... Konverterar till PDF med Prince-programvara (tredje part) Kunde inte konvertera till PDF Kunde inte spara PDF Fel vid läsning eller skrivning av PDF-filen:
%s Fel vid skrivning av PDF-filen:
%s Existerande format Fil sparad Format stöds inte: %s Hittade: %s (%d-%d) Inga föredragna format valda Inga stödda format tillgängliga PDF-fil sparad i:
%s PDF-fil: %s Tolkar bok... Föredragna &format: Prince PDF Prins logg Processfel &Ta bort Döp &om Klar Ersätt med: %s Ersätter mallar Kör Prince PDF-tillägg Välj Prince program Välj en enda bok Ställer in metadata... Konvertering misslyckades. Den sista stilen kan inte tas bort. Du kan byta namn på den och/eller ta bort innehållet. Den valda boken innehåller redan ett PDF-format. Är du säker på att du vill ersätta det? Temporärfil hittas i:
%s Packar upp bok... grundinställning gammal 