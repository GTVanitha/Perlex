#!/usr/bin/env perl


#use Data::Dumper;
my (%student);
$tot=0;
while($Q ne "q")
{
 print "enter name";
 $name=<STDIN>;
 chomp $name;
 print "enter no of subjects";
 $scount=<STDIN>;
 chomp $scount;
 for($i=0;$i<$scount;$i++)
  {
   print "enter sub name";
   $sname=<STDIN>;
   chomp $sname;
   print "enter mark";
   $mark=<STDIN>;
   chomp $mark;
   $student{$name}{$sname}=$mark;
  }
    foreach my $n(keys %student)
   {
     foreach my $sn(keys $n{$student{$n}})
      {
	$tot+=$student{$n}->{$n};
      }
   }
 
   $student{$sname}{"total"}=$tot;
 print "enter q to end dataentry or press any key to continue";
 $Q=<STDIN>;
 chomp $Q;
}
#print Dumper \%student;

foreach (sort {$b <=> $a} keys %student)
{
 $topper=$student{$_}; 
 last;
}
print "topper is $topper";
