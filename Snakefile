IDS, = glob_wildcards("seq_raw/{id}.fastq")

rule all:
	input: 
		expand("seq/{id}.fa", id=IDS)

rule trim_collapse:
    input:
        "seq_raw/{id}.fastq"
    output:
        "seq/{id}.fa"
    shell:
        "fastx_clipper -i {input} -a TGGAATTCTCGGGT -c -l 18 -Q33 | fastq_to_fasta -Q33 | fastx_collapser -o {output} -Q33"
