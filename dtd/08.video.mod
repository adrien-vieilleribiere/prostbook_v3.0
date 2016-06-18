<?xml version="1.0" encoding="utf-8"?>

<!-- file:  08.video.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

Created : AV 2011.07.11
-->


<!ELEMENT video    (%inline;)*                                                 >                  
<!ATTLIST video     id     ID    #IMPLIED
                  src    CDATA #REQUIRED
                  width  CDATA #IMPLIED
                  height CDATA #IMPLIED 
                  autoplay  (yes) #IMPLIED                                 
                  online-url CDATA #IMPLIED                                
                  alt CDATA #IMPLIED                                            >