��    e      D  �   l      �  m  �  e  �     e     u  	   �     �     �     �     �     �     �     �       	   "     ,     G     `     y  '   �     �  Q  �  8     :   I  N   �  @   �  h        }  0   �  =   �  [     1   g  C   �  :   �  *     !   C  :   e  %   �  '   �  6   �  ^   %  9   �  @   �  E   �  %   E  J   k  +   �  D   �     '  #   ,     P  #   l     �     �  �   �     �     �     �     �     �     �       
        )     2     B     ]  7   p     �     �  )   �     �       
   -     8     Q     c     �     �     �     �     �  
   �  
   �     �     
                     1     E     _     x     �     �  O   �  U   
  &   `     �     �     �  �  �  9  p!  u  �'      *     1*     K*     W*     _*     q*     �*     �*     �*  #   �*     �*     �*     �*  #   +     >+     W+  (   k+     �+  L  �+  :   �,  6   (-  L   _-  F   �-  i   �-     ].  :   }.  I   �.  a   /  4   d/  :   �/  G   �/  ,   0     I0  9   h0  !   �0  '   �0  2   �0  U   1  :   u1  :   �1  >   �1  '   *2  ?   R2  %   �2  9   �2     �2     �2     3     /3     H3     Z3  �   w3     B4     Q4     e4     4     �4     �4     �4     �4     �4     �4     �4     5  >   .5     m5     �5  .   �5     �5     �5     6     6     16  (   C6  &   l6     �6     �6     �6     �6  
   �6     �6     7     7  
   7     *7     17     >7     Q7      j7     �7     �7     �7  \   �7  T   /8  %   �8     �8  	   �8     �8     F             8          S   9      3             ^   M   c   
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
Last-Translator: Maidur, 2017
Language-Team: Estonian (http://app.transifex.com/calibre/calibre-plugins/language/et/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: et
Plural-Forms: nplurals=2; plural=(n != 1);
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">Plugin Prince PDF (v. %(version)s)</h3>
<p style="text-align:center"><i>Autor %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">See plugin teisendab raamatu PDF-iks, kasutades Prince'i.</p>
<p style="margin:0">Prince on väline programm, selle saab alla laadida lehelt <a href="http://www.princexml.com/">www.princexml.com</a>.</p>

<p style="margin:1em 0 0 0">Selle pluginaga saab teisendada ainult mõnd formaati, peamiselt EPUB, AZW3 ja HTMLZ. Kui tahad teisendada muus formaadis raamatut, teisenda see esmalt üheks neist formaatidest.</p>

<p style="margin:1em 0 0 0">Enne tegelikku teisendamist saad valida, kas lisada tulemusena saadav PDF raamatu kirjesse. Kui PDF-i ei lisata, salvestatakse see kõvakettale, kasutades kettale salvestamise malli.</p>

<p style="margin:1em 0 0 0">Teisendamine ei kasuta ühtki calibre teisendamise säted, kuid kasutab hoopis kohandatud CSS-faili, kus võib kasutada Prince'iga seotud omadusi. Seda faili saab muuta plugina seadistamise aknas. Lisaks tuvastab ja kasutab plugin raamatus olevat mis tahes lisa-CSS-faili, <span %(code)s>&lt;meta&gt;</span>-sildina, milles on <span %(code)s>name="prince-style"</span> ja <span %(code)s>content="<i>idref</i>"</span>, kus <span %(code)s><i>idref</i></span> on lisa-CSS-faili <span %(code)s>id</span> manifestis.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince'i autoriõigust omab &copy; YesLogic Pty. Ltd.</i></p>
<p style="margin:0"><img src="%(dir)s/small_icon.png"/> See plugin on väljalastud litsentsi %(license)s all.</p>
 
See plugin on vaba tarkvara: sa võid seda levitada ja/või muuta
litsentsi GNU General Public License tingimustel, nagu on avaldanud
the Free Software Foundation, kas litsentsi versiooni 3 või
(sinu valikul) hilisema versiooni alusel.

Seda programmi levitatakse lootuses, et see on kasulik,
kuid ILMA IGASUGUSE GARANTIITA; isegi tuleneva
MÜÜDAVUSE või KINDLAKS EESMÄRGIKS SOBIVUSE garantiita.
Rohkema teabe saamiseks vaata litsentsi
GNU General Public License.

Sa oleksid koos selle programmiga pidanud kaasa saama litsentsi GNU General Public License koopia. Kui mitte, siis vaata lehte <http://www.gnu.org/licenses/>.
  Kontrolli logi. Lisa PDF raamatu kirjesse Raamatu CSS Lehitse &Kohandatud laad: Kohandatud laadid: Peida laadid Prince'i käivitusfail: Taasta vaikesätted Näita teisendamise dialoogis CSS-i Näita laade Näita logi <b>Valitud on mitu raamatut</b> <b>Ühtki raamatut pole valitud</b> <b>Lähteformaat:</b> %s <b>Pealkiri:</b> %s <b>Hoiatus</b>: Kustutab muudetud laadid <i>pole</i> <p>Veateade: %s<p>veendu, et Prince (<a href="http://www.princexml.com">www.princexml.com</a>) on installitud ja selle plugina kohandamise aknas on sisestatud õige käsurealiidese käivitusfail, milleks on tavaliselt:<ul><li>Windowsis: <code><i>Prince_kaust</i>\Engine\bin\prince.exe</code>    <li>Linuxis: <code>prince</code></ul> <qt>Lisa uus tühi laad, mil nimeks vasakul olev nimi</qt> <qt>Lisa teisendatud PDG valitud raamatu kirjesse</qt> <qt>Käsurea lisaargumendid, mida kasutada selle laadiga teisendamistes</qt> <qt>Raamatupõhine CSS laadileht, mis on e-raamatu faili kaasatud</qt> <qt>Komaeraldusega loend eelistatud formaatidest, mida allikana kasutada; kasutatakse esimest vastet</qt> <qt>Seadista seda pluginat</qt> <qt>Konsooli väljund viimasest Prince'i käitamisest</qt> <qt>Kohandatud CSS laadileht, mida selle teisendamise jaoks kasutada</qt> <qt>Kohandatud laadileht, mis rakendatakse, kui valitud, kõigile Prince PDF teisendamistele</qt> <qt>Näita logi viimasest Prince'i käitamisest</qt> <qt>Prince'i programmi käivitusfail (käsurealiides)</qt> <qt>Loend määratletud kohandatud laadidest. Muutmiseks vali üks</qt> <qt>Uue või ümbernimetatud laadi nimi</qt> <qt>Eemalda praegune laad</qt> <qt>Pane praeguse laadi nimeks paremalpool olev nimi</qt> <qt>Taasta vaikimisi sätted</qt> <qt>Käita Prince'iga teisendamine</qt> <qt>Otsi oma arvutist Prince'i käivitusfaili</qt> <qt>Vali üks laad, mida kasutada. Lisalaade saab luua plugina kohandamise aknas</qt> <qt>Vaikimisi näita teisendamise dialoogiaknas laade</qt> <qt>Näita/peida teisendamisel kasutatavaid lisalaade</qt> <qt>Määratle teisendamise jaoks käsurea lisaargumendid</qt> <qt>Käivita teisendamise protsess</qt> <qt>Seda laadilehte saab muuta<br/>Vaikevalikut saab muuta</qt> <qt>Seda laadilehte ei saa muuta</qt> Laad nimega "%s" on juba määratletud, kasuta muud nime. Lisa Käsurea lisaargumendid: Teave plugina Prince PDF kohta Käsurea lisaargumendid: PDF-i lisamine... Saadavalolevad formaadid: %s Laadilehes saab kasutada raamatu metaandmeid. Kõike fraaside %(s1)s ja %(s2)s vahel olevat töödeldakse calibre mallina. Näiteks: laadilehes olev %(s3)s asendatakse teisendamisel raamatu pealkirjaga. Kohandatud CSS Ei saa laadi lisada Ei saa PDF-iks teisendada Ei saa kustutada viimast laadi Ei saa laadi nime muuta Sihtkausta valimine Käsurida: %s Seadista Teisenda Teisenda PDF-iks Teisenda Prince'iga PDFiks Raamatu teisendamine... Teisendab PDFiks, kasutades Prince'i tarkvara (kolmas osapool) Ei saanud PDF-iks teisendada Ei saanud PDF-i salvestada Viga PDF-faili lugemisel või kirjutamisel:
%s Viga PDF-faili kirjutamisel:
%s Formaat juba olemas Fail salvestatud Formaati ei toetata: %s Leiti: %s (%d-%d) Ühtki eelistatud formaati pole saadaval Ühtki toetatud formaati pole saadaval PDF-fail salvestatud kohta:
%s PDF-fail: %s Raamatu analüüsimine... Eelistatud formaadid: Prince PDF Prince'i logi Protsessi viga Eemalda Muuda nime Valmis Asendaja: %s Mallide asendamine Käita plugin Prince PDF Prince'i käivitusfaili valimine Vali üks raamat Metaandmete sisestamine... Teisendamine ebaõnnestus. Viimast laadi ei saa kustutada. Sa võid selle ümber nimetada ja/või selle sisu eemaldada. Valitud raamat juba sisaldab PDF-formaati. Kas oled kindel, et tahad selle asendada? Ajutine fail on kättesaadav siit:
%s Raamatu lahtipakkimine... vaikimisi vana 