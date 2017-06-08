

#!/usr/bin/perl -w

#
# wantarr.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2017 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2017-02-09 - created
#

# $Platon$

use strict;
use warnings;
use feature 'say';
use Data::Dumper;

sub arraytest
{
	if (wantarray) {
		return (1,2);
	} 
	return 3;
}


my @x = arraytest();

say Dumper \@x;

my $x = arraytest();

say Dumper $x;


# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

