#!/usr/bin/perl

use strict;
use warnings;

my $name = "Charles Francis Xavier";
my @names;
my $first_name;
my $middle_name;
my $last_name;
my $middle_initial;
my @middle_chars;

@names = split ' ', $name;
$first_name = $names[0];
$middle_name = $names[1];
$last_name  = $names[-1];
if( $middle_name eq $last_name ) {
    $middle_initial = "X";
}
else
{
    @middle_chars = split '', $middle_name;
    $middle_initial = $middle_chars[0].'.';
}
print "$first_name $middle_initial $last_name\n";

$name = "Hiram K. Hackebacker";
@names = split ' ', $name;
$first_name = $names[0];
$middle_name = $names[1];
$last_name  = $names[-1];
if( $middle_name eq $last_name ) {
    $middle_initial = "X";
}
else
{
    @middle_chars = split '', $middle_name;
    $middle_initial = $middle_chars[0].'.';
}
print "$first_name $middle_initial $last_name\n";

$name = "James Moriarty";
@names = split ' ', $name;
$first_name = $names[0];
$middle_name = $names[1];
$last_name  = $names[-1];
if( $middle_name eq $last_name ) {
    $middle_initial = "X";
}
else
{
    @middle_chars = split '', $middle_name;
    $middle_initial = $middle_chars[0].'.';
}
print "$first_name $middle_initial $last_name\n";

$name = "Samuel Finely Breese Morse";
@names = split ' ', $name;
$first_name = $names[0];
$middle_name = $names[1];
$last_name  = $names[-1];
if( $middle_name eq $last_name ) {
    $middle_initial = "X";
}
else
{
    @middle_chars = split '', $middle_name;
    $middle_initial = $middle_chars[0].'.';
}
print "$first_name $middle_initial $last_name\n";
