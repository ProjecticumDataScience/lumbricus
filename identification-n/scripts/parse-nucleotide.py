# -*- coding: utf-8 -*-
"""
Created on Mon Dec 23 09:15:41 2024

@author: Mijn-PC
"""

import re
import pandas as pd

gff="gff.gff"
parsed="parsed.gff"
genome="genome.gff"


# remove #, removing leading whitespaces

with open(gff, 'r') as infile, open(parsed, 'w') as outfile:
	temp = infile.read().replace("#", "")    
	outfile.write(temp)
    
with open(parsed, 'r') as file:
    for line in file:        
        newline=line.lstrip()        
        with open ("out", "a") as  outf:
            outf.write(newline)
            outf.close() 
                
    
gene_coords = [] 
coding_seq=[]
  
content = open("out", 'r').read()
pattern_a = r'gene.*\s+(OX457036.*AUGUSTUS\sgene.*g\d+)'
matches_a = re.findall(pattern_a, content)
gene_coords.extend(matches_a)
pattern_b=r"coding sequence =.*[actg\s\]]{1,}"
matches_b=re.findall(pattern_b, content)
coding_seq.extend(matches_b)


print(gene_coords)
print(coding_seq)

print(gene_coords)
print(protein_seq)



# create dataframe with gene coordinates and ids gene

with open('df.txt', 'w+') as f:
    for items in gene_coords:
      f.write('%s\n' %items)  
   
print("File written successfully")

# read in df with gene coordiates en gen ids

file_path = "df.txt"
df2= pd.read_csv(file_path,sep='\t')
df2.head()


# start coordinate
df2.iloc[:,3]
# end coordiante
df2.iloc[:,4]

# set col names to dataframe

column_names=['chr','aug','feature','start', 'end', 'score', 'plusmin', 'col7', 'col8']
df2 =  pd.read_csv(file_path,sep='\t', names=column_names) 
df2.head()


#  save df to file 

df2.to_csv("pandas.df2", sep='\t', index=False)

#df2.reset_index(inplace=True)

# access per column header

#df2.loc[:,"chr"]

# feature
#df2.loc[:,"feature"]

# create new list with codingseq/protein seq 
df2['codingseq'] = coding_seq 

df2['codingseq']


outfile = open(genome, 'w')

# write file with gene coordinates as id, and gene seq, as multifasta file in a loop
# each row of loop conatains 1 gene

for index, row in df2.iterrows():
    #print( ">", "genomic ", row["chr"],":",row['start'],"-",row['end'], "\n", row['codingseq'])
    outfile.write(">"+"genomic "+row["chr"]+":"+str(row['start'])+"-"+str(row['end'])+"\n"+ row['codingseq'] + "\n" )

outfile.close()
    

