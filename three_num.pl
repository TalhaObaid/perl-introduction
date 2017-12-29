#!/usr/bin/perl

use strict;
use warnings;

print add_three_numbers( 12, 592, 2928);
print add_three_numbers( 9, 2, 4, 5, 10);

sub add_three_numbers
{
    my $size = @_;
    if( $size != 3 )
    {
        die "The size of arguments should be exactly three, whereas it is $size";
    }
    ## put your code here
    my ($first_num, $second_num, $third_num) = @_;
    return $first_num + $second_num + $third_num;
}
