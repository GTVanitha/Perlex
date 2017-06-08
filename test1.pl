use strict;
use warnings;


my $y = 0;
if(defined $y){
	print $y;
}
exit;

our $x = 10;
sub demo {
	print $x;
}

{
	local $x = 15;
	my $x = 10;
	demo();
}
