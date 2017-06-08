
# XXX XXX XXX  THIS IS A NEW FILE XXX XXX XXX

#!/usr/bin/perl -w

#
# epoch_gen.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-10-04 - created
#

# $Platon$

use strict;
use DateTime;
use Data::Dumper;

my $year = 2016;
my $month = 2;
my $day = 1;
my $time_zone = 'America/Chicago';

my $first_day = DateTime->new(
	year       => $year,
	month      => $month,
	day        => $day,
	hour       => 0,
	minute     => 0,
	second     => 47,
	time_zone  => $time_zone,
);

$first_day->set_day(1);

my $first_day_epoch = $first_day->epoch;

my $last_day = DateTime->last_day_of_month(
	year => $year,
	month => $month,
	hour => 23,
	minute => 59,
	second => 59,
	time_zone => $time_zone
);

my $last_day_epoch = $last_day->epoch;

my $first_day_clone = $first_day->clone;
my @epochs;

while ($first_day_epoch < $last_day_epoch) 
{
	my $day = $first_day_clone->day;
	push(@epochs, $first_day_epoch);

	$first_day_clone->add(days => 1);
	$first_day_epoch = $first_day_clone->epoch;
}

print "epoch for the year: $year, month: $month=>", Dumper \@epochs;


# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

