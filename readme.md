
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="">
    <img src="">
  </a>

<h3 align="center">ab de novo genome annotation </h3>

  <p align="center">
    Workflow for processing of  genoomannotatie ab de novo .



<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#Positiv">Positiv control</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#Scripts">Contact</a></li>
    <li><a href="#Issues">Acknowledgments</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## About The Project

This project involves aligning transcriptome reads, training with the AUGUSTUS program, 
and analyzing the proteomes of Lumbricus terrestris and Rubellus.





<!-- GETTING STARTED -->
## Getting Started

File structure:

- 'scripts' contains scripts used to run the workflow.
    scripts are ordered by protocol.
- 'data' section includes all the files that have been processed during the workflow. 
This includes things like alignment outputs, models, and UniProt protein collections.
Data is ordered by protocol

-  The 'data_input ' section includes reference genomic and transctiptomic data. 

- 'results' contains folders with gene database for Lumbricus Terrestris Lumbricus Rubellus,
 webapp source code, proteomic analytics report
    
Tophat  is used for splice aware alignment.
Augustus &  GeneMark-ES/ET/EP+ ver 4.7 are used to build model ab de novo

<h4>  Protocols: </h4>
 
  <strong>Protocol1 <strong>  -includes alignment tranasctiptomic data and building model, based on rna-seq
  <strong>Protocol2.1  <strong>-includes building model bases on proteins
  <strong>Protocol2 <strong> -includes building genome database idenitfied gene strucures

  
  


### Prerequisites

required soft:

1. GeneMark-ES/ET/EP+ ver 4.72_lic *
requeires Perl configuration, path and dependenices
download from: https://exon.gatech.edu/GeneMark/license_download.cgi

2. TopHat, can be installed with conda

3. Bowtie2, can be installed with conda

4. GenomeThreader, can be installed with conda

5. Augustus can be installed with conda
6. Breaker can be installed with zip

7. Python3



### Positiv 
Positiv control
The positive control in this experiment is C. elegans. The testing model is developed from proteins.  
 
 
 <div align="center">
  <a href="https://wclumterr.netlify.app/">
    <img src="https://github.com/ProjecticumDataScience/lumbricus/blob/master/images/product-screenshot/pc.png">
  </a>

### Usage

To compare genome Lumbricus Terrestris and Lumbricus Rubellus you can enter genome coordiantes in the app:
 
 <div align="center">
  <a href="https://wclumterr.netlify.app/">
    <img src="https://github.com/ProjecticumDataScience/lumbricus/blob/master/images/product-screenshot/usage.png">
  </a>

<a href="https://genomewclumterr.netlify.app/"> app </a>

### Scripts

Scripts are ordered by protocol:


### Issues

 -Protocol2,  The 'startAlign.pl' script kill terminate the process if the memory usage goes over a certain limit. 
 If you run into this problem, try splitting the fasta file into two sections,
 or use the --pos option to limit the position.
- Protocol1 Bonafide error: "not unique identifiers", you can use scripts/protocol1/get_uniq.py
Every python script is runnable from bash, python get_uniq.py,
you should change the pattern to match the line after LOCUS in bonafide.gb.

-Protocol1 randomSplit.pl  assignes 0 genes to the test or trainingset
In this case you can use split -n ,
or debug  the script randomSplit.pl step by step and look for where the results are reset to zero

### Contributing

Contributions are what make the open source community such an amazing place to learn, inspire, and create. Any contributions you make are greatly appreciated.

If you have a suggestion that would make this better, please fork the repo and create a pull request. You can also simply open an issue with the tag "enhancement". Don't forget to give the project a star! Thanks again!

    Fork the Project
    Create your Feature Branch (git checkout -b feature/AmazingFeature)
    Commit your Changes (git commit -m 'Add some AmazingFeature')
    Push to the Branch (git push origin feature/AmazingFeature)
    Open a Pull Request
