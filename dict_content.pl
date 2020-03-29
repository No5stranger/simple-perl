#!/usr/bin/perl

use strict;
use warnings;

my $dir = "/tmp/*" ;
my @files = glob($dir);

foreach (@files) {
    print $_ . "\n";
}
