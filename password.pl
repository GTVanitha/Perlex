#!/usr/bin/perl -w

#
# password.pl
#
# Developed by Sheeju Alex <sheeju@exceleron.com>
# Copyright (c) 2016 Exceleron Inc
# Licensed under terms of GNU General Public License.
# All rights reserved.
#
# Changelog:
# 2016-03-14 - created
#

# $Platon$

use strict;
use feature 'say';
use Digest;
use Authen::Passphrase::BlowfishCrypt;

if ($ARGV[0] eq '--help') {
say "perl password.pl 1 password MD5 hash" ;
say "1 -> create hash 2 -> verify password \h hash -> any md5 hash";
exit;
}

my $salt;
open(my $rndfile, "</dev/urandom") || die $!;
read($rndfile, $salt, 16) || die $!;
close($rndfile);

=pod
my $blow_obj = Authen::Passphrase::BlowfishCrypt->new(
		cost =>12,
		salt => $salt,
		hash => 'pass'
	);

print $blow_obj->as_crypt();
exit;
=cut
#use passwordhash;
# password


my $op = $ARGV[0] || 1;

my $password = $ARGV[1] || 'Vani123!@' ;
my $type = $ARGV[2] || 'MD5';
my $passwordhash = $ARGV[3];

say "ORIG password: $password";
say "Password type: $type";


say "salt:$salt";
if($op == 1) {
	my $h1 = generate_hash($password, $salt, $type);
	say "HASH:$h1";

} else {
	
	verify($passwordhash, $password, $salt, $type);
}

sub generate_hash {

	my ($pwd, $salt, $hash_type ) = @_;

	my $hash_str = "TEST Password".$pwd;

	my $digest = Digest->new($hash_type);
	$digest->add($hash_str);

	if ($hash_type eq 'Bcrypt') {
		$digest->salt($salt);

		$digest->cost(8);
	}
	my $hash = $digest->digest();

#	say "passwordhash: $hash";
	return $hash;


}

sub verify {
	my ($pwd, $salt, $type, $passwordhash) = @_;

	say "verify password";

	my $hash = generate_hash($pwd, $salt, $type);

	if ($hash eq $passwordhash) {
		say "equal";
	}
	else {
		say "not equal";
	}
}









=head
# using Entropy methods
use Data::Entropy::Algorithms
qw(rand_bits);

my $str = rand_bits(128);

say "STRING:".$str;
say "length of string:".length($str);
=cut

# vim: ts=4
# vim600: fdm=marker fdl=0 fdc=3

