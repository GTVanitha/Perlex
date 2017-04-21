#! /usr/bin/env perl

use Data::Dumper;
use strict ;
use warnings;

#This program works fine if it exists in datafile(.html files)directory

foreach my $fp (glob("*.html")) {

 	open(D,"<","$fp") or die "could not open directory";
	my @file = <D>;

	#To extract the filename
	$fp =~ /^(.+?)\.html/;
	my $fname=$1;
	print $fname;

	for (@file) {
	 #check for stops
	  if ($_ =~ /<a href=\"\/chennai\/stage\/.+\">(.+)<\/a>/) {
		mkdir("out_file",0744);
	        open(FH,">>./out_file/$fname.txt") or die "could not open file"; 
		print FH "$1\n";
          }
	}
}
