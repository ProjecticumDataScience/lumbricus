
# usage:  python  get_uniprot.py

import requests

url = 'https://rest.uniprot.org/uniprotkb/stream?compressed=true&format=fasta&query=%28eisenia+fetida%29'
with requests.get(url, stream=True) as request:
    request.raise_for_status()
    with open('proteome.fasta.gz', 'wb') as f:
        for chunk in request.iter_content(chunk_size=2**20):
            f.write(chunk)            