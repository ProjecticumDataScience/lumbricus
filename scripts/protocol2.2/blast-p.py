# -*- coding: utf-8 -*-
"""
Created on Sun Dec 22 12:48:30 2024

@author: Mijn-PC
"""


import os
cwd = os.getcwd()

print(cwd)
#  proteine

from Bio.Blast import NCBIWWW
from Bio.Blast import NCBIXML


genomic="blast/fraction1-proteins.fa"

sequence_data = open(genomic).read()
 
sequence_data
 
result_handle = NCBIWWW.qblast("blastp", "nr", sequence_data, hitlist_size=5, alignments=50)

result_handle


# result file name: blast.results.fraction2.xm


with open('reults.xml', 'w') as save_file: 
   blast_results = result_handle.read() 
   save_file.write(blast_results)
   


#  proteine

from Bio.Blast import NCBIWWW
help(NCBIWWW.qblast)

