
#!/usr/bin/perl -w

#
# mm.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2017 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2017-01-11 - created
#

# $Platon$

use strict;

use Data::Dumper;

my $h = {
	'ystdy restore' => {
		method => \&a1,
		return => 'connect'
	},
	'ystdy restore1' => {
		method => \&a1,
		return => 'connect1'
	},
	'tomo rate' => {
		method => \&a2,
		return => 'tomo rate'
	}
};

$h->{'ysy'} = $h->{'ystdy restore'};


sub a1 {
	print "comming\n";
	return {
		connect => 'restore',
		connect1 => 'restore1'
	};
}

sub a2 {
	return {
		"tomo rate" => 'restore',

	};
}

my $dash_data = {};

foreach my $k (keys %$h){
	print "\n~~~~~~~~~~~~~ $k ", Dumper $h->{$k} if ($k eq 'ysy');	
	my $return = $h->{$k}->{return};
	my $data = &{$h->{$k}->{method}}; 

	$dash_data->{$return} = $data->{$return};
}
print Dumper $dash_data;
