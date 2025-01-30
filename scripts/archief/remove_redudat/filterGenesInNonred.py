#  Dit script vervangt de Perl-commando binnen protocolredundantie (Protocol 6).
# "filterGenesIn.pl nonred.loci.lst bonafide.gb > bonafide.f.gb"
#  dat  enkel de laatste locus uit de bonafide.gb haalt. Het doel is om alle unieke loci uit de bonafide.gb te verzamelen.
#  Dit Perl command haalt alleen  laatste.
# Om alle unieke loci te krijgen, moeten we dit in een loop zetten 
# Fiels "bonafide.gb" , "nonred.loci.lst"  zouden moeten in zelfde map zitten, waar je dit script oproept


import re
origfilename ="bonafide.gb"
goodfilename ="nonred.loci.lst"
goodlist = {}
with open(goodfilename, 'r') as goodfile:
    for line in goodfile:
        goodlist[line.strip()] = 1
        with open(origfilename, 'r') as origfile:

            content = origfile.read().split('\n//\n')
            for gendaten in content:
                match = re.match(r'ˆLOCUS +(\S+) .*', gendaten)
                if match:
                    genname = match.group(1)
                    if genname in goodlist:
                        with open('bonafide.filtered.nonred.gb', 'a') as f2:
                            f2.write( gendaten+ '\n'+'//'+'\n')
                