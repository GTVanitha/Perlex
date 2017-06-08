#!/usr/bin/perl -w
use strict;

sub test {
	my $tt = @_;
	if ($tt == 1){
	return 2;}
if ($tt == 2){
	return 2 1;
}
}

#my ($t) = test(1);
#print $t."\n";
my ($t1,$t2) = test(2);
print $t1."\n";
print $t2;

