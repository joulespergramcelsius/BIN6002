# match headers with items in the library
$line =~ /^>>.*\)$/

#>Styg.i    1- 174:-------------------------------------------------:
$line =~ /^(>)(\b\w*\b)/
$name = $2;
print $name

#DIPPA_                               MKTELLIQMDGLQRELEPTAQVFVLGASNI
$line =~ /(\w*)(\w*)/

#Styg.i TIFLDELDSIMSHRGGSESGSGDEHEGSRRMKTELLIQMDGLARTDD---LVFVLAASNI
elsif ($line =~ /^(>)(\b\S*\b)/){
        $name = $2;
        print "$name\n";