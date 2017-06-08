

#!/usr/bin/perl -w

use strict;

my $getsub = [
	{
		subscription => { Id => 1},
		parameter => {Name => 'currentbalance'},
		contact=>{ Type => 'SMS', Name=>'Home1'},
	},
	{
		subscription => { Id => 2},
		parameter => {Name => 'Threshold'},
		contact=>{ Type => 'Phone', Name=>'Home2'},
	}
];

my $string;

foreach my $data (@{$getsub}) {
	foreach my $k (keys %{$data}){
		$string .= "<$k";
		foreach my $k1 (keys %{$data->{$k}}){
			$string .= " $k1 = ". $data->{$k}->{$k1} . " />";
		}
		$string .= "</$k>"
	}

}

print $string;


