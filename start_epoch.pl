
# XXX XXX XXX  THIS IS A NEW FILE XXX XXX XXX

#!/usr/bin/perl -w

#
# start_epoch.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-12-22 - created
#

# $Platon$

use strict;
use DateTime;
use Data::Dumper;
use DateTime::TimeZone;

my $year = 1970;
my $month = 01;
my $day = 01;
my $time_zone = 'America/New_York';

my $first_day = DateTime->new(
	year       => $year,
	month      => $month,
	day        => $day,
	hour       => 0,
	minute     => 0,
	second     => 0,
#	time_zone  => $time_zone,
);

print "\n=======start_epoch: ",$first_day->epoch;
#print "\n-------",Dumper( DateTime::TimeZone->all_names), "\n";
$first_day->set_time_zone('America/New_York');

print "\n=======start_epoch: ",$first_day->epoch;
$first_day->set(hour => 23, minute => 59, second => 59);
print "\n=======End epoch: ", $first_day->epoch; 


