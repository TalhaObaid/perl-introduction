#!/usr/bin/perl

use strict;
use warnings;

my @names = ("Charles Francis Xavier", "Hiram K. Hackenbacker", "James Moriarity", "Samuel Finley Breese Morse");
foreach my $name ( @names )
{
    #my $name = shift @names;
    my @parts = split ' ', $name;
    my $first_name = shift @parts;
    my $last_name = pop @parts;
    print "$name is sanitized to $last_name, $first_name\n";
}
 
