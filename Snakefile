configfile: "config.yaml"

pipeline = "snakemake-template" # replace with your pipeline's name


include: "rules/create_log_file.smk"

rule all:
    input:
        files_log

rule example:
    input:
        config["file1"]
    output:
        'example.txt'
    message:
        'Rule {rule} processing'
    shell:
        'touch {output}'