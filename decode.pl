
#!/usr/bin/perl -w


use strict;
use Encode qw /is_utf8 decode/;
use feature qw/say/;

my $str = "López";

say "str: => $str";
my $flg = is_utf8($str);

say "B4 FLA => $flg";
$str = decode('utf-8', $str);


say "After decode str: => $str";

my $flg = is_utf8($str);

say "FLA => $flg";


$str = decode('utf-8', $str);

say "2:After decode str: => $str";
