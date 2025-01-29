# This script extracts the  proteomes: c.elegans, eisenia fetida, lumbricus terrestris from uniprot ( runtime 3-5 min)
# usage:  python  get_uniprot.py
# runtime : 3-5min
            
import requests


urls=['https://rest.uniprot.org/uniprotkb/stream?compressed=true&format=fasta&query=%28eisenia+fetida%29', 'https://rest.uniprot.org/uniprotkb/stream?compressed=true&format=fasta&query=%28c+elegans%29',
'https://rest.uniprot.org/uniprotkb/stream?compressed=true&format=fasta&query=%28lumbricus%29']


for url in urls:
   

    with requests.get(url, stream=True) as request:
        request.raise_for_status()
        with open('proteomes.fasta.gz', 'ab') as f:
            for chunk in request.iter_content(chunk_size=2**20):
                f.write(chunk)            
                