#!/usr/bin/perl
use strict;
use warnings;

my %sold;
if ( @ARGV > 2 && shift eq "-s" )
{
    my $sales_file = shift;
    my @saved_argv = @ARGV;
    @ARGV = $sales_file;
    my $line = <>; #skip the header line
    while ( defined ( $line = <> ) )
    {
	chomp $line;
        my ($quantity, $item) = split ",", $line, 2;
        $sold{$item} = $quantity;
    }
    @ARGV = @saved_argv;
}
else
{
    die "Usage: $0 -s sales_file inventory file...\n";
}

my (%item_cost, %inventory);

my $ln = 0;

my $line = <>; #skip the header line
$ln++;
while (defined( $line = <> ) )
{
    $ln ++;
    chomp $line;
    my ($cost, $quantity, $item) = split ",", $line, 3;
    $item_cost{$item} = $cost;
    $inventory{$item} = $quantity;
    if( $quantity < 0 )
    {
        warn "Inventory is negative at line $ln\n";
    }
}

foreach my $item ( keys %sold )
{
    if ( exists $inventory{$item} )
    {
         $inventory{$item} -= $sold{$item};
    }
    else
    {
	warn "**** Sold $sold{$item} of $item, which were not in inventory\n";
    }
}

foreach my $item ( sort keys %item_cost )
{
    printf "%5.2f %6d %s\n", $item_cost{$item}, $inventory{$item}, $item;
}

