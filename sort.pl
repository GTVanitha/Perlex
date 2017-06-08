
#!/usr/bin/perl -w

use strict;
use feature 'say';
use Data::Dumper;

my $data = {
3 =>[	[2,3,4]],
2 =>[	[4,2,6],
    	[2,2,5]],
8=>	[[4,8,7]],
9=>	[[3,9,6]]
};


=head
@$data = sort { $b->[1] <=> $a->[1] } @$data;

print "b4 sort:" .Dumper $data;
map { pop $_ } @$data;
=cut

my $data1;
foreach( reverse sort keys %$data) {
	push (@$data1, @{$data->{$_}});
}
print "\nAfter sort:".Dumper $data1;

