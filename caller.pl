
#!/usr/bin/perl 

use strict;
use warnings;

my $data = ['2',3,4];
print "------------". @{$data} ."==============\n";

&print;

sub print {

print "------".caller."\n";
}
# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

