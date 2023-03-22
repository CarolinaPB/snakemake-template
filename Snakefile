configfile: "config.yaml"

pipeline = "snakemake-template" # replace with your pipeline's name


include: "rules/create_file_log.smk"
    
if "OUTDIR" in config:
    workdir: config["OUTDIR"]

makedirs("logs_slurm")

rule all:
    input:
        files_log,
        'example.txt'

rule example:
    # input:
    #     "input_file.txt" # this rule doesn't need an input file
    output:
        'example.txt'
    message:
        'Rule {rule} processing'
    shell:
        'touch {output}'
