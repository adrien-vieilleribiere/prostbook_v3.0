<?xml version="1.0" encoding="utf-8"?>

<!-- file:  05.block.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

update : bpro 2010.08.28 
update : AV   2011.07.13 
update : AV   2013.05.02 
-->


<!-- ***///5-LOW LEVEL ELEMENTS///*** -->
<!-- title is declared in 06.hierarchy-->

<!-- The checking DTD force the list of the allowed values of "class" but the capture DTD allows CDATA-->

<!ELEMENT div  (title? , (%block;)*)                                           >
<!ATTLIST div  class CDATA #IMPLIED
               id-div     ID     #IMPLIED
               border  (top|bottom|topbot|all|sides|none)   #IMPLIED
               align  (center|left|right) #IMPLIED    
               keep-with-next (yes) #IMPLIED 
               keep-with-previous (yes) #IMPLIED                          > 
               
<!ELEMENT p    (%inline;|label)*                                               >
<!ATTLIST p    class   CDATA                       #IMPLIED
               id-p    ID                          #IMPLIED
               indent  (no)                        #IMPLIED
               align   (center|left|right)         #IMPLIED             
               keep-with-next (yes)                #IMPLIED 
               keep-with-previous (yes)            #IMPLIED     
               orphans   CDATA                     #IMPLIED                    
               widows   CDATA                      #IMPLIED   
               hyphenate (no)                      #IMPLIED
               lang (%languages2letters;)          #IMPLIED
               >


<!--list-->
<!ELEMENT list (p?, item+)                                                     >
<!ATTLIST list     class   CDATA  #IMPLIED 
                   id-list ID     #IMPLIED 
                   type    (num|letter|greek|no_li|index|toc)  #IMPLIED        >
<!ELEMENT item     (p|list)*                                                   >

<!--bibliographical paragraph-->

<!ELEMENT bib (%inline;)*                                                      > 

<!--blank line-->
<!ELEMENT blankline EMPTY                                                      >
<!ATTLIST blankline type (single_star|triple_star) #IMPLIED                    >


<!--deflist and deflist group-->
<!ELEMENT deflist    (dlrow+)                                                  >
<!ELEMENT dlrow      (defterm, defdata?)                                       >
<!ATTLIST dlrow      class (header) #IMPLIED                                   >
<!ELEMENT defterm    (%inline;)*                                               >
<!ELEMENT defdata    (%inline;|list)*                                          >


<!--lines and lines group mainly for poetry stanza-->
<!ELEMENT linegroup  (l+)                                                      >
<!ATTLIST linegroup keep-with-next (yes) #IMPLIED 
                    keep-with-previous (yes) #IMPLIED                          >

<!ELEMENT l          (%inline;)*                                               >
<!ATTLIST l     	class CDATA  #IMPLIED 					   			      
                    keep-with-next (yes) #IMPLIED 
                    keep-with-previous (yes) #IMPLIED  
					id ID  						        #IMPLIED				>

<!ELEMENT blockmediadependant (%block;|%titlepageElements;)*                   > 
<!ATTLIST blockmediadependant print (yes) #IMPLIED 
                              printlarge (yes) #IMPLIED 
                              epub (yes) #IMPLIED
                              pdf (yes) #IMPLIED
                              mobipocket (yes) #IMPLIED
                              ipad (yes) #IMPLIED    
                              tei (yes)    #IMPLIED                            >
                               

<!ELEMENT vsp EMPTY                                                            >
<!ATTLIST vsp height CDATA     #REQUIRED                                       >

<!ELEMENT extract EMPTY                                                        >
<!ATTLIST extract type (start|end)     #REQUIRED                               >

