#!/usr/bin/perl -w
use strict;
use Getopt::Std;

my %options = ();
getopts("hU:R:I:u:", \%options);

&op_help if (defined $options{h} );
#&op_help if (!defined $options{U} or !defined $options{I} or (!defined $options{R}  and !defined $options{u}));

print "Utility => $options{U}\n" if defined $options{U};
print "Role => $options{R}\n" if defined $options{R};
print "User => $options{u}\n" if defined $options{u};

# Utility Id
my $Utility_id = $options{U};


# IP
my ($ip,$net_mask);
if (defined $options{I} ){
print "Ip Address => $options{I}\n" if defined $options{I};
my	$pattern = '^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})$';
my	$pattern1 = '^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\/(\d{1,3})$';
my	$pattern2 = '(^(\d{1,3})\.(\d{1,3})\.(\d{1,3})\.(\d{1,3})\/(\d{1,3}),){1,}$';
	if ($options{I} =~ /$pattern/ and ($1 <= 255 and $2 <=255 and $3 <= 255 and $4 <= 255)){
		print "\nIP Matched";
		$ip = $options{I};
	}
	if ( $options{I} =~ /$pattern2/ and ($1 <= 255 and $2 <=255 and $3 <= 255 and $4 <= 255 and $5 <= 32)){
		$ip = "$1.$2.$3.$4";
		$net_mask = $5;
	}
	else{
		print "\nIP NOT Matched";
	}
}



sub op_help 
{
	print <<EOF;
	This script is to whitelist the ip. It will make the entry in Ipwhitelist Table with your input.

	Options: 

	h - help
	U - Utility (ESITEST) 
	u - user (vanitha\@exceleron.com)
	R - Role (Util.Manager)
	I - IP Address (10.10.10.10) or 10.10.10.10/24 or 10.10.10.10,11.11.1.1 or 10.10.10.10/24,11.11.1.1/24

	**Note : U, (u/R), I is Mandatory**.

EOF
}
=head
if ( $options{I} =~ m/^(?:(?:$ip_pattern\.){3}$ip_pattern,?){1,}$/ ){ # For multiple IP
	 my @ips = split(/,/, $options{I});
	 foreach (@ips){
		 $params->{'ip'} = $_;
		 print $_ , "\n";
#        create_ipwhitelist($params);
	 }
 }
 elsif ($options{I} =~ m/^(?:(?:$ip_pattern\.){3}$ip_pattern\/(?:$net_pattern),?){1,}$/){ # For multiple IP with netmask
	 my @ips = split(/[,\/]/, $options{I});
	 my $i = 0;

	 for ( 0.. $#ips) {
		 if ($i%2 == 0){ # Skipping iteration to get ip and netmask 
			 $params->{'ip'} = $ips[$i];
			 $params->{'netmask'} = $ips[$i + 1];
			 print "second IF",Dumper $params ;
#            create_ipwhitelist($params); # function call
		 }
		 $i++; 
	 }
 }
 else{
	 print "\n\n ** Please check your IP List ** \n\n";
	 &op_help;
 }

=cut
