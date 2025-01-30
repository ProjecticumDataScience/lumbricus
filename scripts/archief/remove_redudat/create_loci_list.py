# Dit script vervangt de Perl-commando's die een bash syntaxisfout veroorzaken binnen protocolredundantie (Protocol 6).# 
# Dit script maakt een lijst met locionamen in plaats van gennamen.
# het parseert  overeenkomstige locionamen en gennamen uit bonafide.gb en slaat ze op in een bestand loci.lst.
# De linker invoer is een gennaam, gevolgd door een tabulator, de rechter invoer is de corresponderende
# locusnaam.
# loci.lst bevat nu alle loci in bonafide.gb. 
#
# usage: python create_loci_list.py. Je bonafide.gb zouden in zelfde map moeten zitten


import re
txInGb3 = {}
txLocus = ""
with open("bonafide.gb") as file:
    for line in file:
        if re.search(r'LOCUS\s+(\S+)\s', line):
            txLocus = re.search(r'LOCUS\s+(\S+)\s', line).group(1)
        elif re.search(r'/gene="(\S+)"', line):
            gene = re.search(r'/gene="(\S+)"', line).group(1)
    txInGb3[gene] = txLocus
    with open("loci.lst", "w") as output_file:
        for key in txInGb3.keys():
            output_file.write(f"{key}\t{txInGb3[key]}\n")