#!/usr/bin/perl

#
# bomber.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-03-17 - created
#

use strict;
use warnings;
use Data::Dumper;
use feature 'say';


my $str = $ARGV[0];

#ex: aabcccdee

my @chars = split('',$str);
my @char2 = ();
my $match;
for(my $i = 0; $i < scalar(@chars) ; $i++){
#my $i = 0;
#while (1){

	say "=====$chars[$i]===========$i==";
	my $j = $i + 1;
	if ($chars[$i] eq $chars[$j]) {
		say "match found:$chars[$i],second: $chars[$j]";
		#$match++;
	} 
	else {
		say "different: $chars[$i]";
		push (@char2 , $chars[$i]);
		last;
	}
}


print "@char2";



# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

