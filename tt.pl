
# XXX XXX XXX  THIS IS A NEW FILE XXX XXX XXX

#!/usr/bin/perl -w

#
# tt.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-02-25 - created
#

# $Platon$

use strict;
use feature 'say';

my $result->{s} = 0;

my $s = defined $result->{s} ? $result->{s} == 0 ? 'zero' : $result->{s} : 0;

say $s;
exit;

foreach my $a('phone','SMS') {
	say $a;
}

exit;
my $extra_status = { Result => 1 } if (0);

$result = $extra_status->{Result} || "N/A";

say "Result: $result";
# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

=head
 while (my ($type, $allowed) = each %{$contact_type}) {
+                    push(@contact_type, $type) if ($allowed eq 'yes');
+                }
=cut
