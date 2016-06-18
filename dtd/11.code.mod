<?xml version="1.0" encoding="utf-8"?>
<!-- file: 11.code.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

update : bpro 2010.08.28 
vu     : AV   2010.09.01
update : AV   2011.05.10
update : AV   2012.02.22
-->


<!-- computer code . @code-language for automatic syntaxic color 
code-language to be managed as a list of value in a proofing application 
outside of xml --> 
<!ELEMENT code     (#PCDATA|br)*                                               > 
<!ELEMENT codeline     (#PCDATA)                                               > 
<!ATTLIST codeline class  CDATA #IMPLIED >
<!ELEMENT codeblock (codeblockcaption?,(codeline|code)*)                                    >
<!ATTLIST codeblock id-codeblock ID #IMPLIED 
          class  CDATA #IMPLIED >
<!ELEMENT codeblockcaption (%inline;|label)*                                        > 