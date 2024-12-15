#!/bin/bash
set -euo pipefail
fdump="sratoolkit.3.1.1-mac-arm64/bin/fastq-dump"
sra=DRR006760.sra
fq1=DRR006760_1.fastq
fq2=DRR006760_2.fastq

${fdump} --split-files ${sra}
gzip ${fq1}
gzip ${fq2}
