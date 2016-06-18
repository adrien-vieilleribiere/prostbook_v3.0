<?xml version="1.0" encoding="utf-8"?>

<!-- file:  02.metadata.mod
module of prostbook.dtd [DTDversion : v3.0]
(c) CeCILL bernard prost, adrien vieilleribiere
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

created :		 AV   2014.03.03
update : 2016.14.11 : add @lt on ox:CoverImageLink
-->

<!--Mainly DublinCore + some Onix features. Should be compatible with both metadata languages -->


<!ELEMENT meta (dc:title, 
                ox:TitleOfSeries?, 
                dc:creator, 
                dc:subject*, 
                dc:description*, 
                ox:SubjectHeadingText*,
                dc:publisher, 
                ox:CountryOfPublication?,
                dc:contributor?, 
                dc:date*,
                dc:identifier?,
                dc:source*, 
                dc:language, 
                dc:relation*,
                dc:rights*,
                ox:CoverImageLink?,
				ox:EditionVersionNumber?	)  			                       >
<!ATTLIST meta 	xmlns:dc CDATA "http://purl.org/dc/elements/1.1/"
				xmlns:ox CDATA "http://www.editeur.org/onix/2.1/reference/"
 				xmlns    CDATA "http://ligaran.com/dtd/"                       >


<!ELEMENT dc:title     (ox:TitleText,ox:SubTitle?,ox:OriginalTitle?)           >
<!ATTLIST dc:title  short CDATA #IMPLIED
                    extended CDATA #IMPLIED 
                    file-as CDATA #IMPLIED                                     >
<!ELEMENT ox:TitleText (#PCDATA)                                               >
<!ELEMENT ox:SubTitle  (#PCDATA)                                               >
<!ELEMENT ox:OriginalTitle  (#PCDATA)                                          > <!-- Used for the title on the language of its original publication -->
<!ATTLIST dc:OriginalTitle language (%languages;)    #IMPLIED                  >

<!ELEMENT ox:TitleOfSeries (#PCDATA)                                           >

<!ELEMENT dc:creator (#PCDATA)                                                 >
<!ATTLIST dc:creator role CDATA  #IMPLIED
                     file-as CDATA  #IMPLIED                              	   >

<!-- text informations : put them inside the tag , 
@code corresponds to the identifier of the used @scheme 
Note for rng converstion  : @code => @scheme
--> 
<!ELEMENT dc:subject (#PCDATA)                                                 >
<!ATTLIST dc:subject scheme (LIGARAN|CLIL1|CLIL2|BIC2|BISAC) #IMPLIED 
                     code   CDATA                            #IMPLIED          >

<!ELEMENT dc:description (p)                                                   >
<!ATTLIST dc:description language (%languages;)    #IMPLIED
	                     ox:TextType  (abstract
	                                  |table_of_content
	                                  |excerpt
	                                  |biographical_note)  #REQUIRED           >
	                                  
<!-- For keyWords in different languages -->
<!ELEMENT ox:SubjectHeadingText (#PCDATA)                                      >
<!ATTLIST ox:SubjectHeadingText language     (%languages;)    #IMPLIED >	                                  

<!ELEMENT dc:publisher (ox:Publisher+)                                         >
<!ELEMENT ox:Publisher (#PCDATA)                                               >
<!ATTLIST ox:Publisher PublishingRole (01-Publisher
                                      |02-Co-publisher 
                                      |03-Sponsor 
                                      |04-Pub-original-lang.) #REQUIRED                                                            >
                                      
<!ELEMENT ox:CountryOfPublication EMPTY                                        >
<!ATTLIST ox:CountryOfPublication  permission (allowed|forbidden) #REQUIRED   
                                   country  (ar|au|at|be|bz|bo|br|bg|ca|cl|co|cr|cy|cz|dk|do|ec|sv|ee|fi|
                                    fr|de|gr|gt|gy|hn|hu|ie|it|jp|lv|lt|lu|mt|mx|nl|nz|ni|no|pa|py|pe|pl|
                                    pt|ro|sk|si|es|sr|se|ch|gb|us|uy|ve) #REQUIRED                            >

<!ELEMENT dc:contributor (ox:Contributor+)                                     >
<!ELEMENT ox:Contributor (ox:NamesBeforeKey?, ox:KeyNames, 
                          ox:ContributorDescription*)                          >
<!ATTLIST ox:Contributor  ContributorRole (A01-Author
                                          |A12-Illustrated-by
                                          |B06-Translator
                                          |A13-Photographs-by
                                          |A15-Preface-by
                                          |A36-Cover-designer
										  |B01-Scientific-editor
                                          |B01-General-editor 
                                          |D02-Director
                                          |Z99-Other )        #REQUIRED   
                           file-as CDATA  #IMPLIED                             >


<!ELEMENT ox:NamesBeforeKey          (#PCDATA)                                 >
<!ELEMENT ox:KeyNames                (#PCDATA)                                 >
<!ELEMENT ox:ContributorDescription  (#PCDATA)                                 >
<!ATTLIST ox:ContributorDescription language     (%languages;)    #IMPLIED >
<!-- In rng : force at most one ox:ContributorDescription by language -->


<!ELEMENT dc:date (#PCDATA)                                                    >
<!ATTLIST dc:date id CDATA  #IMPLIED										   >
<!-- id used : firstPaperEdition|usedPaperEdition|firstNumericalEdition
     Without id : 
       -  date of the PO for production
       -  date of the master validation for publication
-->

<!ELEMENT dc:identifier        (ox:ProductIdentifier+)                         >
<!ELEMENT ox:ProductIdentifier (#PCDATA)                                       >
<!ATTLIST ox:ProductIdentifier ProductIDType  (01-publisher_number
                                              |03-EAN13
                                              |15-ISBN)  #REQUIRED             >

<!ELEMENT dc:source (#PCDATA)                                                  >
<!ATTLIST dc:source from CDATA #IMPLIED 
                    fromId CDATA #IMPLIED                                      >

<!ELEMENT dc:language EMPTY                                                    >
<!ATTLIST dc:language language (%languages;)   #IMPLIED                          >


<!ELEMENT dc:relation (ox:RelatedProduct+)                                     >
                        
<!ELEMENT ox:RelatedProduct    EMPTY                                           > 
<!ATTLIST ox:RelatedProduct    
                        href CDATA #REQUIRED
                        from CDATA #IMPLIED
                        rel (marc21xml-record|mods-record|onix-record|xml-signature|xmp-record) #IMPLIED                   >       
                        
<!ELEMENT dc:rights (#PCDATA | ox:CopyrightYear | ox:CopyrightOwner)*          >
<!ELEMENT ox:CopyrightYear  (#PCDATA)                                          >
<!ELEMENT ox:CopyrightOwner (#PCDATA)                                          >

<!ELEMENT ox:CoverImageLink    EMPTY                                           >
<!ATTLIST ox:CoverImageLink    	class  (cover)          #IMPLIED
								alt    CDATA          	#IMPLIED
                       MediaFileLink   CDATA           #REQUIRED               >                        

<!ELEMENT ox:EditionVersionNumber (#PCDATA)                                    >
<!ATTLIST ox:EditionVersionNumber type (paper|electronic)   #IMPLIED           >


