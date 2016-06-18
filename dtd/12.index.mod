<?xml version="1.0" encoding="utf-8"?>

<!-- file:  12.index.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

update : bpro 2010.08.28 
update : AV   2010.09.01 
-->


<!-- markup for index creation : new books which don't have an index at
the end. -->

<!ELEMENT    indexmarker (indexkey)                                            >
<!ATTLIST    indexmarker id-indexmarker     ID    #IMPLIED
                         refid-indexname    IDREF #IMPLIED                     >

<!ELEMENT    indexmarkerend EMPTY                                              >
<!ATTLIST    indexmarkerend refid-indexmarker IDREF  #REQUIRED                 >
             

<!ELEMENT    indexkey (%inline;|subindexkey)*                                  >
<!ATTLIST    indexkey sortkey   CDATA    #IMPLIED                              >

<!ELEMENT    subindexkey (%inline;|subindexkey)*                               >


<!-- XML conversion of existing books -->

<!ELEMENT indexanchor  EMPTY                                                   >
<!ATTLIST indexanchor id-indexanchor   ID    #REQUIRED
                      refindex-name    (INDEX1|INDEX2|INDEX3
                                       |INDEX4|INDEX5|INDEX6) #IMPLIED
                      refid-indexentry IDREF #IMPLIED                          >

<!--block entry of index zone at book end-->
<!-- id-indexentry used fo link within index -->
<!ELEMENT indexentry  (%inline;|subindex)*                                     >
<!ATTLIST indexentry  indexname     (INDEX1|INDEX2|INDEX3
                                    |INDEX4|INDEX5|INDEX6)    #IMPLIED 
                      id-indexentry    ID    #IMPLIED
                      indexentry-sort  CDATA #IMPLIED                          >

<!ELEMENT subindex   (%inline;|subindex)*                                      >
