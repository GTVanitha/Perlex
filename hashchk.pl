#!/usr/bin/perl

use strict;
use warnings;
use Data::Dumper;
use JSON;

my $h1 = {};

print "==============\n" if (%$h1);
exit;

my $hash = {
	1 =>2,
	3=>4
};

foreach my $i (keys %$hash){
	print "\njkey : $i";
	print "value $hash->{$i}";
}
exit;

my $h = {
	x => "{\"" .encode_json([{
				2 => 0,
				x => 'y'
		}]) . "\"}"
};

print Dumper($h);

exit;
my $t = delete $h->{2};
if (defined $t) {
print $t;
}
exit;
=head
my $p = undef;
my $q = undef ;

if ($p and  $q){
	print "exists";
}
else {
	print "not exists";
}
exit;
my $hash1 = { "DeleteContact"=> {
		"Contact"=> [
			{ "Id" => "id1" },
			{ "Id" => "id2" }
		],
	}
};

print  map {  $_->{Id} } @{$hash1->{DeleteContact}->{Contact}};


exit;
=cut
my $has1 = {
	1 => ['val1',"v2","v3"],
	2 => 'val2',
	3 => 'val3'

};

my $aa;
 push(@{$aa->{q}}, keys %$has1);
print Dumper $aa->{q};
#print @{$has1->{1}};
print "\n\n";
exit;
# for join only defined values
# join (',', grep defined, %$has1);

#foreach my $ki (keys %{$has1}){
print "\n".each(%$has1)."\n";
	while (my ($ki) = each(%$has1)) {
	my $k = $ki;
	my $k1 = $k + 1 ;
	delete @$has1{$k,$ki};
	delete @$has1{$ki};
	print Dumper $has1;
#	my $val = delete (@{$has1}{$k,$k1});
#	print "$val\n";
}

exit;
my @arr;
#push (@arr,$has1->{$_}) 0..(keys %{$has1});
print keys %{$has1};
exit;

my $h1 = {
	'1' =>{
		'555163130827' => [ 
			'CurrentBalance'
		]
	},
	'2' => {	'552032121851' => [ 
			'CurrentBalance'
		]
	},
	'3'=>{
		'517444127732' => [ 
			'CurrentBalance'
		]
	},
	'4' => {'529850105512' => [ 
			'CurrentBalance',
			'MIN'
		]
	}
};

foreach my $pid (keys %{$h1}) {
	my ($ref_id) = keys %{$h1->{$pid}};
	print join(',',@{$h1->{$pid}->{$ref_id}}) . "\n";
}

=head
foreach my $pid(keys %{$h1}){
	foreach (values %{$h1->{$pid}}){
		print join(',',@{$_})."\n";
	}

}
==cut

exit;




my $h2  = {
	'555163130827' => [ 
		'CurrentBalance'
	],
	'552032121851' => [ 
		'CurrentBalance'
	],
	'517444127732' => [ 
		'CurrentBalance'
	],
	'529850105512' => [ 
		'CurrentBalance'
	]
};

my $h3 = {
	'5268' => { 
		'PeakPricing' => '23',
		'AccountCISID' => '555163130827'
	},
	'2586' => { 
		'PeakPricing' => '23',
		'AccountCISID' => '529850105512'
	},
	'34' => { 
		'PeakPricing' => '23',
		'AccountCISID' => '514685121851',
		'CurrentBalance' => '150'
	},
};

# delete values from $h3 based on h2 key
foreach my $ref_id (keys %{$h2}){
	foreach my $pid (keys %{$h3}){
		delete $h3->{$pid} if ($ref_id eq $h3->{$pid}->{AccountCISID});
	}
}
my @ref_ids = keys %$h2;
foreach my $pid (keys %{$h3}) {
	my $ref_id = $h3->{$pid}->{AccountCISID};

	foreach my $rid ( @ref_ids ) {
		delete $h3->{$pid} if ( $ref_id eq $rid );
	}

}
print Dumper $h2;
print Dumper $h3;
