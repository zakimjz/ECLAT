#!/usr/bin/perl
$DIR="/home/zaki/dmine/db";
$alg="\.\./eclat";

$db="$DIR/chess";
$opts = "-d -l -e 1";

@sup = (0.7, 0.6, 0.5, 0.4, 0.3);

for $k (@sup){
    print "$alg -i $db -s $k $opts\n";
    `$alg -i $db -s $k $opts`;
}

$db="$DIR/connect";
@sup = (0.95, 0.9, 0.8, 0.7, 0.6, 0.5);
for $k (@sup){
    print "$alg -i $db -s $k $opts\n";
    `$alg -i $db -s $k $opts`;
}

$db="$DIR/mushroom";
@sup = (0.2, 0.1, 0.08, 0.06, 0.04, 0.02);
for $k (@sup){
    print "$alg -i $db -s $k $opts\n";
    `$alg -i $db -s $k $opts`;
}


$db="$DIR/pumsb";
@sup = (0.95, 0.9, 0.85, 0.8, 0.75);
for $k (@sup){
    print "$alg -i $db -s $k $opts\n";
    `$alg -i $db -s $k $opts`;
}


$opts = "-d";
$db="$DIR/T10I4D100K";
@sup = (0.0015, 0.001, 0.00075, 0.0005, 0.00025);
for $k (@sup){
    print "$alg -i $db -s $k $opts\n";
    `$alg -i $db -s $k $opts`;
}


$db="$DIR/T40I10D100K";
@sup = (0.02, 0.01, 0.0075);
for $k (@sup){
    print "$alg -i $db -s $k $opts\n";
    `$alg -i $db -s $k $opts`;
}
