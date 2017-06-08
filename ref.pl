
# XXX XXX XXX  THIS IS A NEW FILE XXX XXX XXX

#!/usr/bin/perl -w

#
# testprograms/ref.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-10-17 - created
#

# $Platon$

use strict;

my $x = '/home/vani/';

# ref($x) will return empty string not scalar
print ref($x),"\n" if(!defined ref($x));


# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

