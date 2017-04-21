#! /usr/bin/perl

use strict;
use warnings;

open(F,"</home/vanitha/busroute/data/routes.list") or die "could not open file routes.list";

my @buses=<F>;

print "enter the location: ";
my $loc=<STDIN>;
chomp $loc;

foreach my $bname(@buses)
{
 chomp $bname;
 open(F1,"</home/vanitha/busroute/data/$bname.route") or die "could not open file .route";
 my @busstops=<F1>;
 foreach (@busstops)
 {
  chomp $_;
 if($loc eq $busstops[0] || $loc eq $busstops[-1])
  {
    print "$bname\n";
  }
 }
}

