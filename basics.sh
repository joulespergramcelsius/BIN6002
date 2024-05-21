# filter out hypothetical protein entries
grep hypothetical dp-proteome.faa >hypo-entries.txt

# filter out conserved protein entries
grep '>' dp-proteome.faa| grep -v 'hypothetical'>conserved-entries.txt

# sequence alignment
fasta36 -m 8CC test-target.faa test-reference.faa > test-output.

head -n 1721 conserved.faa > conserved-1721.faa
grep -c ">" conserved-1721.faa
