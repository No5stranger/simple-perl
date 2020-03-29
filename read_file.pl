#!/usr/bin/perl

my $total = 0;
open(DATA, "<data.log") or die "data.log open filed";
while(<DATA>) {
    my @spl = split(',', $_);
    $total += $spl[1];
    if ($spl[1] > 3) {
        printf "%d,%s\n", $spl[1], $spl[0];
    }
}
open(WRITE_DATA, ">result.log");
$output = sprintf("total count: %d", $total);
print $output;
print WRITE_DATA $output;
close(DATA);
close(WRITE_DATA);
