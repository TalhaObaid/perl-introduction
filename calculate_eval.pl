#!/usr/bin/perl

use strict;
use warnings;

my $accumulator = undef;

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

    unless (defined($arg)) {$arg = 0;}

    my %commands = (
                EQUALS => 1, 
                CLEAR  => 1,
		PLUS   => "+" . int($arg), 
		MINUS  => "-" . int($arg), 
		TIMES  => "*" . int($arg), 
		OVER   => "/" . int($arg)
    );

    if ( $commands{$command} )
    {
        if ($command eq 'CLEAR' )
        {
            $accumulator = 0;
        }
        elsif ($command eq 'EQUALS' ) 
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
        else 
        {
            $accumulator = compute ("accumulator" => $accumulator, 
				    "operation"   => $commands{$command});
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
    my %compute_args = @_;
   
    my $accumulator = $compute_args{"accumulator"};
    my $operation   = $compute_args{"operation"};

    $accumulator = eval( $accumulator . $operation );

    return $accumulator;
}
