
#!/usr/bin/perl -w

#
# substr.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-03-07 - created
#

# $Platon$

use strict;
use feature 'say';

my $str = 123456;

$str = substr($str,0,2);
say $str;

$str = "qewefwe

bbb
rrr";

say $str;
$str = index($str,"\n"); # single quote in this index will result to -1
say $str;

