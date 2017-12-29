#!/usr/bin/perl

use strict;
use warnings;

my $text = <<'END_OF_TEXT';
Love, love me do.
You know I love you,
I'll always be true,
So please, love me do.
Whoa, love me do.

Love, love me do.
You know I love you,
I'll always be true,
So please, love me do.
Whoa, love me do.

Someone to love,
Somebody new.
Someone to love,
Someone like you.

Love, love me do.
You know I love you,
I'll always be true,
So please, love me do.
Whoa, love me do.

Love, love me do.
You know I love you,
I'll always be true,
So please, love me do.
Whoa, love me do.
Yeah, love me do.
Whoa, oh, love me do
END_OF_TEXT

my %count;
foreach my $line ( split "\n", $text )
{
    foreach my $word ( split " ", $line )
    {
        if ( substr($word, -1) eq "," ) 
        {
            $word = substr( $word, 0, -1);
        }
        
        $count{lc($word)}++;
    }
}

print "'love' occurs $count{love} times\n";

