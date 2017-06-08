#!/usr/bin/perl -w

use strict;
use Data::Dumper;

my $hash_rs = [
	{
		Id => 60,
		Production => 'f'
	},
	{
		Id => 61,
		Production => 'f'
	},
	{
		Id => 64,
		Production => 'f'
	},
	{
		Id => 68,
		Production => 'f'
	},
	{
		Id => 70,
		Production => 't'
	},
	{
		Id => 58,
		Production => 'f'
	},

];

my ($x) = grep { $hash_rs->[$_]->{Production} eq 'it' } 0..$#$hash_rs;
$x++;
print $x,"\n";
=head
my $arg = $ARGV[0];
my $count = 0;
print "RESULTSET".Dumper $hash_rs;


print "\nTOTAL=>".scalar(keys %{$hash_rs}) . "\n";
foreach my $row (values %{$hash_rs}){
	$count++;
	if ($arg eq 'f'){
		if ($row->{Production} eq 't'){
			print "\nProduction\n";
			print $row->{Id};
			print "\nCount => $count \n";
			print "DATA=>".Dumper $row;
			exit;
		}
	}
	else{
		if ($row->{Id} eq $arg){
			print "\nRequested page\n";
			print $row->{Id};
			print "\nCount => $count \n";
			print "DATA=>".Dumper $row;
			exit;
		}
	}
}
=cut
