#!/usr/bin/perl

my $total = 0;
my %out_data;
open(DATA, "<data.log") or die "data.log open filed";
while(<DATA>) {
    my @spl = split(',', $_);
    $total += $spl[1];
    if ($spl[1] > 3) {
        $out_data{$spl[0]} = $spl[1]
    }
}
foreach my $k (sort {$out_data{$a} <=> $out_data{$b}} keys %out_data) {
    printf "%s,%d\n", $k, $out_data{$k};
}
#while (my ($k, $v) = sort {{$out_data{$a}} <=> $out_data{$b}} each %out_data) {
#    printf "%s,%d\n", $k, $v;
#}
open(WRITE_DATA, ">result.log");
$output = sprintf("total count: %d", $total);
print $output;
#print WRITE_DATA $output;
close(DATA);
close(WRITE_DATA);
