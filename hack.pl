=head
sub solveMeFirst{
	($x,$y) = @_; 
	$r = $x + $y;
	return $r;   
}


$choice1 =<STDIN> ;
$choice2 =<STDIN> ;
$res = solveMeFirst($choice1 , $choice2);
print "$res" ;
=cut
use Data::Dumper;

#!/usr/bin/perl


$n = <STDIN>;
chomp $n;
$a_i = 0;
@a = ();
while($a_i < $n){
	my $a_temp = <STDIN>;
	my @a_t = split / /,$a_temp;
	push @a,\@a_t;
	$a_i++;
}

print Dumper $a;
