
<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="">
    <img src="">
  </a>

<h3 align="center">ab de novo genoomannotatie </h3>

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

[![Product Name Screen Shot][product-screenshot]]() <br>
<br> [![Product Name Screen Shot][product-screenshot2]]()





<!-- GETTING STARTED -->
## Getting Started
File structure:

- 'scripts' contains scripts used to run the workflow.
    scripts are ordered by order of usage.
- 'data' contains data files used by the programs in the workflow.
    Data such as annotations, reference genome and index are here.
- 'data_input' is the folder for raw data files to be analyzed.
    Loose fastq.gz files are placed here and can be archived once finished.
- 'results' contains folders with all manipulated data.
    Programs output their temp files here as well.

Chopper is used for removing adapter sequences.
minimap2 is used to align input data to reference genome.
aligned .sam data is then filtered by FLAG value and converted to .bam files for Bambu.

### Installation