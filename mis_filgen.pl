#! /usr/bin/env perl

use strict;
use warnings;
use Data::Dumper;
use File::Copy;
use Getopt::Long;
use Pod::Usage;


=head1 NAME

missfilegen - generate missing files along with solution

=head1 SYNOPSIS

  missfilegen [options] --end <n>

 --prefix=s   Set s as the prefix string of the auto generated file name (default: "file")
 --start=n    Set n as the starting number (must be integer) (default: 1)
 --end=n      Set n as the ending number (must be integer)

 --help       This help text.

=cut

my ($prefix, $s_num, $e_num, $help_flag);

#defaults
$prefix = 'file';
$s_num = 1;

my $rc = GetOptions(
	'help' => \$help_flag,
	'prefix=s' => \$prefix,
	'start=s' => \$s_num,
	'end=s' => \$e_num
);

if ($help_flag) {
	pod2usage(-exitval => 0);
	die "dying";
}

if (!$rc) {
	pod2usage(-message => "Incorrect usage", -exitval => 1);
}



if (!$e_num) {
	pod2usage(-message => "Ending number is mandatory. Use --end num", -exitval => 2);
}



my $range=0;
my $s_miss_file=0;
my $miss_range=5;

#check for the starting and ending value
if ($s_num =~ /^\d+$/ && $e_num =~ /^\d+$/) {
 $range=$e_num-$s_num;
 
}
else {
 print "The second and third argument must be an integer";
}

#function cal
f_creation();
mfile_calc();

opendir(DH,"miss_files/") or die "can't open directory ";
my @files = readdir(DH);

print Dumper \@files;

=head NAME
	function for file creation
=head SYNOPSIS
	-creating a directory "gen_files" for generated_files
	-creating files inside the "gen_files" under the prefix name
=cut

=head1 Developer Documentation

=head2 f_creation

Must pass $dir and $dir should not exist OR $dir will be deleted.

=cut

sub f_creation {
	my ($dir) = @_;
  mkdir($dir) or die "could not create $dir";
  for(my $i=$s_num; $i<=$e_num; $i++) {
   qx(touch gen_files/$prefix$i);
  }
}


=head2 mfile_calc

...

=cut

sub mfile_calc {
mkdir("miss_files");
my $s_miss_file=0;
 for(my $nc=1;$nc<=$miss_range;$nc++) {
  	$s_miss_file = $s_num + int(rand($range));
	my $random_miss_range = int(rand($miss_range)) + 1 ;

 for(my $i=1;$i<=$random_miss_range;$i++) {
        move("gen_files/$prefix$s_miss_file","miss_files/");
#	unlink "gen_files/$prefix$s_miss_file";
 	$s_miss_file+=$i;
  }
 }
}


