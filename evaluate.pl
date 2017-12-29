#!/usr/bin/perl
use strict;
use warnings;

my $principal = 100000;
my $interest_rate = 7; # %
my $term = 20; # Years
my $total_paid = $principal * (1 + $interest_rate/100) ** $term;

print "Value of principal + interest after ", $term, " years = ", $total_paid, "\n";

my $cash = $total_paid + 123210;

if( $cash >= 0 && $cash < $total_paid )
{
    print "Unacceptable\n";
}
elsif ( $cash >= $total_paid )
{
    my $ten_percent = $total_paid * (10/100);
    
    
    if ( $cash <= ($total_paid + $ten_percent) )
    {
        print "Marginal\n";
    }
    elsif( $cash > ($total_paid + $ten_percent) ) 
    {
        print "Approved\n"
    }  
} 

