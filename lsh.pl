#! /usr/bin/perl

use strict;
use warnings;
use Data::Dumper;

my %ohash;

#lshwdata file contain the output of lshw -short
open (F,"<lshwdata") or die "could not open file";
my @file=<F>;

for my $line(@file) {
 if($line =~ /(\/.+?)\s+(.+?)\s+(.+?)\n/g) {
  $ohash{$2}{$1}=$3;
 }
}

print Dumper \%ohash;

