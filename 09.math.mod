<?xml version="1.0" encoding="utf-8"?>

<!-- file:  09.math.mod
module of prostbook.dtd [DTDversion : v2.3]
(c) CeCILL bernard prost, adrien vieilleribiere, alain pierrot, henri couet
Cecill license URL : http://www.cecill.info/licences/Licence_CeCILL_V2-fr.html

update : bpro 2010.08.28
update : AV   2010.09.01
-->

<!-- mathMl -->


<!--ENTITY % MATHML.prefixed "INCLUDE"                                           >
<!ENTITY % MATHML.prefix "m"                                                   >
<!ENTITY % mathml PUBLIC "-//W3C//DTD MathML 2.0//EN" 
                         "http://www.w3.org/Math/DTD/mathml2/mathml2.dtd"      >

%mathml; -->



<!ELEMENT eqn     (m:math?, latex?, htmlformula?, eqnrendering*)          >
<!ATTLIST eqn     id-eqn     ID         #IMPLIED    
                  eqn-label  CDATA      #IMPLIED
                  display    (block)    #IMPLIED                               >
<!ELEMENT latex   (#PCDATA)                                                    >
<!ATTLIST latex   math-mode   (no)      #IMPLIED                               >



<!ELEMENT eqnrendering EMPTY                                                   >
<!ATTLIST eqnrendering id-eqnrendering       ID  #IMPLIED
                       refid-eqn          IDREF  #IMPLIED
                       device             CDATA  #IMPLIED
                    eqnrendering-type (svg|ps|eps|jpg|png|gif)  #REQUIRED
                    eqnrendering-src                 CDATA  #REQUIRED
                    shrink                        (no)   #IMPLIED
                    baseline-alignment-offset-px  CDATA  #IMPLIED
                    width-px                      CDATA  #IMPLIED
                    height-px                     CDATA  #IMPLIED
                    rendering-resolution-dpi      CDATA  #IMPLIED              >

<!ELEMENT htmlformula (#PCDATA|sub|sup)*                                 >


