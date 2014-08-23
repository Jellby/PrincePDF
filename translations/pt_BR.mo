��    Z      �     �      �  @  �     �     
  	   &     0     8     E     Y     k          �     �  	   �     �     �            ,   +     X  Q  d  =   �  :   �  @   /  h   p     �  0   �  =   )  [   g  1   �  C   �  ?   9  /   y  &   �  ?   �  %     '   6  6   ^  h   �  >   �  E   =  %   �  J   �  +   �  I         j     o     �     �     �     �     �  !   �     	     "  
   ?     J     S     c     ~  7   �     �     �  )   �          >  
   N     Y     r     �     �     �     �  
   �  
   �     �                    "     <     U     l     �  T   �  U   �  &   B     i     {     �    �  �  �     n#  '   �#  
   �#  	   �#     �#     �#     �#     $     %$  &   9$     `$     z$  !   �$     �$     �$     �$  3   %     5%  l  C%  L   �&  H   �&  P   F'  �   �'     (  :   8(  I   s(  r   �(  :   0)  G   k)  G   �)  6   �)  (   2*  @   [*  %   �*  +   �*  5   �*  }   $+  K   �+  R   �+  *   A,  T   l,  6   �,  K   �,  
   D-     O-     i-     |-     �-  .   �-  "   �-  3   �-  -   ..  !   \.     ~.  
   �.     �.     �.     �.  3   �.  "   /     5/  '   U/      }/     �/     �/     �/  $   �/  $   �/     #0     <0     P0  
   f0     q0     �0     �0  	   �0     �0     �0     �0     �0     1     1  f   11  ^   �1  6   �1     .2     G2     O2           (      !   3   .          E   Z   M       O   2           T   ?          8         L   J   U      K                   6   5   "   /           	   -           9   ;       0   ,               W   Y                 =   7   G   >              B                      +       D   V      H      <       4         N      X               I      @      F         A       R       
   S         %          P         1   *      )       '               :      #   &       $   Q   C    
<h3 style="text-align:center">The Prince PDF Plugin (v. %(version)s)</h3>
<p style="text-align:center"><i>Created by %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">This plugin will convert a book to PDF using Prince.</p>
<p style="margin:0">Prince is an external program, you can download it from <a href="http://www.princexml.com/">www.princexml.com</a>.</p>

<p style="margin:1em 0 0 0">Only a few formats can be converted with this plugin, mainly EPUB, AZW3 and HTMLZ. If you want to convert a book in another format, convert it first to one of these formats.</p>

<p style="margin:1em 0 0 0">Before the actual conversion, you will be able to choose whether or not to add the resulting PDF to the book record. If the PDF is not added, it will be saved in disk, using the save-to-disk template.</p>

<p style="margin:1em 0 0 0">The conversion will not use any other of the calibre conversion settings, but instead it will use a custom CSS file, where Prince-specific properties can be used. This file can be modified in the plugin configuration. In addition, the plugin will recognize and use any extra CSS file specified in the book itself, as a <code>&lt;meta&gt;</code> tag with <code>name="prince-style"</code> and <code>content="<i>idref</i>"</code>, where <code><i>idref</i></code> is the <code>id</code> of the extra CSS file in the manifest.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince is copyrighted &copy; YesLogic Pty. Ltd.</i></p>
<p style="margin:0"><img src="%(dir)s/small_icon.png"/> This plugin is released under %(license)s.</p>
  Check the log. &Add PDF to the book record &Book CSS &Browse &Custom CSS: &Custom stylesheet: &Hide stylesheets &Prince executable: &Restore defaults &Show CSS in the Convert dialog &Show stylesheets &View log <b>Many books selected</b> <b>No books selected</b> <b>Source format:</b> %s <b>Title:</b> %s <b>Warning</b>: Deletes modified stylesheets <i>none</i> <p>Error code: %s<p>make sure Prince (<a href="http://www.princexml.com">www.princexml.com</a>) is installed and the correct command-line-interface executable is set in the configuration of this plugin, which is usually:<ul><li>In Windows: <code><i>Prince_folder</i>\Engine\bin\prince.exe</code>    <li>In Linux: <code>prince</code></ul> <qt>Add a new empty stylesheet with the name on the left</qt> <qt>Add the converted PDF to the selected book record</qt> <qt>Book-specific CSS stylesheet included in the ebook file</qt> <qt>Comma-separated list of preferred formats to use as source, the first that matches will be used</qt> <qt>Configure this plugin</qt> <qt>Console output from the last Prince run</qt> <qt>Custom CSS stylesheet to be used for this conversion</qt> <qt>Custom stylesheet that will be applied, if selected, to all Prince PDF conversions</qt> <qt>Display the log from the last Prince run</qt> <qt>Executable for the Prince program (command-line interface)</qt> <qt>List of custom stylesheets defined. Select one to edit</qt> <qt>Name for the new or renamed stylesheet</qt> <qt>Remove the current stylesheet</qt> <qt>Rename the current stylesheet to the name on the right</qt> <qt>Restore the default settings</qt> <qt>Run the conversion with Prince</qt> <qt>Search the Prince executable in your computer</qt> <qt>Select one stylesheet to use. Additional stylesheets can be created in the plugin configuration</qt> <qt>Show by default the stylesheets in the Convert dialog</qt> <qt>Show/hide the additional stylesheets used for the conversion</qt> <qt>Start the conversion process</qt> <qt>This stylesheet can be modified<br/>The default can be configured</qt> <qt>This stylesheet cannot be modified</qt> A stylesheet with the name "%s" is already defined, use a different name. A&dd About the Prince PDF Plugin Adding PDF... Available formats: %s C&ustom CSS Cannot add stylesheet Cannot convert to PDF Cannot delete the last stylesheet Cannot rename stylesheet Choose destination directory Con&figure Con&vert Convert to &PDF Convert to PDF with Prince Converting book... Converts to PDF using the Prince software (third-party) Could not convert to PDF Could not save PDF Error reading or writing the PDF file:
%s Error writing the PDF file:
%s Existing format File saved Format not supported: %s No preferred format available No supported format available PDF file saved in:
%s Parsing book... Preferred &formats: Prince PDF Prince log Process error Re&move Re&name Ready Run the Prince PDF Plugin Select Prince executable Select one single book Setting metadata... The conversion failed. The last stylesheet cannot be removed. You can rename it and/or remove its contents. The selected book already contains a PDF format. Are you sure you want to replace it? The temporary file can be found in:
%s Unpacking book... default old Project-Id-Version: calibre-plugins
POT-Creation-Date: 2014-08-17 10:24+0100
PO-Revision-Date: 2014-08-20 15:11+0000
Last-Translator: Paulo_Neto <layoutbr@lexxa.com.br>
Language-Team: Portuguese (Brazil) (http://www.transifex.com/projects/p/calibre-plugins/language/pt_BR/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: pt_BR
Plural-Forms: nplurals=2; plural=(n > 1);
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">O plugin Prince PDF (v. %(version)s)</h3>
<p style="text-align:center"><i>Criado por %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">Este plugin vai converter um livro para PDF usando o Prince.</p>
<p style="margin:0">Prince é um programa externo, você pode fazer sua transferência de <a href="http://www.princexml.com/">www.princexml.com</a>.</p>

<p style="margin:1em 0 0 0">Apenas alguns formatos podem ser convertidos com este plugin, principalmente EPUB, AZW3 e HTMLZ. Se você deseja converter um livro em outro formato, converta-o primeiro em um desses formatos.</p>

<p style="margin:1em 0 0 0">Antes da conversão atual, você poderá escolher se deseja ou não adicionar o PDF resultante para o registro do livro. Se o PDF não é adicionado, ele será salvo no disco, usando o modelo de salvar para o disco.</p>

<p style="margin:1em 0 0 0">A conversão não vai usar qualquer outra das definições de conversão do calibre, mas em vez disso ela vai usar um arquivo CSS personalizado, onde as propriedades específicas do Prince podem ser usadas. Este arquivo pode ser modificado nas configurações do plugin. Além disso, o plugin vai reconhecer e usar qualquer arquivo CSS adicional especificado no próprio livro, como uma etiqueta <code>&lt;meta&gt;</code> com <code>name="prince-style"</code> e <code>content="<i>idref</i>"</code>, onde <code><i>idref</i></code> é o <code>id</code> do arquivo CSS extra no manifesto.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> O Prince é protegido por direitos autorais &copy; YesLogic Pty. Ltd.</i></p>
<p style="margin:0"><img src="%(dir)s/small_icon.png"/> Este plugin é lançado sob %(license)s.</p>
  Verificar o registro. &Adicionar PDF para o registro do livro Li&vro CSS &Procurar &CSS Personalizada: &Folha de estilo personalizada: &Ocultar folhas de estilo Executável &prince: &Restaurar padrões Mo&strar CSS no diálogo de conversão Mo&strar folhas de estilo &Visualizar registro <b>Muitos livros selecionados</b> <b>Nenhum livro selecionado</b> <b>Formato de origem:</b> %s <b>Título:</b> %s <b>Aviso</b>: Apaga folhas de estilo parsonalizadas <i>nenhum</i> <p>Código de erro: %s<p>certifique-se que o Prince (<a href="http://www.princexml.com">www.princexml.com</a>) esteja instalado e o executável correto da interface da linha de comando esteja definido nas configurações deste plugin, normalmente:<ul><li>No Windows: <code><i>Prince_folder</i>\Engine\bin\prince.exe</code>    <li>No Linux: <code>prince</code></ul> <qt>Adicionar uma nova folha de estilo em branco com o nome à esquerda</qt> <qt>Adicionar o PDF convertido para o registro do livro selecionado</qt> <qt>Folha de estilo CSS específica do livro incluído no arquivo do e-book</qt> <qt>Lista separada por vírgula dos formatos preferidos para ser usado como origem, a primeira correspondência será usada</qt> <qt>Configurar este plugin</qt> <qt>Saída do console da última execução do Prince</qt> <qt>Personalizar folha de estilo CSS para ser usada nessa conversão</qt> <qt>Folha de estilo personalizada que será aplicada, se selecionada, para todas as conversões do Prince PDF</qt> <qt>Exibir o registro da última execução do Prince</qt> <qt>Executável do programa Prince (interface de linha de comando)</qt> <qt>Lista de folhas de estilo definidas. Selecione uma para editar</qt> <qt>Nome para a folha de estilo nova ou renomeada</qt> <qt>Remover a folha de estilo atual</qt> <qt>Renomear a folha de estilo atual para o nome à direita</qt> <qt>Restaurar os ajustes padrão</qt> <qt>Executar a conversão com o Prince</qt> <qt>Busca o executável Prince em seu computador</qt> <qt>Selecione uma folha de estilo para usar. Folhas de estilo adicionais podem ser criadas nas configurações do plugin</qt> <qt>Mostrar, por padrão as folhas de estilo no diálogo de conversão</qt> <qt>Mostrar/ocultar as folhas de estilo adicionais usadas por esta conversão</qt> <qt>Começar o processo de conversão</qt> <qt>Esta folha de estilo pode ser modificada<br/>O padrão pode ser configurado</qt> <qt>Esta folha de estilo não pode ser modificada</qt> Uma folha de estilo chamada "%s" já está definida, use um nome diferente. A&dicionar Sobre o Plugin Prince PDF Adicionando PDF... Formatos disponíveis: %s Personali&zar CSS Não foi possível adicionar a folha de estilo Não foi possível converter o PDF Não foi possível apagar a última folha de estilo Não foi possível renomear a folha de estilo Escolher um diretório de destino Con&figurar Con&verter Converter para &PDF Converter para PDF com o Prince Convertendo livro... Converte o PDF usando o software Prince (terceiros) Não foi possível converter o PDF Não foi possível salvar o PDF Erro ao ler ou gravar o arquivo PDF:
%s Erro ao gravar o arquivo PDF:
%s Formato existente Arquivo salvo Formato não suportado: %s Nenhum formato preferido disponível Nenhum formato suportado disponível Arquivo PDF salvo em:
%s Analisando livro... &Formatos preferidos: Prince PDF Registro do Prince Erro no processo Re&mover Re&nomear Pronto Executar o Plugin Prince PDF Selecionar executável Prince Selecionar um único livro Definindo metadados... A conversão falhou. A última folha de estilo não pode ser removida. Você pode renomeá-la e/ou remover o seu conteúdo. O livro selecionado já contém um formato PDF. Você tem certeza de que deseja substituí-lo? TO arquivo temporário não pode ser encontrado em:
%s Descomprimindo livro.... padrão antigo 