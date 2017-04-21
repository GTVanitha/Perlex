#! /usr/bin/perl

use strict;
use warnings;

=head1 NAME

busroute - navigate from point A to point B

=head1 SYNOPSIS

 busroute [options]
 
 options are:

  --help     This help text.

  --datadir  The directory where bus route information files are present.
  --location Specify location you'd like to query about.

=cut

use Getopt::Long;
use Pod::Usage;

my ($data_dir, $location, $help);


# defaults
$data_dir = "/home/vanitha/busroute/data";

my $ret = GetOptions('datadir=s' => \$data_dir,
	   'location=s' => \$location,
	   'help' => \$help);

if ($help) {
	pod2usage(-exitval => 0);
}

if (!$ret) {
	pod2usage(-exitval => 1);
}

my $loc;

if (!$location) {
	print "Please specify location (either through --location or type below)\n";
	chomp ($loc=<STDIN>);
	$location = $loc;
}

if (!defined $location) {
	pod2usage(-exitval => 1,
		  -message => "Please specify location.");
}

open(F,"<$data_dir/routes.list") or die "could not open the file";

my @buses=<F>;

foreach my $bus(@buses)
{
 chomp $bus;
 open(F1,"<" . $data_dir . "/" . $bus . ".route") or die "could not open the file";
 my @busstops=<F1>;
 foreach (@busstops)
 {
  chomp $_;
  if($location eq $_)
  {
    print "$bus\n";
  }
 }
}

