��    e      D  �   l      �  m  �  e  �     e     u  	   �     �     �     �     �     �     �     �       	   "     ,     G     `     y  '   �     �  Q  �  8     :   I  N   �  @   �  h        }  0   �  =   �  [     1   g  C   �  :   �  *     !   C  :   e  %   �  '   �  6   �  ^   %  9   �  @   �  E   �  %   E  J   k  +   �  D   �     '  #   ,     P  #   l     �     �  �   �     �     �     �     �     �     �       
        )     2     B     ]  7   p     �     �  )   �     �       
   -     8     Q     c     �     �     �     �     �  
   �  
   �     �     
                     1     E     _     x     �     �  O   �  U   
  &   `     �     �     �  �  �  �  �!  �  ~(     +     &+  
   C+     N+     U+     g+     y+  '   �+     �+  )   �+     �+     	,     ",     A,     ^,     w,  8   �,     �,  {  �,  ;   P.  ?   �.  U   �.  D   "/  ~   g/  %   �/  A   0  7   N0  b   �0  O   �0  Y   91  Z   �1  B   �1  *   12  D   \2  &   �2  +   �2  L   �2  g   A3  S   �3  M   �3  F   K4  (   �4  ]   �4  /   5  T   I5     �5  !   �5     �5  !   �5     6     6  �   )6     7     !7     ;7     W7  )   u7     �7     �7     �7     �7     �7     �7     8  J   48     8     �8  9   �8  *   �8     9     "9     39     M9     a9  '   z9  #   �9     �9     �9     �9  
   :     :     ,:     <:     D:     W:     ^:     v:  #   �:  /   �:     �:     �:  )   ;  d   ?;  S   �;  %   �;     <     3<     ?<     F             8          S   9      3             ^   M   c   
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
Last-Translator: Necdet Yücel <necdetyucel@gmail.com>, 2017
Language-Team: Turkish (http://app.transifex.com/calibre/calibre-plugins/language/tr/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: tr
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">Prince PDF Eklentisi (s %(version)s)</h3>
<p style="text-align:center"><i>Yazarı: %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">Bu eklenti Prince kullanarak bir kitabı PDF' ye dönüştürür</p>
<p style="margin:0">Prince dış bir uygulama olup  <a href="http://www.princexml.com/">www.princexml.com</a> adresinden indirilebilir.</p>

<p style="margin:1em 0 0 0">Bu eklentiyle başlıcı EPUB, AZW3 ve HTMLZ olmak üzere sadece bir kaç biçim dönüştürülebilir. Başka bir biçimdeki kitabı dönüştürmek isterseniz onu öncelikle bu biçimlerden birine dönüştürmelisiniz.</p>

<p style="margin:1em 0 0 0">Dönüştürme işlemine başlamadan önce ortaya çıkacak PDF' yi kitap kaydına ekleyip eklememeyi seçebileceksiniz. PDF eklenmezse sabit-diske-kaydet şablonu kullanılarak sabit diskinize kaydedecektir.</p>

<p style="margin:1em 0 0 0">Dönüştürme işleminde calibre'nin dönüştürme ayarlarından hiç biri kullanılmayacak; bunun yerine Prince' e özel ayarların işlenebileceği kişisel bir CSS dosyası kullanılacaktır. Bu, eklenti yapılandırmasında değiştirilebilir. Bunun yanında eklenti, kitapta bulunan herhangi bir ek CSS dosyasını algılayarak  <span %(code)s>name="prince-style"</span> ile <span %(code)s>&lt;meta&gt;</span> etiketi ve <span %(code)s>content="<i>idref</i>"</span> olarak kullanacaktır. Burada <span %(code)s><i>idref</i></span>, ek CSS dosyasının <span %(code)s>id</span> değeri olacaktır.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince &copy; YesLogic Pty. Ltd. şirketinin tescilli ürünüdür.</i></p>
<p style="margin:0"><img src="%(dir)s/small_icon.png"/> Bu eklenti %(license)s altında yayınlanmaktadır.</p>
 
Bu program özgür bir yazılımdır: Özgür Yazılım Vakfı tarafından yayınlanan
GNU Genel Kamu Lisansı'nın 3. sürümü veya (arzunuza göre) daha yeni bir
sürümü koşulları altında yeniden dağıtabilir ve/ veya
değiştirebilirsiniz.

Bu program faydalı olması ümidiyle dağıtılmaktadır.
BİR TEMİNATI YOKTUR; TİCARETİNİN YAPILABİLİRLİĞİNE VE ÖZEL
BİR AMAÇ İÇİN UYGUNLUĞUNA dair bir teminat da vermez. Ayrıntılar
için GNU Genel Kamu Lisansı’na bakın.

Bu programla birlikte GNU Genel Kamu Lisansı’nın bir kopyasını edinmiş
olmanız gerekir. Aksi halde <http://www.gnu.org/licenses/> adresine bakın.
 Günlük kaydına bakın. PDF' yi kitap kaydına &Ekle Kitap &CSS Gözat &Kişisel biçem: &Kişisel biçem: &Biçemleri gizle &Prince çalıştırılabilir dosyası: Va&rsayılana sıfırla &Dönüştür iletisinde CSS görüntüle Biçemleri &göster Günlüğü görüntüle <b>Bir çok kitap seçildi</b> <b>Hiç kitap seçilmedi</b> <b>Kaynak biçim:</b> %s <b>Başlık:</b> %s <b>Uyarı</b<: Değiştirilmiş stil sayfalarını siler <i>hiçbiri</i> <p>Hata kodu: %s<p>Prince' in (<a href="http://www.princexml.com">www.princexml.com</a>) kurulu olduğuna ve genellikle <ul><li>Windows' ta: <code><i>Prince_folder</i>\Engine\bin\prince.exe</code> veya   <li>Linux' ta: <code>prince</code></ul> bulunan doğru komut satırı çalıştırılabilir dosyasının bu eklenti yapılandırılmasında ayarlanmış olduğundan emin olun. <qt>Soldaki isimle yeni bir boş stil sayfası ekleyin</qt> <qt>Dönüştürülen PDF' yi seçilen kitap kaydına ekle</qt> <qt>BU stil ile dönüştürme için kullanılan ek komut satırı parametreleri</qt> <qt>E-kitap dosyasında yer alan kitaba özel CSS stil sayfası</qt> <qt>Kaynak olarak kullanılacak tercih edilen biçimlerin virgülle ayrılmış listesi. İlk eşleşen kullanılacaktır</qt> <qt>Bu eklentiyi yapılandırın</qt> <qt>Prince son çalıştırıldığındaki komut çıktısı</qt> <qt>Bu dönüştürmede kullanılacak kişisel CSS</qt> <qt>Kişisel stil sayfası, seçilmiş ise tüm Prince PDF dönüşümlerine de, uygulanacak.</qt> <qt>Prince son çalıştırıldığındaki günlük kaydını görüntüle</qt> <qt>Prince uygulaması için çalıştırılabilir dosya (komut satırı ara birimi)</qt> <qt>Tanımlanan kişisel stil sayfalarının listesi. Düzenlemek için birini seçin</qt> <qt>Yeni veya yeniden adlandırılan stil sayfası için isim</qt> <qt>Geçerli stil sayfasını kaldır</qt> <qt>Geçerli stil sayfasını sağdaki isimle yeniden adlandır</qt> <qt>Varsyılan ayarlara sıfırla</qt> <qt>Prince ile dönüştürmeyi yapın</qt> <qt>Bilgisayarınızda Prince çalıştırılabilir dosyasını arayın</qt> <qt>Bir biçemi kullanmak için seçin. Ek biçemler eklenti yapılandırmasıyla oluşturulabilir</qt> <qt>Dönüştür iletisinde varsayılan olarak stil sayfalarını görüntüle</qt> <qt>Dönüştürme için kullanılan ek stil sayfalarını göster/gizle</qt> <qt>Dönüştürme için ek komut satırı parametreleri tanımla</qt> <qt>Dönüştürme işlemine başla</qt> <qt>Bu stil sayfası yeniden düzenlenebilir<br/>Öntanımlı olan yapılandırılabilir</qt> <qt>Bu stil sayfası yeniden düzenlenemez</qt> "%s" adına sahip bir stil sayfası zaten tanımlanmış. Bir başka isim kullanın. Ekle E&k komut satırı parametreleri: Prince PDF Eklentisi Hakkında E&k komut satırı parametreleri: PDF Ekleme... Mevcut formatlar: %s Kitap üst verisi stil sayfasında kullanılabilir. %(s1)s ve %(s2)s arasındaki her şey bir calibre şablonu olarak işlenecektir. Mesela, stil sayfasındaki %(s3)s dönüşüm sırasında kitap başlığı ile değiştirilecektir. K&işisel CSS Stil sayfası eklenemiyor PDF'ye dönüştürülemedi Son stil sayfası silinemiyor Stil sayfası yeniden adlandırılamıyor Hedef dizin seçin Komut satırı: %s Yap&ılandır Dö&nüştür &PDF'ye dönüştür Prince ile PDF' ye dönüştür Kitap dönüştürülüyor... Prince yazılımını (üçüncü taraf) kullanarak PDF'ye dönüştürür PDF' ye dönüştürülemiyor PDF kaydedilemedi PDF dosyası okunurken veya yazılırken hata oluştu:
%s PDF dosyası yazılırken hata oluştu:
%s Mevcut biçim Dosya kaydedildi Format desteklenmiyor: %s Bulunan: %s (%d-%d) Tercih edilen biçim yok Desteklenen hiç bir biçim bulunamadı PDF dosyası şuraya kaydedildi:
%s PDF dosyası: %s Kitap ayrıştırılıyor... Tercih edilen &biçimler: Prince PDF Prince günlüğü İşlem hatası Kaldır Ye&niden adlandır Hazır Şununla değiştir: %s Şablonlar değiştiriliyor Prince PDF Eklentisini Çalıştır Prince çalıştırılabilir dosyasını seçin Tek bir kitap seçin Üst veri ayarlanıyor... Dönüştürme işlemi başarısız oldu. Son stil sayfası kaldırılamıyor. Onu yeniden adlandırabilir ve/veya içeriğini silebilirsiniz. Seçilen kitap zaten bir PDF biçimi içeriyor. Bunu değiştirmek istiyor musunuz? Geçici dosya şurada bulunamadı:
%s Kitap açılıyor... varsayılan eski 