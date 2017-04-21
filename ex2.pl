#! /usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;

print "enter size of array: ";
my $size=<STDIN>;

my $arref=[];
my @oarr=();

for (my $i=0;$i<$size;$i++) {
	print "enter the array value [$i]: ";
	chomp(my $value=<STDIN>);
	$arref=func($value);
	push(@oarr,$arref);
}
	print Dumper \@oarr;

sub func {
	my $num=@_;
	my @numbers=();
	my $factor=1;

	while ($num>=1) {
	 my $val=($num%10)*$factor;
	 push(@numbers,$val);
	 $factor=$factor*10;
	 $num= $num / 10;
       }

my @sorted_numbers=reverse(@numbers);
return \@sorted_numbers;
}
