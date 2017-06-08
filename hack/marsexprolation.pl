#!/usr/bin/perl

$string1 = <STDIN>;
chomp $string1;

my $len = length($string1);
#exit if ($len < 1 or $len > 99 or $len%3 !=0);

my $len_new = $len/3;
 print "length new: $len_new\n";
 print "length: $len\n";

for(0..$len_new) {
	$string2 .= 'SOS';
}

my $count=0;

for(0 .. length($string1)) {
	my $char = substr($string2, $_, 1);
	if(substr($string1, $_, 1) and $char ne substr($string1, $_, 1)) {
		$count++;
	} 
}
print $count;
