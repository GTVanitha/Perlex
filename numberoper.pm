# ========================================================================== #
# numberoper.pm  - Desc											
# Copyright (C) 2017 Exceleron Software, LLC.           			             
# ========================================================================== #

package numberoper;

sub new
{
#	my $self = shift;

	my $self = {};
	bless $self, __PACKAGE__;

	return $self;
}

sub add 
{
	my ($self, $params) =@_;

	print "from add";
}

1;
