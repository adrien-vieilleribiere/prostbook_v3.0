<?xml version="1.0" encoding="UTF-8"?>
<!-- file:  03.toc.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html
-->


<!--for toc declaration if needed-->

<!ELEMENT floatingncx EMPTY >
<!ATTLIST floatingncx  shorttoc CDATA  #IMPLIED                           
                       displayncx (no) #IMPLIED         >
                                              
<!ELEMENT tocmaker EMPTY >
<!ATTLIST tocmaker  toctitle CDATA  #IMPLIED                           
                    maxdepth (any|1|2|3|4|5|6) #IMPLIED
					displayfront (no) #IMPLIED  
					displayback (no) #IMPLIED  
					minlineskepttogether (2|3|4|5|6|7|8|9|10) #IMPLIED
                    leader CDATA #IMPLIED                   >