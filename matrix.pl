#!/usr/bin/perl 

#
# matrix.pl
#
# Developed by Vanitha T <vanitha@exceleron.com>
# Copyright (c) 2017 Exceleron Software, LLC.
# All rights reserved.
#
# Changelog:
# 2017-03-10 - created
#

use strict;
use warnings;
use feature 'say';
use List::Util qw/min/;

my @matrix;
my $operations = [];
my $line1 = 1;

my $line_counter = 0;

my $row_counter = 0;

my $num_of_rows;
my $num_of_cols;
my $num_of_operations;

while (my $f_row = <STDIN>) {

	chomp $f_row;

	my @input = split( ' ', $f_row );

	if ( $line1 ) {

		# First line should always be 3 integers
		$num_of_rows = $input[0];
		$num_of_cols = $input[1];

		$num_of_operations = $input[2];

		$line1 = 0;

		next;
	}

	push( @{$matrix[$row_counter]}, @input );

	$row_counter++;
	
	last if ($row_counter == ($num_of_rows + $num_of_operations));
}

my @operations = splice( @matrix, $num_of_rows, $num_of_operations );

for ( @operations ) {

	add_print( @$_ );
}

sub add_print {

	my ( $row, $col, $sub_mat, $add ) = @_;

	my $row_index = $row - 1;
	my $col_index = $col - 1;

exit if (($row < 1 or $row > $num_of_rows) or ($col <1 or $col > $num_of_cols) or ($sub_mat <1 or $sub_mat > min($num_of_rows,$num_of_cols)) or ($add < -10**6 or $add > 10**6));

	for ( my $i = 0; $i < $sub_mat; $i++ ) {

		for ( my $j = 0; $j < $sub_mat; $j++ ) {

			my $cur_val = $matrix[$row_index+$j][$col_index+$i];
			my $new_val = $cur_val + $add;

			exit if ($new_val < -10**6 or $new_val > 10**6);
			$matrix[$row_index+$j][$col_index+$i] = $new_val;
		}
	}
}

for ( @matrix ) {

	say "@$_";
}
