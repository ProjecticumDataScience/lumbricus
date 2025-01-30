# usage from bash :   python traingenes.py  bonafide.gb

# Dit script vervangt de Perl-commando's die een bash syntaxisfout veroorzaken binnen protocolredundantie (Protocol 6).
#Dit script haalt de transcriptnamen
#van trainingsgenen uit bonafide.gb halen:
import sys
import re
import subprocess
# Read from the file 'bonafide.gb'

bonafide =sys.argv[1]
with open(bonafide, 'r') as file:
    content = file.read()
# Find all unique gene names
    gene_names = set(re.findall(r'/gene="(\S+)"', content))
# Writing unique gene names to a file
    with open('traingenes.lst', 'w') as f:
        print("creating trainings gene list:")
        for gene in sorted(gene_names):
            print(gene)
            f.write(f'"{gene}"\n')