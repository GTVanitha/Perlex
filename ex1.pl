#! /usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

print "enter the number: ";
my $num=<STDIN>;
chomp $num;

my @numbers=();
my $factor=1;

while($num>=1)
{
 my $val=($num%10)*$factor;
 push(@numbers,$val);
 $factor=$factor*10;
 $num= $num / 10;
 
}

my @sorted_numbers=reverse(@numbers);
print Dumper \@sorted_numbers;
