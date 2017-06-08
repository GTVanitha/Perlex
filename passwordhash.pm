
#
# passwordhash.pm
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-03-14 - created
#

# $Platon$

package passwordhash;

use strict;
use Moose;
use feature 'say';

has 'salt' => (
	is     => 'ro',
	isa    => 'Str',
	reader => 'get_salt',
);


say "FORM PM FIle:".$self->get_salt;

1;

__END__

=head1 NAME

passwordhash - <<<description of module>>>

=head1 SYNOPSIS

  use passwordhash;

  my $xxx = new passwordhash;

=head1 DESCRIPTION

The passwordhash module allows you ...
<<<your description here>>>

=head2 EXPORT

<<here describe exported methods>>>

=head1 SEE ALSO

=head1 AUTHORS

Sheeju Alex, <sheeju@exceleron.com>

=cut

# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

