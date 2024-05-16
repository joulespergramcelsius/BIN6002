#!/usr/bin/perl

open my $input, '<', '../DATA/dp-proteome.faa' or die "Cannot open file: $!";
open my $output, '>', 'conserved-test.faa' or die "Cannot open output file: $!";
my $sequence = '';

while (my $line = <$input>) {
    if ($line =~ /^>.*hypothetical/) {
        if ($sequence) {
            print $output $sequence;
        }
        $sequence ='';
    }
    elsif ($line =~ /^>/) {
        if ($sequence) {
            print $output $sequence;
        }
        $sequence = $line;
    }
    elsif ($sequence) {
        $sequence .= $line;
    }
}

# Print the last sequence to the output file if any
if ($sequence) {
    print $output $sequence;
}

close $input;
close $output;
