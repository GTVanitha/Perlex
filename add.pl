#!/usr/bin/perl

#
# add.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-05-10 - created
#

use strict;
use warnings;
use Data::Dumper;
use feature 'say';
use numberoper;

my $op = numberoper::new;

$op->add;
$| = 1;



# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

