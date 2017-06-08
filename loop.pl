
#!/usr/bin/perl -w

use strict;
use feature 'say';

# Ex for last : only exit from one loop

for(my $i = 0 ; $i < 5 ; $i++){
	say "i=$i";
	for (my $j=0; $j < 5; $j++) {
		if ($j == 3) {
			say $j;
			last;
		}
	}
}
