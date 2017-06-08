
#!/usr/bin/perl -w

use strict;
use warnings;

my %hash1;
if (%hash1){
	print "thre";
}else{
	print "not thre";
}
exit;
my $hash = {
	lang  => '',
	page => 2
};

if($hash->{lang}){
	print "lang exist";
} else{
	print "not exist";
}
