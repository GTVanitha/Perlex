package secretword;

use strict;
use warnings;

sub new
{
	my ($class,%params)=@_;
	my $sw={sword=>undef,gletter=>undef};
	bless $sw,__PACKAGE__;
	return $sw;
}


sub val_attempt{
 	my ($self,$sword,$gletter,@gword)=@_;
 	$self->{gletter} =$gletter;
        my $offset=0;
	my @posvalue=0;
	my $pos=index($sword,$gletter,$offset);
	while($pos!=-1)
 	{
	 @posvalue=$pos;
	 $offset=$pos+1;
	 $pos=index($sword,$gletter,$offset);
	}
	foreach(@posvalue)
	{
	 $gword[$_]=$gletter;
	}
	return @gword;
}


1;
