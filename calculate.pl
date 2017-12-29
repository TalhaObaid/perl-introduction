#!/usr/bin/perl

use strict;
use warnings;

my $accumulator = undef;

my %commands = (EQUALS => 1, CLEAR => 1, PLUS => 1, MINUS => 1, TIMES => 1, OVER => 1);
my $file_input = @ARGV;
print "> ";

while ( defined( my $line = <> ) )
{

    chomp $line;
    if ( $file_input ) 
    {
        print "$line\n";
    }    
   
    my ( $command, $arg ) = split " ", $line, 2;
    $command = uc($command);
    if ( $commands{$command} )
    {
        
        if ( $command ne 'EQUALS' ) 
        {
            $accumulator = compute ($accumulator, $command, $arg);
        }
        else 
        {
            if ( defined ($accumulator) ) 
            {
                print " = $accumulator\n";
            }
            else
            {
                print " (undefined)\n";
            }
        }
        print "OK\n";
    }
    else 
    {
        print "Invalid statement\n";
    }
    print "> ";
}

sub compute
{
    my $accumulator = shift;
    my $command = shift;
    my $arg = shift;

    if ( $command eq 'CLEAR' )
    {
	$accumulator = 0;
    }
    elsif ( $command eq 'PLUS' )
    {
	$accumulator += int($arg);
    }
    elsif ( $command eq 'MINUS' )
    {
	$accumulator -= int($arg);
    }
    elsif ( $command eq 'TIMES' )
    {
	$accumulator *= int($arg);
    }
    elsif ( $command eq 'OVER' )
    {
	$accumulator /= int($arg);
    }
    return $accumulator;
}
