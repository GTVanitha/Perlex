#!/usr/bin/perl -w

use strict;
use Data::Dumper;

my %hash = (
	1 => 23,
	2 => { 1 => 'q'},
	3 => 'qw'
);
my $hash2 = {
	a => 1 ,
	b => 2,
	c => 5
};

my %param_value_map = (
	'Reason' => 'inconvenience',
	'To_date' => '12_12_14'
);

my $alertdef2param = {
	'85' => 'Reason',
	'86' => 'To_date',
	'65' => 'AmountOwedOnDisconnect'
};
#print "Before Delete  =>".Dumper $hash2;
print "Before Delete  =>".Dumper $alertdef2param;

%$alertdef2param = reverse %{$alertdef2param};
delete @{$alertdef2param}{keys %param_value_map};
%$alertdef2param = reverse %{$alertdef2param};

print "After Delete  =>".Dumper $alertdef2param;
foreach my $id(keys %$hash2){
	if (defined $hash{$hash2->{$id}}){
		print "key exists";
		delete @$hash2{$id};
	}
}

#print Dumper $hash2;
exit;

#my @deleted = delete @$hash{keys %$hash};
#print "\n\nEMPTY HASH\n\n\n" if (keys %$hash > 0 );
#print "\nDeleted =>\n".Dumper \@deleted;
#print "\nafter\n".Dumper $hash;
