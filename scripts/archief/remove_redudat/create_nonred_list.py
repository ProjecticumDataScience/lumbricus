# Dit script vervangt de Perl-commando's die een bash syntaxisfout veroorzaken binnen protocolredundantie (Protocol 6).# 
#dit script zoekt  de loci die corresponderen met
# genen in nonred.lst en slaat ze op in nonred.loci.lst


# Daarvoor is er een stap genomen die een bestand nonred.lst aanmaakt.
# Dit bestand moet in dezelfde map staan als waarin je dit script uitvoert
# usage python create_nonred_list.py

import subprocess
with open('nonred.lst', 'r') as f:
    patterns = f.read().splitlines()
    with open('loci.lst', 'r') as f:
        loci = f.read().splitlines()
        matched_loci = [locus.split('\t')[1] for locus in loci if any(pattern in locus for pattern in patterns)]
        with open('nonred.loci.lst', 'w') as f:
            f.write('\n'.join(matched_loci))
