#!/usr/bin/perl

#
# letter_mystery.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-03-23 - created
#

use strict;
use warnings;
use Data::Dumper;
use feature 'say';

#=head
my $t = <STDIN>;
chomp($t);
my @strings =();
foreach my $i (1..$t){
	my $testcase = <STDIN>;
	chomp($testcase);
	push (@strings, $testcase); 
}
#=cut


#my @strings = qw/abc abcba abcd cba/;

say Dumper \@strings;

foreach my $str(@strings)
{

	my $palin = palin($str);

	say 0 if $palin;

	reduce($str) if (!$palin);
}


sub reduce
{
	my $str = shift;

	my @str_arr = split('',$str);

	my $return;
	my $i = 0;
	my 	$last_index = -1;
	my $first_index = $i;
	my $count = 0;

	while ( $i < scalar(@str_arr) - 1) {

		$first_index = $i;

		# change from last values
		while  (ord($str_arr[$last_index]) != 97){
			if (ord($str_arr[$last_index]) > 97){
				$str_arr[$last_index] = chr(ord($str_arr[$last_index]) - 1);
			}
			$count++;
			$return = join '',@str_arr;
			last if (palin($return));
		}

		$return = join '',@str_arr;
		last if (palin($return));

		# change from first values
		while (ord($str_arr[$first_index]) != 97) {
			if (ord($str_arr[$first_index]) > 97){
				$str_arr[$first_index] = chr(ord($str_arr[$first_index]) - 1);
			}
			$count++;
			$return = join '',@str_arr;
			last if (palin($return));
		}

		$return = join '',@str_arr;
		last if (palin($return));

		$i++;
		$last_index--;
	}

	$return = join '',@str_arr;

	say $count;
}

sub palin
{
	my $str = shift;

	return 1 if ($str eq reverse($str));
	return 0;
}


$| = 1;



# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

