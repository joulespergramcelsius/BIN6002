#!/usr/bin/perl

#glsearch36 -m 5 test-target.faa test-reference.faa > test5.txt

open my $input, '<', 'test5.txt' or die "Cannot open file: $!";
open my $output, '>', 'parse-result.txt' or die "Cannot open output file: $!";
my $sequence = '';
my $start = 0;
my $target = "";
my $reference = "";
my $ins = 8; # number of dashes that we are looking for

while (my $line = <$input>) {
    if ($line =~ /^>>>.*/){ #write target protein
        $target = $line;
        print $output "\n$line";

    }
    elsif ($line =~ /\(\d*-\d*:(\d*)-\d*\)$/){ #look for the start:end position of reference protein
        $start = $1+0;
        #print "\n$start";
    }
    elsif ($line =~ /^>>.*\)$/) { #>>complete name (## aa) of reference protein
        
        if ($sequence) {
            print $output "\n$sequence"; #write previous sequence
            #print "\n$sequence";
            if ($sequence =~ /(-{$ins,})/){
                my $match = $1;
                my $position = index($sequence, $match);
                my $total = $start+$position;
                print $output "\nMatch found: '$match' at position $total\n";
            }
        }
        
        $sequence = "";
        print $output "\n$line"; # write the header
    }
    elsif ($line =~ /^(>)(\b)(\S*)/){ #>name 1-100:-------: the thing that marks the start of alignment
        if ($3){
            $reference = $3;
        }
        
        #print "reference: $reference\n";
        if ($sequence) {
            print $output "\n$sequence"; #write previous sequence
            #print "\n$sequence";
            if ($sequence =~ /(-{$ins,})/){
                my $match = $1;
                my $position = index($sequence, $match);
                my $total = $start+$position;
                print $output "\nMatch found: '$match' at position $total\n";
                
            }
        }
        $sequence = "";
    }
    elsif ($reference){
        if ($line =~/^($reference)(\s*)(.*)/){ #filters out the lines of the reference protein, not the target protein
            
            $sequence .= $3;
            #print "\nstart $3"
        }
    }
}

# Print the last sequence to the output file if any
if ($sequence) {
    print $output "\n$sequence"; #write previous sequence
    if ($sequence =~ /(-{$ins,})/){
        my $match = $1;
        my $position = index($sequence, $match);
        my $total = $start+$position;
        print $output "\nMatch found: '$match' at position $total\n";
                
    }
}

close $input;
close $output;
