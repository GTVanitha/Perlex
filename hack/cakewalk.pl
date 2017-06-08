#!/usr/bin/perl

#
# cakewalk.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-03-21 - created
#

#!/usr/bin/perl
use Data::Dumper;

$n = <STDIN>;
chomp $n;
$calories_temp = <STDIN>;
@calories = split (' ',$calories_temp);
@sorted=sort{$b <=> $a} @calories;

print Dumper \@sorted;


#chomp @calories;
# your code goes here
my $sum;
for(my $i = 0 ; $i< scalar(@calories); $i++){
	$sum = $sum + ($calories[$i] * (2**$i));
}   

print $sum;


exit;

use strict;
use warnings;
use feature 'say';

my $n = <STDIN>;
chomp $n;

my $c_tem = <STDIN>;
my @cal = split(' ',$c_tem);
chomp @cal;

my $sum = 0;

for(my $i = 0 ; $i< scalar(@cal); $i++){
	$sum = $sum + ($cal[$i] * (2**$i));
}

say $sum;


# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

