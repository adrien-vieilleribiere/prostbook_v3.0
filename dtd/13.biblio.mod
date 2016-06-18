<?xml version="1.0" encoding="utf-8"?>

<!-- file: 13.biblio.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html
-->

<!--booktitle already defined in titlepage-->
<!ELEMENT bibentry (%typo;
                   |noteentry
                   |author
                   |booktitle
                   |journaltitle|articletitle
                   |biblscope|bibsource|link|eqn
	           |pagestartbreak)*                                      >
<!ATTLIST bibentry id-bibentry  ID #IMPLIED                                 
	  nolink (yes) #IMPLIED                                                >

<!ELEMENT author (%inline;
                 |authorfirstname
                 |authorlastname
                 |affiliation
                 |authorpicture)*                                              >
<!ATTLIST author hidden (yes)         #IMPLIED
                 class  (main_author) #IMPLIED                                 >
                 
<!ELEMENT authorfirstname (%typo;)*                                            >
<!ELEMENT authorlastname  (%typo;)*                                            >
<!ELEMENT affiliation     (%typo;)*                                            >
<!ELEMENT authorpicture   (img)                                                >

<!ELEMENT journaltitle    (%inline;)*                                          >
<!ELEMENT articletitle    (%inline;)*                                          >

<!ELEMENT biblscope   (#PCDATA)                                                >
<!ATTLIST biblscope   type (volume|number|page|year|src-document-url) #IMPLIED >
<!ELEMENT bibsource   (%typo;)*                                                >
