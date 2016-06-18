<?xml version="1.0" encoding="utf-8"?>

<!-- file:  08.figure.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

update : bpro 2010.08.28 
update : AV   2010.09.01 
update : AV   2011.07.11
-->

<!--inline image-->
<!ELEMENT img     (imgrendering*)                                              >
<!ATTLIST img     id-img                       ID    #IMPLIED
                  alt                          CDATA #IMPLIED
                  src                          CDATA #REQUIRED
                  img-type      (svg|ps|eps|jpg|png|gif) #IMPLIED
                  baseline-alignment-offset-px CDATA #IMPLIED
                  width-px                     CDATA #IMPLIED
                  height-px                    CDATA #IMPLIED 
                  capture-resolution-dpi       CDATA #IMPLIED
                  clock-rotation               (90|180|270) #IMPLIED
                  display-block                (yes)        #IMPLIED     
                  class                        CDATA #IMPLIED>

<!ELEMENT imgrendering EMPTY                                                   >
<!ATTLIST imgrendering
                  device                       CDATA #IMPLIED   
                  id-imgrendering              ID     #IMPLIED
                  imgrendering-src             CDATA  #REQUIRED
                  imgrendering-type (svg|ps|eps|jpg|png|gif) #REQUIRED
                  baseline-alignment-offset-px CDATA #IMPLIED
                  width-px                     CDATA #IMPLIED
                  height-px                    CDATA #IMPLIED 
                  capture-resolution-dpi       CDATA #IMPLIED
                  clock-rotation               (90|180|270) #IMPLIED           >                       

<!--blocked image--> 
<!ELEMENT figure (pagestartbreak?, (img,captionblock?))                   >
<!-- (table|drawing|photo|map) -->
<!ATTLIST figure  class       CDATA  					#IMPLIED
                  id-figure   ID                        #IMPLIED               >

<!ELEMENT captionblock  (figurecaption, p*, source?, credit?)                  >
<!ATTLIST captionblock      captionblock-position (top|right|bottom|left) #IMPLIED  >

<!ELEMENT figurecaption (%inline;|label)*                                      >
<!ATTLIST figurecaption      shortfigurecaption CDATA #IMPLIED                 >

<!ELEMENT source        (%inline;|label)*                                      >
<!ELEMENT credit        (%inline;|label)*                                      >


