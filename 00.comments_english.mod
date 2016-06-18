<?xml version="1.0" encoding="utf-8"?>
<!-- DTD is modular.

Each module has a naming convention starting with a 2 digit number, a dot and a significant word 
like table, figure, video, etc.

Philosophy : tags have been chosen into the following schemas : 
HTML: span, div, p,img...
CALS: table and internal cals tags
TEI: linegroup, l...
-->
<!--***********************************************************************************************************-->
                                       <!-- **** prostbook_v3.0.dtd : Calling DTD ****-->

<!-- <prodnotes> is an informal element (p and list mainly) for history of data capture -->

<!-- namespaces declared as attributes of <prostbook> : 
:ox onix 
:ns (usefull for some low level editors)
:m mathML
:dc dublin core

bookid: book identifier 
collectionid:   collection identifier (for css specialisations)
-->

                                       <!-- ** parameter ENTITIES**-->
                                       
<!--  MATHML used for math : call of standard auxiliary mathML files -->

<!-- Language : precise format (Language-Region) is advisable 
                lowercase 2 digit (ISO 639-1) are kept for compatibility reasons.
--> 



<!-- typo = typographic tags, mainly taken out of HTML convention
sc= small caps
century = to tag centuries in roman. Use it to precise a specific rendering for the centuries. -->

<!-- float :
pagestartbreak = paper source book page break (quotability)
floating ncx = to be able to add an entry in the epub2 NCX outside the main structural elements (not much used)-->

<!-- ENTITY % inline : see 04.inline.mod and 08 to 13.xxx.mod
prodcomment : for inline production comment (not much used)
indexmarker : start of an index marker
indexmarkerend : the end of an index marker (when the index span through a string. See 12.index.mod

span : an inline all purpose container (as in HTML). To use with caution

ph = to replace a string in a foreign language by a phonetical string in the current language.
Designed only for accessibility

hsp = horizontal space. Enables tagging of a variable space at the beginning of a verse ; 
partly deprecated since we now get rid of trailing space in verse

inlinemediadependant = to include a specific inline behavior depending of a publishing media
noteentry = footnotes are keyboarding at the calling place (for Ligaran, a note is a kind of structured parenthesis)

eqn : equation (see 09.math.prod)
code = tagging computer code (see 11.code.mod)

bibentry = inline entry for a bibliographical citation (see 13.biblio.mod)
-->

<!-- ENTITY % block : see mainly 05.block.mod
div, p as used in HTML

list : list structure (introductory p, followed by items)

deflist = dl in HTML

linegroup = group of verse (the tag comes from TEI)

table : CALS (see 07.table.mod)

codeblock = to tag a bloc of code lines
bib = block bibliographical entry

blockmediadependant =  to include a specific block behavior depending of a publishing media
forcedpagebreak = to force at the publishing level, a page break

source : to quote the source, for example within a captionblock of a figure
vsp = vertical space
extract = to tag an abstract
tocmaker = to specify the place where the toc (for printed books only) has to be generated 
when transforming the XML source
-->

<!-- ENTITY % titlepageElements 
tags deprecated
only booktitle is used-->

<!-- book hierarchy (see 06.hierarchy.mod)

books structured in 3 main blocks, within container prostbook 
front
body
back -->

<!-- front is a mix of titlepage, prepage, blockmediadependant. In fact should be :
one titlepage
some prepage (page before the body structure) : inscription and/or dedication, copyright

titlepage has attributes which could be useful 
- shortoc if a smaller name for the book title is neede
displayncx="no" to have no "titlepage" mention in the ncx
displaytocmaker="no" if we don't want the "titlepage" mention in the printed toc

Nota : explicit element within titlepage (booktitle, booksubtitle) seldom used -->

<!-- body is usually structured as : 
some prepages, when semantically attached to the body
chapters (which are the most important structure of a book, and should be always there
postpages

for books which have structures above the chapter structure, choose the proper level 
- one level above : part / chapters (this is the most common case)
- two level above : puppart / part / chapter
- three level above : pupuppart / uppart / part / chapter-->

<!-- back has only postpage -->

<!--***********************************************************************************************************-->
                                       <!-- **** 01.entities_characters.mod ****-->
<!-- mainly declaration of thinsp (not much used anyway) and nbsp (non breakable space) -->


<!--***********************************************************************************************************-->
                                       <!-- **** 02.metadata.mod ****-->
                                       
<!-- All metadata are stored in a <meta> element though attributer pertaining to the 2 namespace :ox and :dc -->

<!-- every element and attribute is self explanation
For Roles, we add a string to the onix value in order to be explicit:
01-Publisher, for example, instead of the sole 01 used in onix-->

<!--***********************************************************************************************************-->
                                      <!-- **** 03.toc.mod ****-->
 <!-- 
 floatingncx: to be able to add an entry in the epub2 NCX outside the main structural elements (not much used)

tocmaker enables to specify where the automatic printed table of content should appear. 
Its attributes manage the semantic of the automatic computation:  
- toctitle : to give a specific title to the printed toc
- maxdepth : to choose the depth of the toc
- displayfront or back="no" to get rid of the front and back toc entries
- minlineskepttogether : to enforce the number of lines that should display together (target : to avoid
one single toc line/entry at the top of a toc page, when printed
-->   
<!--***********************************************************************************************************-->
                                      <!-- **** 04.inline.mod ****-->
                                      
<!-- 
label : to tag label mainly in titles (chapter titles for example. When we have something like
<title><label>Chapter 10</label>The story of a marvellous cat</title>

link can be finely typed, refering to an existing id.refid-chapter, for example refer to an id-chapter, and
this relationship can be checked with Mybookforge

span : mainly used to tag the language of the string.
Attribute hyphenate="no" to avoid a wrong hyphenation if there is no hyphenation directory for the language of
the span

-->
<!--***********************************************************************************************************-->
                                      <!-- **** 05.block.mod ****-->
                                      
 <!-- 
div : should use class from the allowedXmlClasses document 
The basic idea is to have a list of allowed attribute, NOT declared within the DTD, since it changes often
the allowedXmlClasses.xml document is self explanatory (with <documentation> tags)

p attributes : 
- keep-with-next or keep-with-previous for printing only
- orphans or widows, specify the number of lines to keep together as orphans or widows

blankline attribute type to have a single star or a triple stard as output

deflist = definition list. it's a 2 column table : 
- 1rst column = defterm
- 2nd column = defdata

dlrow class="header" inables header

lignegroup (poetry) attributes : 
- keep-with-next="yes", to force the entire group to be keeped with the following block (other linegroup, or p)
- keep-with-previous="y", to force the entire group to be keeped with the privious block 

extract: element to spot the start (or the end) of the extract of the book, deprecated because not precise enough.
-->    

<!--***********************************************************************************************************-->
                                      <!-- **** 06.hierarchy.mod ****-->
<!-- 
Usage of attribute : 
- print-parity-start="odd" (or "even") : to force the starting of the structure (part, 
uppart, upupart, prepage, postpage) on a left page (even) or right page (odd).
- cut="1" (or "0") : to force or not the page break, according to default behavior of the transformation engine.

prepage and postpage attributes have the following attributes 
- shorttoc if you need a shorter entry in tables of content
- displayncx="no" to avoid the title of being taken for the navigational toc
- displaytockmaker="no" to avoid a structural element (with title) of being taken for the toc generated with tockmaker
- extract="no" to get rid of a structural element (prepage ...) in an abstract

title attributes : 
- short-running-head, if you want a short running head instead of the complete title
- background-img-src, if you need a background image for the title
- displayncxbelow="no" to inhibit the display of toc elements to all the descendants

forcedpagebreak : to force a page break 
-->

<!--***********************************************************************************************************-->
                                      <!-- **** 07.table.mod ****-->
 
<!--  Classical CALS table structure -->


<!--***********************************************************************************************************-->
                                      <!-- **** 08.figure.mod ****-->
                                      
 <!-- img attributes. Most useful : 
 clock-rotation="90/180/270"
 display-block="yes" when you need an image within the text to be rendered as a centered image, with no
 indent on the following text
 
 captionblock has a figurecaption (compulsory) which should be short enough (think at a figure TOC at the end
 of the book. Following figurecaption, is p* to have crowded caption....
 
 captionblock attribute : 
 captionblock-position ="top" (right, left, bottom) to render the caption at the proper place. 
  -->

<!--***********************************************************************************************************-->
                                      <!-- **** 09.math.mod ****-->
 <!--                                     
 Math ML essentially
 
 eqn is a container of math formula. You can have :
 - pure mathml
 - latex code latex
 - htmlformula : formule exprimee en pur HTML (ie texte + exposant + indice)
 - eqnrendering pour associer une image de la formule (saisie en image, ou calculee par transformation)
                                    
 -->   
 <!--***********************************************************************************************************-->
                                      <!-- **** 10.note.mod ****-->
<!-- 
note attribute :
- id-note : to reference a note which is called many times in the document thru the refid-note attribute of notecall

WARNING : note is declared %block; but if possible, use only p and list
-->
 <!--***********************************************************************************************************-->
                                      <!-- **** 11.code.mod ****-->
                                      
 <!--                                     
code : to tag only inline code
other case, just use codeblock, with codeline
-->
 <!--***********************************************************************************************************-->
                                      <!-- **** 12.index.mod ****-->
<!-- not used for common epub. Publishers like better to list the index entries, without any link -->  

 <!--***********************************************************************************************************-->
                                      <!-- **** 13.biblio.mod ****-->
 
 <!-- bibentry to tag a bibliogrphic entry (inline text mode)
All elements are self explained -->

 