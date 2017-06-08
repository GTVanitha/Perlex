#!/usr/bin/perl

#
# arraytohash.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-04-12 - created
#

use strict;
use warnings;
use Data::Dumper;
use feature 'say';

my @arr1 = (1,2,3,4);
my @arr2 = (6,7,8,9);
my $i=0;
my %hash;
map { $hash{$_} = $arr2[$i++]} @arr1;

print Dumper \%hash;



$| = 1;



# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

