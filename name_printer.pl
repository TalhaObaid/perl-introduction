#!/usr/bin/perl
use strict;
use warnings;

my $boss_first_name = "Penelope";
my $boss_last_name = "Creighton-Ward";
my $butler_first_name = "Alysius";
my $butler_last_name = "Parker";

my $field_width = 15;

my $line_1 = '|'.' ' x $field_width.'|'.' ' x $field_width."|\n";
my $line_2 = '';
my $line_3 = '';

if ( length( $boss_first_name ) + length(' ') + length ($boss_last_name) < $field_width ) 
{
   $line_2 = $line_2.'|'.$boss_first_name.' '.$boss_last_name;  
   $line_2 = $line_2.' ' x ($field_width - (length($boss_first_name) + length(' ') + length($boss_last_name)));
}
else 
{
    $line_2 = $line_2.'|'.$boss_first_name;  
    $line_2 = $line_2.' ' x ($field_width - (length($boss_first_name))); 
 
    $line_3 = $line_3.'|'.$boss_last_name;  
    $line_3 = $line_3.' ' x ($field_width - (length($boss_last_name)));  

}

if ( length( $butler_first_name ) + length(' ') +  length ($butler_last_name) < $field_width ) 
{
    $line_2 = $line_2.'|'. $butler_first_name.' '.$butler_last_name;   
    $line_2 = $line_2.' ' x ($field_width - (length($butler_first_name) + length(' ') + length($butler_last_name))) . "|\n";
    if( $line_3 ne '' ) {
        $line_3 = $line_3.'|';  
        $line_3 = $line_3.' ' x $field_width."|\n";
    }
}
else 
{
    $line_2 = $line_2.'|'.$butler_first_name;  
    $line_2 = $line_2.' ' x ($field_width - (length($butler_first_name)))."|\n";
 
    if( $line_3 eq '' ) {
	    $line_3 = $line_3.'|';  
	    $line_3 = $line_3.' ' x $field_width;
    }

    $line_3 = $line_3.'|'.$butler_last_name;  
    $line_3 = $line_3.' ' x ($field_width - (length($butler_last_name)))."|\n";
}
  
print $line_1.$line_2.$line_3;
