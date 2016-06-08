<?xml version="1.0" encoding="utf-8"?>

<!-- file:  07.table.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

update : bpro 2010.08.28 
update : AV   2010.09.01 
update : AV   2011.07.13 [Optionnal colwidth]
-->

<!-- CALS sub DTD
be careful with the weirdness of tfoot!-->
<!ELEMENT table         (tablecaption?,tgroup)                                 >
<!ATTLIST table
        frame           (top|bottom|topbot|all|sides|none) #IMPLIED
        colsep          (0|1)   #IMPLIED
        rowsep          (0|1)   #IMPLIED
        id-table        ID      #IMPLIED   
        class           CDATA   #IMPLIED  
 >

<!ELEMENT tgroup            (spanspec*,colspec*,thead?,tfoot?, tbody)          >
<!ATTLIST tgroup   cols     CDATA      #REQUIRED
                   rowsep   (0|1)      #IMPLIED                                >

<!ELEMENT colspec           EMPTY                                              >
<!ATTLIST colspec  colnum   CDATA      #REQUIRED
                   colname  NMTOKEN    #REQUIRED
                   colwidth CDATA      #IMPLIED
                   colsep   (0|1)      #IMPLIED                                >

<!ELEMENT spanspec          EMPTY                                              >
<!ATTLIST spanspec namest   NMTOKEN    #REQUIRED
                   nameend  NMTOKEN    #REQUIRED
                   spanname NMTOKEN    #REQUIRED                               >
                                                
<!ELEMENT thead             (row)+                                             >
<!ELEMENT tfoot             (row)+                                             >
<!ELEMENT tbody             (row)+                                             >

<!ELEMENT row               (entry)+                                           >
<!ATTLIST row      rowsep   (0|1)      #IMPLIED                                >
<!ELEMENT entry             (p|list|div)*                                      >
<!ATTLIST entry    spanname NMTOKEN    #IMPLIED 
                   valign   (top|bottom|middle) "top" 
                   align    (left|right|center|justify) "left"
                   colsep   (0|1)      #IMPLIED 
                   rowsep   (0|1)      #IMPLIED 
                   morerows CDATA      #IMPLIED
                   class CDATA         #IMPLIED                               >

<!ELEMENT tablecaption (%inline;|label)*                                      >
<!ATTLIST tablecaption      shorttablecaption CDATA #IMPLIED                  >