#! usr/bin/env perl

use strict;
use warnings;

my @name1=("arun","mani","raj","arunraj","arunkumar","arunmani");
my @name=sort{$a<=>$b}@name1;
my @out=();
$len=scalar @name;

for($i=0;$i<$len;$i++)
{
 for ($j=0;$j<$len;$j++)
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

