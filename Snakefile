configfile: "config.yaml"

pipeline = "snakemake-template" # replace your pipeline's name


include: "rules/create_file_log.smk"

rule all:
    input:
        files_log

