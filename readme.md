
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
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
    <li><a href="#contributing">Contributing</a></li>
    <li><a href="#contact">Contact</a></li>
    <li><a href="#acknowledgments">Acknowledgments</a></li>
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
  <ol>  
    <li>Protocol1  -includes alignment tranasctiptomic data and building model, based on rna-seq</li>
    <li>Protocol2.1 -includes building model bases on proteins</li>
    <li>Protocol2 -includes building genome database idenitfied gene strucures</li>
  </ol>
  
  

### Installation Instruction

required soft:

1. GeneMark-ES/ET/EP+ ver 4.72_lic *
requeires Perl configuration, path and dependenices
download from: https://exon.gatech.edu/GeneMark/license_download.cgi

2. TopHat, can be installed with conda

3. Bowtie2, can be installed with conda

4. GenomeThreader, can be installed with conda

5. Augustus can be installed with conda
6. Breaker can be installed with zip

### Positiv control

 The positive control used is C. elegans. The test model is created using proteins from it. 
 
 
 <div align="center">
  <a href="">
    <img src="https://github.com/ProjecticumDataScience/lumbricus/blob/master/images/product-screenshot/pc.png">
  </a>
