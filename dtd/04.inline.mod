<?xml version="1.0" encoding="utf-8"?>

<!-- file:  04.inline.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html
modif crado AV span/@lang : à revoir
modif AV: Add @facimile sur pagestartbreak
-->

<!-- common floating element-->

<!ELEMENT pagestartbreak EMPTY                                                 >
<!ATTLIST pagestartbreak  page-number CDATA #IMPLIED                          
		  facsimile CDATA #IMPLIED 											   >

<!--see 12.index.mod for indexanchor -->

<!-- production comments -->
<!ELEMENT prodcomment (#PCDATA)                                                >

<!ELEMENT i       (%inline;)*                                                  >
<!ELEMENT b       (%inline;)*                                                  >
<!ELEMENT normal  (%inline;)*                                                  >

<!ELEMENT sub      (#PCDATA)                                                   >
<!ELEMENT sup      (#PCDATA)                                                   >
<!ELEMENT sc       (#PCDATA)                                                   >
<!ELEMENT century  (#PCDATA)                                                   >

<!ELEMENT br EMPTY                                                             >

<!ELEMENT label (%typo;|img)*                                                  >

<!ELEMENT link (%inline;)*                                                     >
<!ATTLIST link  id-link           ID         #IMPLIED
                url               CDATA      #IMPLIED
                mailto            CDATA      #IMPLIED
                refid-part        IDREF      #IMPLIED
                refid-chapter     IDREF      #IMPLIED
                refid-section     IDREF      #IMPLIED
                refid-titlepage   IDREF      #IMPLIED
                refid-prepage     IDREF      #IMPLIED
                refid-postpage    IDREF      #IMPLIED
                refid-table       IDREF      #IMPLIED
                refid-figure      IDREF      #IMPLIED
                refid-eqn         IDREF      #IMPLIED
                refid-bibentry    IDREF      #IMPLIED
                refid-note        IDREF      #IMPLIED
                refid-indexanchor IDREF      #IMPLIED
                refid-codeblock   IDREF      #IMPLIED
			    refid-indexentry  IDREF      #IMPLIED
			    refid-link        IDREF      #IMPLIED    
			    class CDATA       #IMPLIED                                    >
   
<!ELEMENT span (%inline;)*                                                    >
<!ATTLIST span class CDATA                          #IMPLIED
               lang (%languages2letters;)           #IMPLIED                   
               hyphenate (no)                       #IMPLIED 
			   id ID  						        #IMPLIED			   >

<!ELEMENT anchor EMPTY                                                        >
<!ATTLIST anchor id-anchor ID #REQUIRED                                       >

<!ELEMENT ref (%typo;)*                                                       >

<!ATTLIST ref   refid   IDREF       #REQUIRED                                   
                class   CDATA       #IMPLIED                                  >


<!ELEMENT hsp EMPTY                                                           >
<!ATTLIST hsp width CDATA     #REQUIRED                                       >



<!--*** ///2-PHONETIC/// (for speech synthethis ***-->
<!-- use <ph lang="EN"> to prononce its content in english -->
<!-- use <ph lang="FR" alt="maïlse dévice">Mile Davis</ph> 
     to prononce (the alt content) in french -->
<!ELEMENT ph  (%inline;)*                                                      >
<!ATTLIST ph  lang (%languages2letters;)  #REQUIRED
              alt  CDATA        #IMPLIED                                       >
               
<!-- ///3-/// PRINT-ONLY or ELECTRONIC-ONLY/// markup for dealing with 
different medias /// 
To DISCUSS$$-->

<!ELEMENT inlinemediadependant (%inline;)*                                      > 
<!ATTLIST inlinemediadependant print (yes) #IMPLIED 
                               printlarge (yes) #IMPLIED 
                               epub (yes) #IMPLIED
                               pdf (yes) #IMPLIED
                               mobipocket (yes) #IMPLIED
                               ipad (yes) #IMPLIED    
                               tei (yes)    #IMPLIED                            >




