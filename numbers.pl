#! /usr/bin/env perl




my @input =<STDIN>;
my @sorted_num=sort(@input);
my $len=scalar @sorted_num;

for ($i=1;$i<$len;$i++)
{
 if($sorted_num[-1]==$a)
 {
  print "$sorted_num[-1] is sum of $a";
  break;
 }
 my $a+=$sorted_num[$i];
}
print @sorted_num;
print "end";
print $sorted_num[-1];
