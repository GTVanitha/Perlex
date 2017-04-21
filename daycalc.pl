#! /usr/bin/env perl

use strict;
use warnings;
use Getopt::Long;
use Pod::Usage;

=head1 
NAME

 Day calculation 
	- given a date that give the day of that date

=head1 
SYNOPSIS

 Day calulation [options]

 Options are:
	--help   This help text.
	--day month year   Give the day(dd), month(mm), year(yyyy) in newlines
=cut

my $help;
my @mon=(31,28,31,30,31,31,30,31,30,31,30,31);
my $date;
my $mon;
my $yr;
my $i;
my $s=0;
my $flag=0;
my @week=("sunday","monday","tuesday","wednesday","thursday","friday","saturday");

my $ret = GetOptions('date=s'=>\$date,
                      'month=s'=>\$mon,
                       'year=s'=>\$yr,
                      'help' => \$help);

if ($help) {
	pod2usage(-exitval=>0);
}

if(!$date && !$mon && !$yr) {
	print "enter the date(dd/mm/yyyy)";
	chomp($date=<STDIN>);
	chomp($mon=<STDIN>);
	chomp($yr=<STDIN>);
}

if(!$date && !$mon && !$yr) {
	pod2usage(-exitval=>1,
		  -message=>"please specify dd mon year");
}

if((($yr%100!=0)&&($yr%4==0))||($yr%400==0)) {
    $flag=1;
    $mon[1] = 29 ;
}

for ($i = 0 ; $i < $mon - 1 ; $i++) {
    $s = $s + $mon[$i] ;
}

$s = $s + ($date + $yr + ($yr /  4) - 2) ;
$s = $s % 7 ;

if($flag==1) {
    $s=$s-1;
}

print "\nThe day is $week[$s]\n" ;


