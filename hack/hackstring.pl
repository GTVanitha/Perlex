#!/usr/bin/perl
use Data::Dumper;
use feature 'say';
#my @expected_str = ('h','a','c','k','e,','r','r','a','n','k');
=head
$q = <STDIN>;
chomp $q;
my @str_arr =();
for my $a0 (0..$q-1){
	$s = <STDIN>;
	chomp $s;
	# your code goes here
	push (@str_arr, $s);
}
=cut
my @str_arr = ('hereiamstackerrank','hackerworld');
#my @str_arr = ('hereiamstackerrank');
print Dumper \@str_arr;

foreach my $str(@str_arr){

	if ($str =~ /h.*a.*c.*k.*e.*r.*r.*a.*n.*k/){
		say 'yes';
	} else {
		say 'no';
	}

#	my @split_str = split('',$str);
#	my $j = 0;
#	my @index =();
#	# TODO : logic
#
#	for ( my $i = 0; $i < scalar(@split_str) && $j < scalar(@expected_str); $i++) {
#		if ($split_str[$i] == $expected_str[$j]){
#			$j++;
#		}
#	}
#	if ($j == scalar(@expected_str)) {
#		say "yes";
#	} else {
#		say "no";
#	}

#	foreach my $v( @expected_str){
#		my $j=0;
#
#		foreach my $v1( @split_str){
#
#			if ($v eq $v1) {
#				$inx = $j if(!grep(/$j/,@index));
#				delete $split_str[$j];
#				last;
#			}
#			$j++;
#		}
#		push (@index, $inx);
#
#		$i++;
#	}

#	print Dumper \@index;
#
#	if (@index and check_consecutive(\@index)){
#		print "yes" ;
#	} else {
#		print "no";
#	}
}

sub check_consecutive
{
	my @index_array = shift;
	my $return;

	for (my $i = 0; $i <= scalar(@index_array); $i++){
		if($i < $i+1){
			$return = 1;
		} else {
			$return = 0;
		}
	}
	return $return;
}

