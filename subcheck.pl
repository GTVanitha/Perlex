
#!/usr/bin/perl -w
use strict;
use Data::Dumper;

# array ref value is changing inside subroutine

sub main {
	my $b = {
		1 => ['a'],
		2 => ['b'],
		3 => ['c']
	};

my 	$c = {};
	my $a = [1,2,3];
	test($c,{b => $b, a =>$a});
	print "==========\n";
	print Dumper $a;
	print Dumper $c;
	print Dumper $b;
}

main();
sub test {
	my ($c, $x) = @_;

	print "------",Dumper $c;
	print "------",Dumper $x;

	my $a1 = $x->{a};
	my $b1 = $x->{b};

	$b1->{'xxx'} = 1;
	$c->{'XXXX'} = 2;

	foreach my $a (@$a1) {
		$a = 'a' if ($a == 1);
	}

	foreach my $k (keys %$b1) {
		$b1->{$k} = '1' if ($k = 1);
	}
=head
	foreach (0..5)
	{
		return (1,$_) if ($_ == 3);
	}
=cut
	print Dumper $a1;
	print Dumper $b1;
}

#my $ret = test(1,2,3);

#print $ret;
