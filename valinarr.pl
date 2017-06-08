#!/usr/bin/perl -w

use strict;
use Data::Dumper ;


#value exists in perl
my $arr = ['a','b','c',[1,2]];
my $x = 1;
my $v;
if (defined $x) {
	foreach $v (@{$arr}) {
		if (ref ($v) eq "ARRAY" ) {
			if( grep {/$x/} @{$v}) {
				print "exists\n";
			}
			else {
				print " NOT exists\n";
			}
		}
		elsif ( defined $v and $v ne '' ) {
			if( $v eq $x) {
				print "exists\n";
			}
			else {
				print " NOT\n";
			}


		}
	}
}

my $arr1 = ['q','w','e','r','t','y'] ;
push ($arr1, [$arr] );

print Dumper $arr1->[6];
