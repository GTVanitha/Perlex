use strict;
use warnings;

package foo;
@ISA = qw(Exporter);
sub sub1 {
print "sub1";
}

package goo;
@EXPORT = qw()
