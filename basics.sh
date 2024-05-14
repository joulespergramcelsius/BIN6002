# filter out hypothetical proteins
grep hypothetical dp-proteome.faa >hypo.faa

# filter out conserved proteins
grep '>' dp-proteome.faa| grep -v 'hypothetical'>conserved.faa
