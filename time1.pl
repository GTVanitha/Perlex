#!/usr/bin/perl -w
use Time::HiRes;
use DateTime;
use POSIX qw/strftime/;



my $time = time();
print strftime('%d-%m-%y',localtime());
$time += $time - time();
print "\nSTRFTIME=>$time";
my $time1 = time();
print DateTime->now->dmy;
$time1 += $time1 - time();
print "\nDATETIME=>$time1";



# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

