#!/usr/bin/perl

use strict;
use warnings;

my $chr = 32;

while( $chr <= 126 ) {
    print $chr . ' ' . chr($chr) . "\n";
    $chr++;
}
