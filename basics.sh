# filter out hypothetical protein entries
grep hypothetical dp-proteome.faa >hypo.faa

# filter out conserved protein entries
grep '>' dp-proteome.faa| grep -v 'hypothetical'>conserved.faa

# sequence alignment
fasta36 -m 8CC seq/mgstm1.nt seq/gst.nlib > output.txt
