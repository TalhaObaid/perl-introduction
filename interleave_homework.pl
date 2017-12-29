#!/usr/bin/perl
use strict;
use warnings;

my @first = qw(Can unlock secret);
my @second = qw(you the code?);

my @mixed = interleave_words( scalar(@first), @first, @second );
print "Result: @mixed\n";

sub interleave_words
{
    my @results;

    my $count = shift;
    my @first = splice( @_, 0, $count);
    my @second = splice( @_, 0, $count);
    if ( @first != @second ) 
    {
        die "Second array not same size ($count) as the first\n";
    }

    foreach my $index ( 0 .. $count-1 )
    {
        $results[$index * 2] = $first[$index];
        $results[$index * 2 + 1] = $second[$index];
    }
    return @results;
}
