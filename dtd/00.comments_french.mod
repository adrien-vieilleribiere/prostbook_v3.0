<?xml version="1.0" encoding="utf-8"?>
<!-- update : 2014.03.04  -->
<!-- FRENCH -->
<!-- philosophie generale
La structure est represente par part/chapter/sections reentrantes
Les sous structures locales sont toutes representes par des div avec l'attribut
class choisi par l'utilisateur.

Prostbook.dtd sera mise dans une version réduite en creative commons.
Cette DTD doit également être compatible TEI (sens prostbook->TEI).

La transposer en Relax NG pour les applications chez les clients nécessitant
des contraintes locales sur les éléments inaccessible à l'approche DTD.
-->

<!-- chemins
tous les fichiers images, ai, png, mml, tex, etc. dans \etc
en relatif sous le fichier XML appelant.
-->

<!--formats
jpg : images bitmap (300 dpi) - mobipocket ne supporte pas png (!)
ai  : Adobe illustrator
mml : MathML
tex : LateX 2.09
-->

<!-- typo
reprise des conventions microsoft (word html) avec attributs style pour les aspects typo
&nbsp; à introduire par programme pour les conventions des signes typo
français, et à la main pour les séparations entre nombre et unités 

Pour le paragraphe, introduction de @indent="no" pour retirer l'indentation

page-start-break= reperage du debut de page physique pour la retroconversion
(utile pour poser les index). correspond à rp dans la DTD Hachette. 
@page-number correspond à un rendu du numéro de page (typiquement celui inscrit sur l'édition papier/pdf utilisée)
@facsimile correspond à un index vers la ressource de la page en question (typiquement chemin relatif vers un pdf/un tiff ... de la page en question.

-->

<!-- bloc elements

bl : blank line. Plus facile pour les romans que de faire des div

-->

<!-- PHONETIQUE
Exemple pour la phonetique : 
<ph lang="EN" alt="aille no you ouelle">I know you well</ph>
ou pour la sonorisation d'une formule de math.
La phrase de substitution pour le synthétiseur est encodée dans l'attribut
alt (qui est du PCDATA)

bind=introduction d'une liaison (bind en anglais)
ils <bind lang="FR" alt="zetaient>etaient</bind> bien vivants
-->

<!-- NOTE
Exemple pour la note : 
<note_entry><note_label idref="chap01-01">1</note_label>
<note id="chap01-01"><p>texte de la note</p></note></note_entry>

id et idref  généralement posés par programme.
-->

<!-- INDEX
-->

<!-- ***Hierarchy:section, div, page***-->
<!--

<titles> permet de structurer les titres. Les exergues et citations sont sans
doute à introduire en class sur <div> à moins que l'on ne choisisse
l'approche Hachette où c'est explicité.
REMARQUE : shortoc en attribut peut être pas efficace, car on ne peut plus
faire d'enrichissement sur le titre court pour les toc spécifiques.
Même remarque pour shornav (voir plus bas)

@imgTitleSrc sur title pour permettre production de book avec
des images en lieu et place du libellé du titre (bien sûr, il faudra
les produire....). PEUT ETRE INUTILE : on peut faire ça par programme

@shortNav sur <title> pour les titres courants electroniques. Il faut
peut être prévoir les titres courants pour le print
-->
<!-- definition lists
englobant : dlg (def list group)
dcd : data compound definition. A utiliser lorsqu'il y a plus d'un paragraphe
dd : data definition (cf HTML)
-->

<!-- bib
Element comparable à la TEI (bibl) pour identifier les biblio.
Chaque biblio commence par un ou plusieurs auteurs balisés par <author>
(un seul auteur par balise). Permettra de composer en smallcaps si les éditeurs
le veulent.
<date> si l'éditeur veut trier toutes les entrées biblio par date.

-->

<!-- prod_notes
Sert a noter, lors de la production, tous les problemes rencontres
ou remarques interessantes.
A saisir au format source : date  explications.
exemple
BPRO : 20.07.2008 traitement blablabla
-->
<!-- INDEX
Les index ne doivent etre nommes (@name) que si plusieurs index sont prevus dans
l'ouvrage. Dans ce cas mettre les noms dans la DTD appelante.
par ailleurs, #REQUIRED est parametre dans la DTD appelante, pour la mise au point
ou l'import de texte
-->

<!-- TABLEAUX
frame=filet de cadre, cols=nb de colonnes dans le tableau, rowsep= filet
horizontal bas (1=oui), colnum=numero de la colonne, colname=nom de la colonne,
colwidth=largeur de la colonne en cm, colsep=filet vertical droite (1=oui)
namest= nom de la colonne de debut de span, nameend= nom de la colonne de fin
de span, spanname= nom du span (1to3 pour namest=col1 et namend =col3 fin)
thead=tetiere, tfoot=pied de tableau, tbody=corps du tableau
row=ligne, rowsep=filet horizontal bas, entry=cellule du tableau, valign= alignement
vertical, align=alignement horizontal, rowsep=filet horizontal bas, morerows=
span vertical (2 spanne deux lignes, la courante et celle du dessous)            

12.2006 : inversion de spanspec et colspec pour compatibilite XMEtal (!!!)-->

<!-- conventions
@class pour typage semantique
@type pour typage typographique
@level pour attribut de niveau hierarchique
attribut %style% pour typage typo 
div pour baliser un bloc (regroupements de p, etc)
span pour baliser un inline
bl pour baliser une ligne blanche avec en classe le type de separation (generalement
rien, mais parfois triple_star, single_star....)

nommage :
image : 
- sequence sur 3 chiffres si pas de numérotation interne au livre :
fig_001.jpg. generalement 300 dpi
- sinon par chapitre : 
figure_01.02.jpg
photo_01.01.jpg
figure_x_01.01.jpg si figure non numérotée dans le flux.

Si on veut faire des index de photos, de schémas, etc, utiliser @class sur <figure>
uniquement. Ajouter attribut en fonction des besoins.

Les photos mentionnées plusieurs fois (donc appels multiples) ne sont pas dupliquées
physiquement, mais l'appel est doté d'un @duplicate="yes" ce qui permet de les
exclure d'un index des photos par exemple.

capture width et height dans le flux XML
Les images geometriques sont a refaire en vectoriel avec adobe illustrator.
Le png 300 dpi niv gris doit etre produit en parallele. Il 
a donc deux formule : sequence sur 3 chiffres : eqn_001.eps et eqn_001.png
Le png doit etre produit en parallele (il y a donc egalement
2 fichiers pour les formules).

L'eps issu du traitement mathtype a les proprietes suivantes : 
encapsulage : encodage math Type, mathML, Postscript TIFF 
(preview 300 dpi niv gris).
Encodage Tex en Latex_2.09 (cf attribut sur eqn)
alignement sur l'axe mathematique : @valign
formules et images dans sous repertoire \img
Les references d'equation (en general en bout de ligne) sont saisies
dans @ref.
On aura donc : 
<eqn src:"img\eqn_001.jpg" alt="d_S (\overrightarrow {TM} )/dt = 
\overrightarrow {v_S } (M) - \overrightarrow {v_S } (T)" width="587"
height="84" class="latex_2.09" valign="bottom" ref="10.5c"/>

La police utilisee est Euclid (reglage standard Math Type)
-->

<!-- IMG
@bloc="yes" pour les images qui doivent apparaitre sous forme de bloc
dans le flux de texte (eg descartes), c'est à dire au milieu d'une 
phrase. NE PAS UTILISER pour une image bloc. Dans ce cas, traiter
en <figure>.
De même ne pas traiter une image bloc par simple insertion dans un <p>

-->



