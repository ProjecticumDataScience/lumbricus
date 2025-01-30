#  Dit script vervangt de Perl-commando binnen protocolredundantie (Protocol 6).
# "filterGenesIn.pl nonred.loci.lst bonafide.gb > bonafide.f.gb"
#  dat  enkel de laatste locus uit de bonafide.gb haalt. Het doel is om alle unieke loci uit de bonafide.gb te verzamelen.
#  Dit Perl command haalt alleen  laatste.
# Om alle unieke loci te krijgen, moeten we dit in een loop zetten 

# usage from bash:  python filterGenesInNonred.py  bonafide.gb  nonred.loci.lst



import re
import sys


#bonafide.gb
origfilename =sys.argv[1]

#nonred.loci.lst
goodfilename =sys.argv[2]



goodlist = {}
with open(goodfilename, 'r') as goodfile:
    for line in goodfile:
        goodlist[line.strip()] = 1

with open(origfilename, 'r') as origfile:
    content = origfile.read().split('\n//\n')
    for gendaten in content:
        match = re.match(r'^LOCUS +(\S+) .*', gendaten)
        if match:
            genname = match.group(1)
            if genname in goodlist:
                print(gendaten)
                with open('bonafide.f.nonred.gb', 'a') as f2:
                    f2.write( '//'+'\n'+gendaten+ '\n')
           
          
                
