<?xml version="1.0" encoding="utf-8"?>

<!-- file: 10.note.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

update : bpro 2010.08.28
vu     : AV   2010.09.01 
update : AV   2011.07.12
update : AV   2012.09.12

-->

<!-- default type is endpage-->

               
<!ELEMENT noteentry             (notecall?,note?)        >
<!ELEMENT notecall              (#PCDATA)                >
<!ATTLIST notecall refid-note   IDREF #IMPLIED           >

<!ELEMENT note (%block;)*                                >
			   
<!ATTLIST note id-note          ID    #IMPLIED 
			type (endpage|margin|here) #IMPLIED     
            sortkey CDATA #IMPLIED   	
			groupkey CDATA #IMPLIED   			>               			   
			   
<!--ATTLIST note id-note          ID    #IMPLIED 
               type (endpage|endchapter|endsection|margin|here) #IMPLIED       -->               
