#!/usr/bin/perl

#
# tt.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-04-13 - created
#

use strict;
use warnings;
use Data::Dumper;
use feature 'say';


$| = 1;

my @arr = (1,2,3);


$, = '-';
print @arr; # printing in list context..Here u r passing list of args to print function

$" = '=';
print "@arr"; # Here u r passing array and it will be converted to string and print..while converting array to string the values are seperated by $" default to single space

print @arr , "\n"; # print like list 
print @arr . "\n"; # print array length

# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

