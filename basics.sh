# filter out hypothetical protein entries
grep hypothetical dp-proteome.faa >hypo-entries.txt

# filter out conserved protein entries
grep '>' dp-proteome.faa| grep -v 'hypothetical'>conserved-entries.txt

# sequence alignment
fasta36 -m 8CC test-target.faa test-reference.faa > test-output.txt
