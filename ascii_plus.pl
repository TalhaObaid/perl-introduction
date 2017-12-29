#!/usr/bin/perl

use strict;
use warnings;

my $chr = 32;

foreach my $chr ( 32 .. 126 ) {
    printf "%3d, %2x, %4o, %8xb, %1c\n",$chr, $chr, $chr, $chr, $chr;
}
