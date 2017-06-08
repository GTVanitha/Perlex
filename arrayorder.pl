
#!/usr/bin/perl 

use strict;
use warnings;
use feature 'say';
use Data::Dumper;

my $conf_arr = ["Prepay", "UsageMonitor", "Bulk"];

my $db_arr = ["UsageMonitor", "Prepay","Bulk"];


my $hash = {map { $_ => 1 } @$conf_arr };

say Dumper $hash;

