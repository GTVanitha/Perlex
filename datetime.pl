
#!/usr/bin/perl -w

#
# datetime.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-03-09 - created
#

# $Platon$

use strict;
use DateTime;
use feature 'say';


my $dt1 = DateTime->new(
	year      => 2016,
	month     => 01,
	day       => 31,
	hour      => 23,
	minute    => 59,
	second    => 59,
	time_zone => 'America/Chicago',
);

say "with time_zone ", $dt1->epoch;
exit;

my $dt2 = DateTime->new(
	year      => 2000,
	month     => 5,
	day       => 10,
	hour      => 15,
	minute    => 15,
);

#say "without timezone ", $dt2->epoch;


my $dt = DateTime->now();
say "offset b4:".$dt->offset();

$dt->set_time_zone('America/Chicago');
say "offset b4:".$dt->offset();
say "now without timezone:". $dt->epoch;#.$dt->format_cldr('y-MM-ddTHH:mm:ssZZZZZ');



exit;

# This function will return a DS between the given date range
#DS
=head
{
	'end_month' => {
		'2012' => {
			'1' => 1328072399
		}
	},
	'start_year' => {
		'2012' => 1325397600
	},
	'end_year' => {
		'2012' => 1328072399
	},
	'start_month' => {
		'2012' => {
			'1' => 1325397600
		}
	},
####
	'start_day' => {
		2012 => {
			1 => {
				01 => 1234567890
				}
			}
		}
};


=cut

#my $dates = date_range_epoch("1309964822", "1309964822", 'America/New_York');
use Data::Dumper;

my $tt = {'end_month' => {
	'2011' => {
		'7' => 1312171199
	},
	'2012' => {
		'7' => 1312171199
	}

}};

my $t = 1470809731 ; #$tt->{end_month}->{2012}->{7};

say $t;
my $t_o = DateTime->from_epoch(epoch => $t, time_zone => 'America/New_York');
#$t_o->set_day(1); # start_day of tht epoch month
$t_o->set(hour => 23, minute => 59, second => 59);
#$t_o->set_minute(59);
#$t_o->set_second(59);

say $t_o->epoch;

$t_o->subtract(days => 1);


say $t_o->epoch;

#say Dumper($dates); 

sub date_range_epoch {

	my ( $start_epoch, $end_epoch, $time_zone) = @_;

	my ($start_year, $end_year, $start_month, $end_month, $start_day, $end_day);

	my $start_date_obj = DateTime->from_epoch(epoch => $start_epoch, time_zone => $time_zone);
	$start_date_obj->set_day(1);
	$start_date_obj->set_hour(0);
	$start_date_obj->set_minute(0);
	$start_date_obj->set_second(0);

	my $first = 1;

	my ($year, $month_end_epoch);
	while ($start_epoch < $end_epoch) {

		my $month_start_epoch = $start_date_obj->epoch;
		$year = $start_date_obj->year;
		my $month = $start_date_obj->month;

		# To avoid overriding in start year
		if ($month == 1 || $first) {
			$start_year->{$year} = $month_start_epoch;
			$first = 0;
		}

		$start_month->{$year}{$month} = $month_start_epoch;

		my $month_last_day = DateTime->last_day_of_month(
			year      => $year,
			month     => $month,
			hour      => 23,
			minute    => 59,
			second    => 59,
			time_zone => $time_zone
		);

		$month_end_epoch = $month_last_day->epoch;

		$end_year->{$year} = $month_end_epoch if ($month == 12);

		$end_month->{$year}{$month} = $month_end_epoch;

		#calculate day
		my $start_date_clone = $start_date_obj->clone;
		my $day_epoch = $month_start_epoch;

		while ( $day_epoch < $month_end_epoch ) {

			my $day = $start_date_clone->day;

			$start_day->{$year}->{$month}->{$day} = $day_epoch;
		
			my $day_end = DateTime->new( year => $year, month => $month, day => $day, hour => 23, minute => 59, second => 59, time_zone => $time_zone);

			$end_day->{$year}->{$month}->{$day} = $day_end->epoch;

			$start_date_clone->add(days => 1);

			$day_epoch = $start_date_clone->epoch;

		}
		
		$start_date_obj->add(months => 1);

		$start_epoch = $start_date_obj->epoch;
	}

# If same month and same year given as end_epoch
	$end_year->{$year} = $month_end_epoch;

	return {
		start_year  => $start_year,
		start_month => $start_month,
		end_year    => $end_year,
		end_month   => $end_month,
		start_day  => $start_day,
		end_day  => $end_day
	};

}
=head
=item B<get_start_end_from_now>
Params : timezone, duration(optional)

Return : HASHREF
         {
           from => {
                epoch => ,
                date  =>
           },
           to => {
                epoch => ,
                date =>
           }
         }
Desc : This method is used to get the 'from'(based on duration passed), 'to' epoch and
       date from current time (now).
       If duration is not passed as parameter, this will return start of the day 

#=cut

sub get_start_end_from_now
{
	#my ($timezone, $duration) = @_;
	my $timezone = shift;
	my @duration = @_;

	say "timezone: $timezone, duration: @duration";

	my $to_dt_obj = DateTime->now(time_zone => $timezone);

	# Getting start of the date
	my $from_dt_obj = $to_dt_obj->clone->truncate( to => 'day');

	# To get the start time based on duration
	$from_dt_obj->subtract(@duration) if(@duration);

	return {
		from =>{
			epoch => $from_dt_obj->epoch,
			Date => $from_dt_obj
		},
		to => {
			epoch => $to_dt_obj->epoch,
			Date => $to_dt_obj
		}
	};

}

say "======================FOR NOW";
my $ret = get_start_end_from_now('Asia/Kolkata');

say "from epoch: $ret->{from}->{epoch}";
say "from date: ". $ret->{from}->{Date};
say "to epoch: $ret->{to}->{epoch}";
say "to date: $ret->{to}->{Date}";

say "======================FOR 2 days";
my $ret = get_start_end_from_now('Asia/Kolkata', 'days', 30);

say "from epoch: $ret->{from}->{epoch}";
say "from date: $ret->{from}->{Date}";
say "to epoch: $ret->{to}->{epoch}";
say "to date: $ret->{to}->{Date}";


# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3
=cut 
