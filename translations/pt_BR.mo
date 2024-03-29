��    e      D  �   l      �  m  �  e  �     e     u  	   �     �     �     �     �     �     �     �       	   "     ,     G     `     y  '   �     �  Q  �  8     :   I  N   �  @   �  h        }  0   �  =   �  [     1   g  C   �  :   �  *     !   C  :   e  %   �  '   �  6   �  ^   %  9   �  @   �  E   �  %   E  J   k  +   �  D   �     '  #   ,     P  #   l     �     �  �   �     �     �     �     �     �     �       
        )     2     B     ]  7   p     �     �  )   �     �       
   -     8     Q     c     �     �     �     �     �  
   �  
   �     �     
                     1     E     _     x     �     �  O   �  U   
  &   `     �     �     �  /  �  �  �!  �  �(     T+  '   k+  
   �+  	   �+     �+     �+     �+     �+     �+  &   ,     7,     H,  !   ],     ,     �,     �,  )   �,     �,  l  -  B   t.  H   �.  W    /  P   X/  �   �/     *0  :   J0  I   �0  r   �0  :   B1  G   }1  K   �1  -   2     ?2  7   _2  %   �2  +   �2  5   �2  h   3  :   �3  D   �3  P   4  *   Y4  T   �4  6   �4  A   5  
   R5  +   ]5     �5  +   �5     �5     �5  �   �5     �6  #   �6  "   !7  +   D7  $   p7  !   �7     �7     �7  
   �7     �7     �7     8  3   ,8  "   `8     �8  '   �8      �8     �8     �8     9     '9  $   >9  $   c9     �9     �9     �9     �9  
   �9     �9     �9     
:  	   :     :     $:     7:     L:     i:     �:     �:     �:  [   �:  ^   *;  6   �;     �;     �;     �;     F             8          S   9      3             ^   M   c   
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
Last-Translator: Paulo_Neto <layoutbr@lexxa.com.br>, 2014,2017
Language-Team: Portuguese (Brazil) (http://app.transifex.com/calibre/calibre-plugins/language/pt_BR/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: pt_BR
Plural-Forms: nplurals=3; plural=(n == 0 || n == 1) ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">O plugin Prince PDF (v. %(version)s)</h3>
<p style="text-align:center"><i>Criado por %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">Este plugin vai converter um livro para PDF usando o Prince.</p>
<p style="margin:0">Prince é um programa externo, você pode fazer sua transferência de <a href="http://www.princexml.com/">www.princexml.com</a>.</p> <p style="margin:1em 0 0 0">Apenas alguns formatos podem ser convertidos com este plugin, principalmente EPUB, AZW3 e HTMLZ. Se você deseja converter um livro em outro formato, converta-o primeiro em um desses formatos.</p>

<p style="margin:1em 0 0 0">Antes da conversão atual, você poderá escolher se deseja ou não adicionar o PDF resultante para o registro do livro. Se o PDF não é adicionado, ele será salvo no disco, usando o modelo de salvar para o disco.</p>

<p style="margin:1em 0 0 0">A conversão não vai usar qualquer outra das definições de conversão do calibre, mas em vez disso ela vai usar um arquivo CSS personalizado, onde as propriedades específicas do Prince podem ser usadas. Este arquivo pode ser modificado nas configurações do plugin. Além disso, o plugin vai reconhecer e usar qualquer arquivo CSS adicional especificado no próprio livro, como uma etiqueta <span %(code)s>&lt;meta&gt;</span> com <span %(code)s>name="prince-style"</span> e <span %(code)s>content="<i>idref</i>"</span>, onde <span %(code)s><i>idref</i></span> é o <span %(code)s>id</span> do arquivo CSS extra no manifesto.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> O Prince é protegido por direitos autorais &copy; YesLogic Pty. Ltd.</i></p> <p style="margin:0"><img src="%(dir)s/small_icon.png"/> Este plugin é lançado sob %(license)s.</p>
 
Este programa é um software livre; você pode redistribuí-lo e/ou 
modificá-lo dentro dos termos da Licença Pública Geral GNU como 
publicada pela Fundação do Software Livre (FSF); na versão 3 da 
Licença, ou (na sua opinião) qualquer versão ulterior.

Este programa é distribuído na esperança de que possa ser útil, 
mas SEM NENHUMA GARANTIA; sem uma garantia implícita de
ADEQUAÇÃO a qualquer MERCADO ou APLICAÇÃO EM PARTICULAR.
Veja a Licença Pública Geral GNU para maiores detalhes.

Você deve ter recebido uma cópia da Licença Pública Geral GNU
junto com este programa, se não, veja <http://www.gnu.org/licenses/>.
  Verificar o registro. &Adicionar PDF para o registro do livro Li&vro CSS &Procurar Personaizar &estilo: Estilos personali&zados: &Ocultar estilos Executável &prince: &Restaurar padrões Mo&strar CSS no diálogo de conversão &Mostrar estilos &Visualizar registro <b>Muitos livros selecionados</b> <b>Nenhum livro selecionado</b> <b>Formato de origem:</b> %s <b>Título:</b> %s <b>Aviso</b>: Excluir estilos modificados <i>nenhum</i> <p>Código de erro: %s<p>certifique-se que o Prince (<a href="http://www.princexml.com">www.princexml.com</a>) esteja instalado e o executável correto da interface da linha de comando esteja definido nas configurações deste plugin, normalmente:<ul><li>No Windows: <code><i>Prince_folder</i>\Engine\bin\prince.exe</code>    <li>No Linux: <code>prince</code></ul> <qt>Adicionar um novo estilo em branco com o nome à esquerda</qt> <qt>Adicionar o PDF convertido para o registro do livro selecionado</qt> <qt>Argumentos adicionais da linha de comando usado em conversões com este estilo</qt> <qt>Folha de estilo CSS específica do livro incluído no arquivo do e-book</qt> <qt>Lista separada por vírgula dos formatos preferidos para ser usado como origem, a primeira correspondência será usada</qt> <qt>Configurar este plugin</qt> <qt>Saída do console da última execução do Prince</qt> <qt>Personalizar folha de estilo CSS para ser usada nessa conversão</qt> <qt>Folha de estilo personalizada que será aplicada, se selecionada, para todas as conversões do Prince PDF</qt> <qt>Exibir o registro da última execução do Prince</qt> <qt>Executável do programa Prince (interface de linha de comando)</qt> <qt>Lista de estilos personalizados definida. Selecione um para editar</qt> <qt>Nome para o estilo novo ou renomeado</qt> <qt>Remover o estilo atual</qt> <qt>Renomear o estilo atual para o nome à direita</qt> <qt>Restaurar os ajustes padrão</qt> <qt>Executar a conversão com o Prince</qt> <qt>Busca o executável Prince em seu computador</qt> <qt>Selecione um estilo para usar. Estilos adicionais podem ser criados na configuração do plugin</qt> <qt>Mostrar estilos por padrão no diálogo Converter</qt> <qt>Mostrar/ocultar estilos adicionais usados para a conversão</qt> <qt>Especifique argumentos adicionais da linha de comando para a conversão</qt> <qt>Começar o processo de conversão</qt> <qt>Esta folha de estilo pode ser modificada<br/>O padrão pode ser configurado</qt> <qt>Esta folha de estilo não pode ser modificada</qt> Um estilo chamado "%s" já está definido, use um nome diferente. A&dicionar Argumentos a&dicionais da linha de comando: Sobre o Plugin Prince PDF Argumentos adi&cionais da linha de comando: Adicionando PDF... Formatos disponíveis: %s Metadados de livro podem ser usados em uma folha de estilos. Qualquer coisa entre %(s1)s e %(s2)s será processado como um modelo do calibre. Por exemplo, %(s3)s ina folha de estilo será substituído com o título do livro na conversão. Personali&zar CSS Não foi possível adicionar estilo Não foi possível converter o PDF Não foi possível excluir o último estilo Não foi possível renomear o estilo Escolher um diretório de destino Linha de comando: %s Con&figurar Con&verter Converter para &PDF Converter para PDF com o Prince Convertendo livro... Converte o PDF usando o software Prince (terceiros) Não foi possível converter o PDF Não foi possível salvar o PDF Erro ao ler ou gravar o arquivo PDF:
%s Erro ao gravar o arquivo PDF:
%s Formato existente Arquivo salvo Formato não suportado: %s Encontrado: %s (%d-%d) Nenhum formato preferido disponível Nenhum formato suportado disponível Arquivo PDF salvo em:
%s Arquivo PDF: %s Analisando livro... &Formatos preferidos: Prince PDF Registro do Prince Erro no processo Re&mover Re&nomear Pronto Substituir por: %s Substituindo modelos Executar o Plugin Prince PDF Selecionar executável Prince Selecionar um único livro Definindo metadados... A conversão falhou. O último estilo não pode ser removido. Você pode renomeá-lo e/ou remover seu conteúdo. O livro selecionado já contém um formato PDF. Você tem certeza de que deseja substituí-lo? TO arquivo temporário não pode ser encontrado em:
%s Descomprimindo livro.... padrão antigo 