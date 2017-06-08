
#!/usr/bin/perl 
use strict;
use warnings;

use Data::Dumper;

my $x = [];
if (!$x || ref($x) eq 'ARRAY' and !@$x) {
	print "---NO\n";
} else  {
	print "data Exists\n";
}
exit;

my @a = ('Push','Tweet');
#print "=============================".@a[0];
my $q = 'Push';
print ($q ~~ @a);
print "\n";
exit;
my $max = {
	1 =>{
	'SMS' => 11,
	'Email' => 12,
},
3 =>{
	'Push' => 13
}
};

foreach my $i(1, 2, 3) {
	print "----$i\n";
#	print "Exists\n" if (grep {exists $max->{$i}->{$_} } @a);
	foreach my $j (0..scalar(@a)) {
		print "------".@a[$j]."\n";
		if($max->{$i}->{@a[$j]}) {
			print "EXISTS\n";
		} else {
			print @a[$j];
			delete @a[$j];
		}
	}
}

# To check method not exist in @a
foreach my $method (keys %{$max}) {
	if (!grep { $_ eq $method} @a) {
		print "\nMethod not  exist in supported: $method";
	}
}


exit;
my @array1 = (1,1,3,23,21,12,4);
my $array2 = [2,2];
my $array3;

print @array1[1..$#_];

exit;
my $array1;
push(@$array3,$array1, $array2);
print "\n".Dumper ($array3)."\n";
exit ;
foreach(@{$array1}) {
	print "\n-----\n";
}
print "\n===not value\n";
exit;
my $arr = ["hagsi","qkgjd","qkjdg"];
my @array;
if(@array){
	print "-------EXISTS----";
}
exit;
	my $i = 0;
foreach(@{$arr}){
	print $arr->[$i]."\t---";
	$i++;
}

exit;
push(@{$arr},'invalid','reason');
print Dumper $arr;
exit;
print "yipeeeeeeeeeeee has value" if (grep { $arr->[$_] } (0 .. scalar(@{$arr}-1)));
print Dumper $arr;
exit;

my $t = scalar(@$arr) > 0 ? "yes" : "no";
print $t ."\n";
exit;
my @arr;
my $x;
if (@arr){
	foreach my$i(@arr){
		print Dumper $i;
	}

	print "\narray";
}else{
	print "not array";
}
exit;
my $hash = {
	Email => 'n',
	Phone => 'y',
	SMS => 'n'
};

print Dumper \@arr ;
my @arr1;
foreach $x (keys %$hash){
	if ($hash->{$x} eq 'y'){
		unshift(@arr1, $x);
	}else {
		push (@arr1,$x);
	}
}
print Dumper \@arr1;


my $queue_data->{Destination} = "+11234173248737";
$queue_data->{Destination} =~ s/^\+1//;
print $queue_data->{Destination};

exit;

my ($no_call,$res);
 $res = "No Calls are currently available";
 push(@{$no_call},$res);

 print Dumper $no_call;
