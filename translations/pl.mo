��    e      D  �   l      �  m  �  e  �     e     u  	   �     �     �     �     �     �     �     �       	   "     ,     G     `     y  '   �     �  Q  �  8     :   I  N   �  @   �  h        }  0   �  =   �  [     1   g  C   �  :   �  *     !   C  :   e  %   �  '   �  6   �  ^   %  9   �  @   �  E   �  %   E  J   k  +   �  D   �     '  #   ,     P  #   l     �     �  �   �     �     �     �     �     �     �       
        )     2     B     ]  7   p     �     �  )   �     �       
   -     8     Q     c     �     �     �     �     �  
   �  
   �     �     
                     1     E     _     x     �     �  O   �  U   
  &   `     �     �     �  �  �  �  '"  �  )     �+     �+     �+     �+     �+     ,     $,     1,     K,  (   _,     �,     �,      �,     �,     �,     	-  8   -     T-  H  `-  :   �.  <   �.  R   !/  N   t/  |   �/      @0  8   a0  E   �0  o   �0  <   P1  F   �1  ^   �1  >   32  '   r2  C   �2  &   �2  -   3  (   33  w   \3  H   �3  =   4  A   [4  $   �4  \   �4  6   5  F   V5     �5  %   �5     �5  %   �5     6     6  �   /6     "7  !   67     X7  .   x7     �7     �7     �7     �7  
    8     8  "   8     @8  B   [8     �8     �8  '   �8     �8     9     -9     ;9     W9  &   p9  '   �9     �9     �9     �9     �9  
   :     :     /:     D:     K:     Z:     a:     x:     �:     �:     �:     �:     ;  b   ;  I   z;  &   �;     �;  	   <     <     F             8          S   9      3             ^   M   c   
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
Last-Translator: Marcin Kozioł <koziol.martin@gmail.com>, 2019-2020
Language-Team: Polish (http://app.transifex.com/calibre/calibre-plugins/language/pl/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: pl
Plural-Forms: nplurals=4; plural=(n==1 ? 0 : (n%10>=2 && n%10<=4) && (n%100<12 || n%100>14) ? 1 : n!=1 && (n%10>=0 && n%10<=1) || (n%10>=5 && n%10<=9) || (n%100>=12 && n%100<=14) ? 2 : 3);
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">Wtyczka Prince PDF (v. %(version)s)</h3>
<p style="text-align:center"><i>Stworzone przez %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">Ta wtyczka przekonwertuje książkę do formatu PDF za pomocą Prince.</p>
<p style="margin:0">Prince to zewnętrzny program, z którego można go pobrać <a href="http://www.princexml.com/">www.princexml.com</a>.</p>

<p style="margin:1em 0 0 0">Za pomocą tej wtyczki można przekonwertować tylko kilka formatów, głównie EPUB, AZW3 i HTMLZ. Jeśli chcesz przekonwertować książkę w innym formacie, najpierw przekonwertuj ją na jeden z tych formatów.</p>

<p style="margin:1em 0 0 0">Przed faktyczną konwersją będziesz mógł zdecydować, czy dodać wynikowy plik PDF do rekordu książki. Jeśli plik PDF nie zostanie dodany, zostanie zapisany na dysku przy użyciu szablonu zapisywania na dysku.</p>

<p style="margin:1em 0 0 0">Konwersja nie użyje żadnych innych ustawień konwersji kalibru, ale zamiast tego użyje niestandardowego pliku CSS, w którym można użyć właściwości specyficznych dla Prince'a. Ten plik można modyfikować w konfiguracji wtyczki. Ponadto wtyczka rozpozna i użyje dowolnego dodatkowego pliku CSS określonego w samej książce jako plik <span %(code)s>&lt;meta&gt;</span> tag with <span %(code)s>name="prince-style"</span> and <span %(code)s>content="<i>idref</i>"</span>, where <span %(code)s><i>idref</i></span> is the <span %(code)s>id</span> of the extra CSS file in the manifest.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince jest kopią chronioną prawem autorskim; YesLogic Pty. Ltd.</i></p>
<p style="margin:0"><img src="%(dir)s/small_icon.png"/> Ta wtyczka jest wydana w ramach %(license)s.</p>
 
Ten program jest wolnym oprogramowaniem: możesz go rozpowszechniać i / lub modyfikować to na warunkach Powszechnej Licencji Publicznej GNU opublikowanej przez Free Software Foundation, albo wersja 3 Licencji, albo (do wyboru) dowolna późniejsza wersja.

Ten program jest rozpowszechniany z nadzieją, że będzie przydatny, ale BEZ ŻADNEJ GWARANCJI; nawet bez domniemanej gwarancji WARTOŚĆ HANDLOWA lub PRZYDATNOŚĆ DO OKREŚLONEGO CELU. Zobacz Licencja GNU General Public License zawiera więcej szczegółów.

Powinieneś otrzymać kopię Powszechnej Licencji Publicznej GNU wraz z tym programem. Jeśli nie, zobacz <http://www.gnu.org/licenses/>.
 Sprawdź dziennik. &Dodaj PDF do wpisu książki CSS &książki &Przeglądaj &Niestandardowy styl: &Niestandardowe style: &Ukryj style Plik wykonywalny &Prince: &Odtwórz domyślne &Pokaż CSS w oknie dialogowym konwersji &Pokaż style &Podgląd dziennika <b>Wiele wybranych książek</b> <b>Brak wybranych książek</b> <b>Format źródłowy:</b> %s <b>Tytuł:</b> %s <b>Ostrzeżenie</b>: usuwa zmodyfikowane arkusze stylów <i>brak</i> <p>Kod błędu: %s<p>Upewnij się, że Prince (<a href="http://www.princexml.com">www.princexml.com</a>) jest zainstalowany i w konfiguracji wtyczki ustawiony jest prawidłowy interfejs wiersza poleceń, zwykle jest to:<ul><li>W <code><i>Folder_Prince</i>\Engine\bin\prince.exe</code>    <li>W Linuksie: <code>prince</code></ul> <qt>Dodaj nowy pusty arkusz stylów z nazwą po lewej</qt> <qt>Dodaj skonwertowany PDF do wpisu wybranej książki</qt> <qt>Dodatkowe argumenty wiersza polecenia używane w konwersjach z tym stylem</qt> <qt>Do pliku książki dołączono właściwy dla niej arkusz stylów CSS</qt> <qt>Oddzielona przecinkami lista formatów preferowanych używanych jako źródło, użyty zostanie pierwszy dopasowany</qt> <qt>Konfiguruj tę wtyczkę</qt> <qt>Wyjście konsoli ostatniego uruchomienia Prince</qt> <qt>Niestandardowy arkusz stylów CSS do użycia w tej konwersji</qt> <qt>Niestandardowy arkusz stylów nanoszony w trakcie wzsystkich konwersji PDF przez Prince, o ile wybrano</qt> <qt>Wyświetl dziennik z ostatniego uruchomienia Prince</qt> <qt>Plik wykonywalny programu Prince (interfejs wiersza poleceń)</qt> <qt>Lista zdefiniowanych niestandardowych arkuszy stylów. Wybierz jeden, by go edytować</qt> <qt>Nazwa nowego arkusza stylów lub ze zmienioną nazwą</qt> <qt>Usuń bieżący arkusz stylów</qt> <qt>Zmień nazwę bieżącego arkusza stylów na tę po prawej</qt> <qt>Odtwórz ustawienia domyślne</qt> <qt>Uruchom konwersję za pomocą Prince</qt> <qt>Wybierz plik wykonywalny Prince</qt> <qt>Wybierz jeden arkusz stylów do użycia. Dodatkowe arkusze styłow mogą być utworzone w konfiguracji wtyczki</qt> <qt>Pokazuj domyślnie arkusze stylów w oknie dialogowym konwersji</qt> <qt>Pokaż/ukryj dodatkowe style używane przy konwersji</qt> <qt>Podaj dodatkowe argumenty wiersza polecenia do konwersji</qt> <qt>Rozpocznij proces konwersji</qt> <qt>Ten arkusz stylów może być zmodyfikowany<br/>Domyślny może być skonfigurowany</qt> <qt>Nie można zmodyfikować tego arkusza stylów</qt> Zdefiniowano już arkusz stylów o nazwie „%s”, użyj innej nazwy. &Dodaj Dodatkowe argumenty wiersza poleceń: O wtyczce PDF do Prince Dodatkowe argumenty wiersza poleceń: Dodawanie PDF… Dostępne formaty: %s W arkuszu stylów można wykorzystać metadane książki. Wszystko między „%(s1)s” a „%(s2)s” będzie przetwarzane jako szablon calibre; przykładowo „%(s3)s” w szablonie zostanie zastąpione tytułem książki podczas konwersji. Nie&standardowy CSS Nie można dodać arkusza stylów Nie można skonwertować do PDF Nie można usunąć ostatniego arkusza stylów Nie można zmienić nazwy stylu Wybierz katalog docelowy Wiersz poleceń: %s Kon&figuruj Kon&wertuj Konwertuj do &PDF Konwertuj do PDF za pomocą Prince Konwertowanie książki… Konwertuje do PDF za pomocą oprogramowania Prince (niezależnego) Nie można skonwertować do PDF Nie można zapisać PDF Błąd odczytu lub zapisu pliku PDF:
%s Błąd zapisu pliku PDF:
%s Istniejący format Zapisano plik Format nie obsługiwany: %s Znaleziono: %s (%d–%d) Brak dostępnego preferowanego formatu Brak dostępnego obsługiwanego formatu Zapisano plik PDF w:
%s Plik PDF: %s Analizowanie książki… &Formaty preferowane: Prince PDF Dziennik Prince Błąd przetwarzania &Usuń Zmień &nazwę Gotowy Zastąp za pomocą: %s Zastępowanie szablonów Uruchom wtyczkę Prince PDF Wybierz plik wykonywalny Prince Wybierz pojedynczą książkę Ustawianie metadanych… Błąd konwersji. Ostatni styl nie może zostać usunięty. Możesz zmienić nazwę i/lub usunąć jego zawartość. Wybrana książka już zawiera format PDF. Na pewno chcesz go zastąpić? Plik tymczasowy można znaleźć w:
%s Rozpakowywanie książki… domyślne stary 