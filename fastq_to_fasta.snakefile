# Other adapters - AGATCGGAAGAG
IDS, = glob_wildcards("raw/{id}.fastq")

rule all:
	input: 
		expand("processed_fa/{id}.fa", id=IDS)

rule trim_collapse:
    input:
        "raw/{id}.fastq"
    output:
        "processed_fa/{id}.fa"
    shell:
        "fastx_clipper -i {input} -a TGGAATTCTCGGGT -c -l 18 -Q33 | fastq_to_fasta -Q33 | fastx_collapser -o {output} -Q33"
