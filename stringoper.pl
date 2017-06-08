#! usr/bin/env perl

use strict;
use warnings;

my @name1=("arun","mani","raj","arunraj","arunkumar","arunmani");
my @name=sort @name1;
my @out=();
my $len=scalar @name;

for(my $i=0;$i<$len;$i++)
{
	for (my $j=0;$j<$len;$j++)
	{
		if($i!=$j)
		{
			if(index($name[$i],$name[$j])!=-1)
			{
				push(@out,$name[$i]);
				print "$name[$j]=@out\n";
				@out=();
			}
		}
	}
}
