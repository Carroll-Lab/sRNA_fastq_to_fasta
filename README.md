[![Snakemake](https://img.shields.io/badge/snakemake-≥3.5.2-brightgreen.svg?style=flat-square)](http://snakemake.bitbucket.org)

Snakefile for processing all fastq files in a directory to collapsed fasta format

*Setup*

1. Install [miniconda](http://conda.pydata.org/miniconda.html) with [bionconda channel] (https://bioconda.github.io/)
2. Create the following `conda` environment (called `srna_process` in this instance):

`conda create --name srna_process python=3.5 fastx-toolkit snakemake`

3. Activate the environment:

`source activate srna_process`

4. Deactivate when you're finished processing:

`source deactivate`

*Usage*

1. Place `Snakefile` in the project root directory (e.g. my_project)
2. Place fastq files in `/seq_raw` directory (e.g. my_project/seq_raw)
3. Ensure you fastq files have the extension `.fastq`
4. If your adapter sequence to trim is not `TGGAATTCTCGGGT`, change line 13 of `Snakefile` after the `-a` flag to reflect your adapter
5. Run snakemake from the project root directory where your `Snakefile` is located (e.g. my_project):

`snakemake`

6. Processed read files will be in the `/seq` directory (e.g. my_project/seq)
