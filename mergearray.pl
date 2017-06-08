#!/usr/bin/perl -w
use strict;
use Data::Dumper;
use Array::Utils qw/:all/;


my @arr = ('a','c','e');
#merge hash

my $hash1 = {
		11 => {
			3 => 'c',
			4 => 'd'
		},
		22 => {
			5 => 'e',
			6 => 'f'
		},
		33 => {
			7 => 'g',
			8 => 'h'
		}
};

my @arr3 = values %{$hash1->{11}};
my @diff = array_minus(@arr , @arr3);

print Dumper \@diff;
exit;

my $prof_hash;

 $prof_hash->{11}->{'Params'} = {
	    13 => 'bb',
		12 => 'aa'
};

print "HASH1 => ".Dumper $hash1;
print "PROF HASH => ".Dumper $prof_hash;
foreach (keys %{$hash1}){
	@{$prof_hash->{$_}->{'Params'}}{keys %{$hash1->{$_}}} = values %{$hash1->{$_}};
print "INSIDE ".Dumper $prof_hash;
}

print "OUTSIDE =>".Dumper $prof_hash;

exit;







my @arr1 = (1,2,3,4,5);
my @arr2 = ('a','b','c','d','e');

my %arr_map ;
@arr_map{@arr1} = @arr2;

#print Dumper \%arr_map;

my @array_of_profiles_params = (
	{
		ProfileId => 1,
		ParameterDefinitionId => 100,
		Value => 'Name'
	},
	{
		ProfileId => 1,
		ParameterDefinitionId => 200,
		Value => 'City'
	},
	{
		ProfileId => 3,
		ParameterDefinitionId => 100,
		Value => 'Name'
	}
);

my $profile_info = {
	1 => 'AKHSJHFH89667868',
	2 => 'SKJGDSJG767878676',
	3 => 'IDJDAHDDJN685563453'
};
my @array_of_hashes = ();

my $hash;
foreach my $entry (@array_of_profiles_params){
	$hash->{$entry->{ProfileId}}->{ID} = $profile_info->{$entry->{ProfileId}};
	$hash->{$entry->{ProfileId}}->{Params}->{$entry->{ParameterDefinitionId}} = $entry->{Value};
	$hash->{$entry->{ProfileId}}->{Params}->{AccountCISID} = $profile_info->{$entry->{ProfileId}},
	@{$hash->{$entry->{ProfileId}}{Params}}{keys %arr_map} = values %arr_map,
	#push(@array_of_hashes, $hash);
	#undef $hash;
}
print Dumper $hash;
@array_of_hashes = values %{$hash};
print Dumper(\@array_of_hashes);
=head

my $profile_hash;
my @profiles;

foreach my $alert (@$alert_param_values){
	my $pid = $alert->{ProfileId};
	my $param_def_id = $alert->{ParameterDefinitionId};

	$profile_hash->{$pid}->{'ID'} = $profile_info->{$pid}; 
	$profile_hash->{$pid}->{'Params'}->{$alertdef2param->{$param_def_id}} = $alert->{Value};
	$profile_hash->{$pid}->{'Params'}->{'AccountCISID'} = $profile_info->{$pid};
	@{$profile_hash->{$pid}->{'Params'}}{keys %param_value_map} = values %param_value_map; #appending metadispatch params 
	$profile_hash->{$pid}->{'UtilityInfo'} = $utility_info;
	$profile_hash->{$pid}->{'AlertTypes'} = \@alert_type;
}
=cut
