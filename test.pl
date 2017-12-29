#!/usr/bin/perl

my $x = (.0425 * 2) + .0025; 
print $x - (.0425 * 2) - .0025; 


print "\n";
print (.0425*2) - (.0425*2). "\n";

($x, $y, $z) = (1, 2);
if( defined($z)) { print "true\n"; }
else {print "false\n";}

my @a = (1,2,3,4,5,6,7,8,9);
while (my $x = shift @a )
{print "$x\n";}

@a = (1,2,3,4,5,6,7,8,9);
foreach my $x ( @a )
{print "$x\n";}

my $phrase = "A man, plan, a canal--Panama";
my $rev = reverse $phrase;
print "$rev\n";


my @prices = (1,2,3,4,5,6,7,8,9);
my $priciest = (reverse @prices)[0];

print "$priciest\n";

hash_test(@prices);

    my %hash = list_test(@prices);
    foreach my $key( keys %hash )
    {        
        unless (defined($hash{$key})) { print "$key = undefined\n"; }
	else { print "$key = $hash{$key}\n";}
    }

sub hash_test
{
    my %hash = @_;
    foreach my $key( keys %hash )
    {        
        unless (defined($hash{$key})) { print "$key = undefined\n"; }
	else { print "$key = $hash{$key}\n";}
    }
}

sub list_test
{
    my @in = (1,2,3,4,5,6,7,8,9);
    return @in;
}

