# usage:   
# python get_uniq.py  infile.gb


import sys

import re 

file=sys.argv[1]
with open(file) as f: 
   
   data = f.read() 
     
pattern = '(OX457036.1) Lumbricus terrestris genome assembly, chromosome: ([1-9_-]+\w+)' 

result = re.sub( pattern, r'\1_\2' , data) 
file_object = open('bonafide.unique.gb', 'w') 
file_object.write(result) 
file_object.close(  ) 
f.close() 