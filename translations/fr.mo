��    e      D  �   l      �  m  �  e  �     e     u  	   �     �     �     �     �     �     �     �       	   "     ,     G     `     y  '   �     �  Q  �  8     :   I  N   �  @   �  h        }  0   �  =   �  [     1   g  C   �  :   �  *     !   C  :   e  %   �  '   �  6   �  ^   %  9   �  @   �  E   �  %   E  J   k  +   �  D   �     '  #   ,     P  #   l     �     �  �   �     �     �     �     �     �     �       
        )     2     B     ]  7   p     �     �  )   �     �       
   -     8     Q     c     �     �     �     �     �  
   �  
   �     �     
                     1     E     _     x     �     �  O   �  U   
  &   `     �     �     �    �  �  �!  �  �(     X+  ,   n+     �+  
   �+     �+     �+     �+     �+  "   ,  9   1,     k,     �,  (   �,  #   �,     �,     �,  0   -     >-  �  K-  N   �.  J   "/  _   m/  P   �/  �   0     �0  ?   �0  L   1  u   X1  A   �1  N   2  U   _2  4   �2  #   �2  E   3  .   T3  ,   �3  <   �3  ~   �3  M   l4  N   �4  V   	5  ,   `5  k   �5  7   �5  ?   16     q6  /   z6     �6  /   �6     �6     
7  �   #7     "8     58     N8  "   k8     �8  %   �8     �8     �8  
   �8     �8     9     29  B   I9     �9     �9  4   �9  .   �9     ":     2:     F:     `:  #   t:  "   �:  !   �:     �:     �:     ;  
   ;     $;     6;  
   J;  	   U;     _;     e;     y;     �;  #   �;     �;      �;     <  ^   .<  d   �<  2   �<     %=     >=     J=     F             8          S   9      3             ^   M   c   
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
Last-Translator: Ptit Prince <leporello1791@gmail.com>, 2017
Language-Team: French (http://app.transifex.com/calibre/calibre-plugins/language/fr/)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Language: fr
Plural-Forms: nplurals=3; plural=(n == 0 || n == 1) ? 0 : n != 0 && n % 1000000 == 0 ? 1 : 2;
X-Generator: Poedit 1.5.4
X-Poedit-Basepath: .
X-Poedit-KeywordsList: _;gettext;gettext_noop
X-Poedit-SearchPath-0: .
 
<h3 style="text-align:center">Le greffon Prince PDF (v. %(version)s)</h3>
<p style="text-align:center"><i>Créé par %(author)s</i></p>

<hr/>

<p style="margin:1em 0 0 0">Ce greffon convertira un livre vers le format PDF en utilisant Prince.</p>
<p style="margin:0">Prince est un programme extérieur, vous pouvez le télécharger depuis <a href="http://www.princexml.com/">www.princexml.com</a>.</p>

<p style="margin:1em 0 0 0">Seuls quelques formats peuvent être convertis avec ce greffon, principalement EPUB, AZW3 et HTMLZ. Si vous voulez convertir un livre d'un autre format, convertissez le tout d'abord dans l'un de ces formats.</p>

<p style="margin:1em 0 0 0">Avant la conversion, vous aurez la possibilité de choisir s'il faut ou non ajouter le PDF résultant à l'enregistrement du livre. Si le PDF n'est pas ajouté, il sera sauvé sur le disque, en utilisant le modèle enregistrer sur disque.</p>

<p style="margin:1em 0 0 0">La conversion n'utilisera aucun autre des paramètres de conversion de calibre, mais à la place il utilisera un fichier CSS personnalisé, où des proprètés spécifiques à Prince peuvent être utilisées. De plus, le greffon reconnaîtra et utilisera tout fichier CSS complémentaire spécifié dans le livre lui-même, comme une étiquette <span %(code)s>&lt;meta&gt;</span> avec <span %(code)s>name="prince-style"</span> et <span %(code)s>content="<i>idref</i>"</span>, où <span %(code)s><i>idref</i></span> est le <span %(code)s>id</span> du fichier CSS supplémentaire dans le manifeste.</p>

<hr/>

<p style="margin:1em 0 0 0"><i><img src="%(dir)s/prince_icon.png"/> Prince est sous copiright &copy; YesLogic Pty. Ltd.</i></p> <p style="margin:0"><img src="%(dir)s/small_icon.png"/> Ce greffon est libre %(license)s.</p>
 
Ce programme est un logiciel libre ; vous pouvez le redistribuer
ou le modifier suivant les termes de la GNU General Public License
telle que publiée par la Free Software Foundation ; soit la version 3
de la licence, soit (à votre gré) toute version ultérieure.

Ce programme est distribué dans l'espoir qu'il sera utile, mais
SANS AUCUNE GARANTIE ; sans même la garantie tacite de
QUALITÉ MARCHANDE ou d'ADÉQUATION à UN BUT PARTICULIER.
Consultez la GNU General Public License pour plus de détails.

Vous devez avoir reçu une copie de la GNU General Public License
en même temps que ce programme ; si ce n'est pas le cas,
consultez <http://www.gnu.org/licenses/>.
 Vérifiez le journal. &Ajouter le PDF à l'enregistrement du livre &CSS du livre &Parcourir Style &personnalisé : Styles &personnalisés : &Masquer les styles &Exécutable Prince : &Restaurer les options par défaut &Afficher le CSS dans la boîte de dialogue de conversion &Afficher les styles &Voir le journal <b>Beaucoup de livres sélectionnés</b> <b>Pas de livres sélectionnés</b> <b>Format d'entrée :</b> %s <b>Titre :</b> %s <b>Attention</b> : Supprime les styles modifiés <i>aucun</i> <p>Code d'erreur : %s<p>Assurez-vous que Prince (<a href="http://www.princexml.com">www.princexml.com</a>) est installé et que l'éxécutable correct de l'interface de ligne de commande est paramétré dans la configuration de ce greffon, qui est habituellement :<ul><li>Dans Windows : <code><i>dossier_de_Prince</i>\Engine\bin\prince.exe</code>    <li>Dans Linux : <code>prince</code></ul> <qt>Ajouter un nouveau style vide avec le nom qui se trouve sur la gauche</qt> <qt>Ajoute le PDF converti à l'enregistrement du livre sélectionné</qt> <qt>Arguments en ligne de commande additionnels utilisés dans la conversion avec ce style</qt> <qt>Feuille de style CSS spécifique au livre incluse dans le fichier ebook</qt> <qt>Liste séparée par une virgule des formats préférés à employer comme source, la première de ces correspondances sera employée</qt> <qt>Configurer le greffon</qt> <qt>Sortie de console de la dernière exécution de Prince</qt> <qt>Feuille de style CSS personnalisée utilisée pour cette conversion</qt> <qt>Feuille de style personnalisée qui sera appliquée, si sélectionnée, à toutes les conversions Prince PDF</qt> <qt>Affiche le journal de la dernière éxécution de Prince</qt> <qt>Exécutable pour le programme Prince (interface en ligne de commande)</qt> <qt>Liste des styles personnalisés définis. Sélectionnez-en un pour l'éditer</qt> <qt>Nom pour le nouveau style ou celui renommé</qt> <qt>Supprimer le style courant</qt> <qt>Renommer le style courant au nom qui se trouve sur la droite</qt> <qt>Restaurer les paramètres par défaut</qt> <qt>Exécuter la conversion avec Prince</qt> <qt>Recherche l'exécutable Prince sur votre ordinateur</qt> <qt>Sélectionner un style à utiliser. Des styles additionnels peuvent être crées dans la configuration de l'extension</qt> <qt>Affiche par défaut les styles dans la boîte de dialogue Conversion</qt> <qt>Afficher/masquer les styles additionnels utilisés pour la conversion</qt> <qt>Spécifier des arguments en ligne de commande additionnels pour la conversion</qt> <qt>Démarre le processus de conversion</qt> <qt>Cette feuille de style peut être modifiée<br/>Les options par défaut peuvent être configurées</qt> <qt>Cette feuille de style ne peut être modifiée</qt> Un style nommé "%s" existe déjà, utilisez un nom différent. A&jouter Arguments en ligne de commande a&dditionnels :  À propos du greffon Prince PDF Arguments en ligne de commande addi&tionnels :  Ajout du PDF... Formats disponibles : %s Les métadonnées du livre peuvent être utilisées dans la feuille de style. Toute chose entre %(s1)s et %(s2)s sera traité comme un modèle calibre. Par exemple,  %(s3)s dans la feuille de style sera remplacé par le titre du livre dans la conversion. &CSS personnalisé Ne peut ajouter de style Ne peut pas convertir en PDF Ne peut supprimer le dernier style Ne peut renommer le style Choisir le répertoire de destination Ligne de commande : %s &Configurer &Convertir Convertir au format &PDF Convertir en PDF avec Prince Conversion du livre... Convertit en PDF en utilisant l'application Prince (partie tierce) N'a pas pu convertir en PDF Ne peut sauver le PDF Erreur en lisant ou en écrivant le fichier PDF :
%s Erreur lors de l'écriture du fichier PDF :
%s Format existant Fichier sauvegardé Format non supporté : %s Trouvé : %s(%d-%d) Pas de format préféré disponible Pas de format supporté disponible Fichier PDF sauvegardé dans :
%s Fichier PDF : %s Analyse du livre... &Formats préférés : Prince PDF Journal de Prince Erreur de processus Su&pprimer Re&nommer Prêt Remplacer avec : %s Remplacement des modèles Exécuter le greffon Prince PDF Sélectionner l'éxécutable Prince Sélectionner un seul livre Arrangement des métadonnées... La conversion a échoué. Le dernier style ne peut être supprimé. Vous pouvez le renommer et/ou supprimer son contenu. Le livre sélectionné contient déjà un format PDF. Êtes-vous sûr que vous voulez le remplacer ? Le fichier temporaire peut être trouvé dans :
%s Décompresse le livre... Par défaut ancien 