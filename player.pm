package player;

use strict;
use warnings;

sub new
{
	 my $pr={name=>undef,score=>0}
	 bless $pr,__PACKAGE__;
	 return $pr;
}

sub creator{
	my ($self,$name)=@_;
	$self->{name}=$name;
}
1;
