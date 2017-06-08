#!/usr/bin/perl

#
# element_in_arr.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-04-17 - created
#

use strict;
use warnings;
use Data::Dumper;
use feature 'say';


my @arr = ('ele1','ele2','ele3');

my @arr1 = ('ele2','ele3');

my $hash;
# To check method not exist in @a
foreach my $a1 (@arr) {

	$hash->{$a1} = (grep { $_ eq $a1} @arr1) ? 'yes' : 'no';
#	if (grep { $_ eq $a1} @arr1) {
#		$hash->{$a1} = 'yes';
#		print "\nMethod not  exist in supported: $_";
#	} else {

#		$hash->{$a1} = 'no';
#	}
}
print Dumper $hash;



$| = 1;



# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

