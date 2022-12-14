#!/usr/bin/env python
# -*- coding: utf-8 -*-

#to run code usage is: ./gather_contigs.py input.fasta numbers.tsv output.fasta

import sys
from Bio import SeqIO

fasta_file = sys.argv[1]  # Input fasta file
number_file = sys.argv[2] # Input interesting numbers file, one per line
result_file = sys.argv[3] # Output fasta file

wanted = set()
with open(number_file) as f:
    for line in f:
        line = line.strip()
        if line != "":
            wanted.add(line)
fasta_sequences = SeqIO.parse(open(fasta_file),'fasta')
end = False
with open(result_file, "w") as f:
    for seq in fasta_sequences:
        if seq.id in wanted:
            SeqIO.write([seq], f, "fasta")
