#! /usr/bin/perl -w

use strict;

my $word = "10.10.10.10/32";
my $patrn = '^(.+?)(?:/(.+))?$';
#my ip_pattern = '(?:[0-9]|[0-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|25[0-5])';
#my net_pattern = '([0-9]|1[0-9]|2[0-9]|3[0-2])';
if ($word !~ /$patrn/ig){
	print "\nnot match$1 --- $2 --\n"

}
else {
	print "\nmatch$1--$2==\n";
}
exit;

#YYYY-MM-DDThh:mm:ss.ss
#YYYYMMDDThhmmss[+-]hhmm
#YYYY-MM-DDThh:mm:ss[+-]hh:mm
#YYYYMMDDThhmmss[+-]hh
#YYYY-MM-DDThh:mm:ss[+-]hh

#YYYYMMDDThhmmss
#YYYY-MM-DDThh:mm:ss
#YYYYMMDDThhmmssZ
#YYYY-MM-DDThh:mm:ssZ

#YYYYMMDDThhmmss.ss
#YYYY-MM-DDThh:mm:ss.ss
#YYYYMMDDThhmmss.ss[+-]hhmm
#YYYY-MM-DDThh:mm:ss.ss[+-]hh:mm

#2015-03-05T09:21:58.09+42-23

my $time = '2015-03-05T09:21:58.09+34:78';
my $pattern1 = '(?:\d{8}T\d{6})'; #YYYYMMDDThhmmss
my $pattern2 = '(?:\d{4}-\d{2}-\d{2}T(?:\d{2}:){2}\d{2})'; #YYYY-MM-DDThh:mm:ss
my $pattern = "(?:$pattern1 | $pattern2)";

my $complete_pattern =
"(?:(?:$pattern"."Z?)". # YYYYMMDDThhmmss | YYYY-MM-DDThh:mm:ss | YYYYMMDDThhmmssZ | YYYY-MM-DDThh:mm:ssZ
"|".
"(?:$pattern2".'[+-](?:\d{2}:\d{2}))'. # YYYY-MM-DDThh:mm:ss[+-]hh:mm
"|".
"(?:$pattern1".'[+-](?: (?:\d{4})))'. # YYYYMMDDThhmmss[+-]hhmm
"|".
"(?:$pattern".'[+-]\d{2})'. # YYYYMMDDThhmmss[+-]hh | YYYY-MM-DDThh:mm:ss[+-]hh
"|".
"(?:$pattern".'.\d{2})'. # YYYYMMDDThhmmss.ss | YYYY-MM-DDThh:mm:ss.ss
"|".
"(?:$pattern1".'.\d{2}[+-]\d{4})'. # YYYYMMDDThhmmss.ss[+-]hhmm
"|".
"(?:$pattern2".'.\d{2}[+-]\d{2}:\d{2}))'; #YYYY-MM-DDThh:mm:ss.ss[+-]hh:mm



#my $complete_pattern1 = $pattern ."Z?";

if ($time =~ /^$complete_pattern$/x){
print "MATCH\n\n";
print $complete_pattern ."\n\n";
}else{
	print "\nNOT match\n";
}

exit;



my $data->{value} = "/asset/download/bc22c7ea83adcfa64291e08e030567d4e650bf18.sln16";

	$data->{value} =~ s/^.+\/(.+\.sln16)$/$1/i;

	print $data->{value};
print "\n";

exit;



#=head
my $str='Linux vanitha-exceleron 3.13.0-32-generic #57-Ubuntu SMP Tue Jul 15 03:51:08 UTC 2014 x86_64 x86_64 x86_64 GNU/Linux';
my %replace = (
	Linux => 'Unix',
	vanitha => 'vino'
);
$str =~ s/(Linux|vanitha)/$replace{$1}/g;
#$str =~ s/Linux/Unix/g;
print "\n$str\n";
#=cut
=head
if ( $str =~ /.*?(\d.+)?#/ )
{
	print $1;
}
=cut
=head
my %replace = (
	quick => "slow",
	lazy  => "energetic",
);

my $regex = join "|", keys %replace;
$regex = qr/$regex/;
print "\nRegex=> $regex\n";

my $s = "The quick brown fox jumps over the lazy dog lazy in quick";

$s =~ s/(quick|lazy)/$replace{$1}/g;

print "$s\n";
=cut
