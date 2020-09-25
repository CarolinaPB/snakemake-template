configfile: "config.yaml"

pipeline = "snakemake-template" # replace your pipeline's name


include: "rules/create_log_file.smk"

rule all:
    input:
        files_log

