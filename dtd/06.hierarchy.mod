<?xml version="1.0" encoding="utf-8"?>

<!-- file:  06.hierarchy.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

update : bpro 2010.08.28 
update : AV   2010.09.01 
update : AV   2011.07.13 
-->

<!ELEMENT part     (prepage*,
                    titles, 
                    (%block;)*,  
                    (chapter)*,
                    (postpage*))                                               >
<!ATTLIST part      id-part     ID          #IMPLIED
                    class       CDATA       #IMPLIED                 
					cut  		(0|1) 		#IMPLIED   
					extract 	(no) 		#IMPLIED					   	  
					print-parity-start (odd|even) #IMPLIED                     >

<!ELEMENT uppart   (prepage*,
                    titles, 
                    (%block;)*, 
                    (part*), 
                    (postpage*))                                               >
                        
<!ATTLIST uppart    id-uppart   ID          #REQUIRED                                 
                    class       CDATA       #IMPLIED         
					cut  		(0|1) 		#IMPLIED   					
					extract 	(no) 		#IMPLIED						   
					print-parity-start (odd|even) #IMPLIED                     >

<!ELEMENT upuppart (prepage*, 
                    titles, 
                    (%block;)*, 
                    (uppart*),
                    (postpage*))                                               >
<!ATTLIST upuppart  id-upuppart  ID #REQUIRED                                 
                    class       CDATA       #IMPLIED                           
					extract 	(no) 		#IMPLIED						   
					print-parity-start (odd|even) #IMPLIED                     >


<!--chapter, section, page, div-->
<!ELEMENT chapter  (titles, (%block;)*,section*)                               >
<!ATTLIST chapter   id-chapter ID  #IMPLIED                                   
	                cut  (0|1) #IMPLIED   
	                class CDATA #IMPLIED                                   
					extract (no) #IMPLIED
					print-parity-start (odd|even) #IMPLIED                     
					>

<!ELEMENT section   (titles, (%block;)*,section*)                              >
<!ATTLIST section    id-section ID  #IMPLIED                                   
                     cut  (0|1) #IMPLIED
                     class CDATA #IMPLIED                                      
                     print-parity-start (odd|even) #IMPLIED                    >


<!-- prepage, postpage -->
<!ELEMENT prepage   (%block;)*                                                 >
<!ATTLIST prepage   id-prepage ID    #IMPLIED
                    shorttoc   CDATA #IMPLIED                                  
					displayncx (no) #IMPLIED
					displaytocmaker (no) #IMPLIED
					class CDATA #IMPLIED    
					extract (no) #IMPLIED								   
					print-parity-start (odd|even) #IMPLIED                     
					>
<!ELEMENT postpage  (%block;|section)*                                         >
<!ATTLIST postpage  id-postpage ID    #IMPLIED
                    shorttoc    CDATA #IMPLIED                                 
					displayncx (no) #IMPLIED
				    displaytocmaker (no) #IMPLIED
					class CDATA #IMPLIED      
					extract (no) #IMPLIED		                               
					print-parity-start (odd|even) #IMPLIED                     >



<!--titles-->
<!ELEMENT titles    (div*, title, div*)                                        >
<!ATTLIST titles    forced-align (left|center|right) #IMPLIED                  >                 

<!ELEMENT title      (%inline;|label)*                                         >
<!ATTLIST title      hidden             (yes)     #IMPLIED
                     id-title            ID       #IMPLIED 
                     shorttoc           CDATA    #IMPLIED
                     short-running-head  CDATA    #IMPLIED
                     background-img-src  CDATA    #IMPLIED                    
					 displayncx (no) #IMPLIED			
					 displayncxbelow (no) #IMPLIED	
					 displaytocmaker (no) #IMPLIED
					 class CDATA #IMPLIED >
					 
<!ELEMENT forcedpagebreak EMPTY                                                >					 
