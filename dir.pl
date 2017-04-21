#! /usr/bin/env perl

use Data::Dumper;
use strict ;
use warnings;

#This program works fine if it exists in datafile(.html files)directory
my @file;
foreach my $fp (glob("*.html")) {
 print $fp;
}
