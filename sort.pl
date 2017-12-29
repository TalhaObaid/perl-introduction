#!/usr/bin/perl
use strict;
use warnings;

my @inventory = qw(pears bananas Peaches apples Cherries oranges lemons Grapefruit);
@inventory = sort { lc($a) cmp lc($b) } @inventory;

foreach my $fruit ( @inventory ) 
{
    print "$fruit\n";
}
