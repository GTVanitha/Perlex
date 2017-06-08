#!/usr/bin/perl -w
use strict;
use List::Util qw(min max minstr maxstr);
use warnings;

my @DATA = (
'2014-03-05 18:22:06',
20140305,
'2014-03-06 10:05:56',
'2014-04-29 16:04:30',
'2014-04-29 17:22:13',
'2014-05-02 10:35:02',
'2014-05-07 18:09:23'
);
#my @dates = split /\n/, do {local $/; @DATA};

my ($min, $max) = (sort @DATA)[0, -1];
#my $min = minstr @DATA;
#my $max = maxstr @DATA;

print "Max = '$max'\nMin = '$min'\n";


