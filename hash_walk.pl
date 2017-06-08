#!/usr/bin/perl

#
# hash_walk.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-03-27 - created
#

use strict;
use warnings;
use Data::Dumper;
use feature 'say';

my @tree_param ;
sub fun {
my $h = {
	'left' => {
		'left' => {
			'oper' => 'var',
			'name' => 't1'
		},
		'after' => 1,
		'right' => {
			'oper' => 'const',
			'type' => 'num',
			'val' => '1'
		},
		'oper' => '=='
	},
	'after' => 1,
	'right' => {
		'left' => {
			'oper' => 'var',
			'name' => 'tt1'
		},
		'after' => 1,
		'right' => {
			'oper' => 'const',
			'type' => 'num',
			'val' => '1'
		},
		'oper' => '=='
	},
	'oper' => '||'
};

get_params($h);
print Dumper \@tree_param;

}

fun();


sub get_params1
{
	my  $tree  = shift;

	foreach my $k (keys %{$tree}) {
say "==========key:$k"	;
		if (ref($tree->{$k}) eq 'HASH') {

			get_params($tree->{$k}) ;
		} 
		else {

			if ($k eq 'name') {
				say "key is name:$tree->{$k}";
				push (@tree_param, $tree->{$k}) if ($tree->{$k});
			} 
#			else { 
#
#				next;
#			}
		}  
	}      
}  


$| = 1;



# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

