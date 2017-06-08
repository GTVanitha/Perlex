
# XXX XXX XXX  THIS IS A NEW FILE XXX XXX XXX

#!/usr/bin/perl -w

#
# split.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-06-15 - created
#

# $Platon$

use strict;
use warnings;
use Data::Dumper;

my $str = 'CurrentBalance <= DollarThreshold && isDisconnect == 0';

my $dt = '2016-12-01T00:00:00';
my @arr1 = split /[T-]/, $dt;
my @arr = split /[\s]/, $str;

print Dumper \@arr1;

exit;

foreach my $param (@arr) {
	if ($param =~ /[A-Z]/io){
	print "\n===$param";
}
}

# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

