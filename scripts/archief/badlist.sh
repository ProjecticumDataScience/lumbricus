
# Dit script vervangt de PERL  commando's die een  syntax error  geven.
# Om het te gebruiken, moet je  de unieke identificatie van je huidige chromosoom aanpassen
# Dit script  zoektt  alle trainingsgenen die nog steeds fouten aangeven, 
# zelfs nadat je stopCodonExcludedFromCDS goed hebt ingesteld. 
# Dit zijn genen die niet aan de normen voldoen, 
# zoals genen met een in-frame stopcodon, een splice site patroon dat niet gt-ag is, 
# of genen die syntactisch incorrect zijn (bijvoorbeeld exonen met een negatieve lengte). 




etraining --species=lumrube   bonafide.gb 2>&1 | grep "in sequence"  | sed -E 's/.*n sequence (\\S+):.*/\\1/'   | sort -u  >  pre.badst.list

grep -oE "in sequence.*(OX243811.1[1-9A-Za-z_0-]{1,})\w+"   pre.badst.list |  grep -oE "(OX243811.[1-9A-Za-z_0-]{1,})\w+"> bad.list
