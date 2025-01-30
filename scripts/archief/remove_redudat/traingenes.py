
# Dit script vervangt de Perl-commando's die een bash syntaxisfout veroorzaken binnen protocolredundantie (Protocol 6).

import re
import subprocess
# Read from the file 'bonafide.gb'
with open('bonafide.gb', 'r') as file:
content = file.read()
# Find all unique gene names
gene_names = set(re.findall(r'/gene="(\S+)"', content))
# Writing unique gene names to a file
with open('traingenes.lst', 'w') as f:
for gene in sorted(gene_names):
f.write(f'"{gene}"\n')