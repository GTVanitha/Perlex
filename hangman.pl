#! usr/bin/env perl

use strict;
use warnings;
use secretword;

my @ret_val;
my @gword;
print "player1:\nEnter the secret word";
my $sword=<STDIN>;
chomp $sword;


my $sword_len=length($sword);
 for(my $i=0;$i<$sword_len;$i++)
 {
  @gword[$i]="*";
 }


 my $sw=secretword->new();
until($sw->ismissed($sword))
{
 print "player2:\n Enter your guess letter";
 print "\n@gword\n";
 my $gletter=<STDIN>;
 chomp $gletter;

 @ret_val=$sw->val_attempt(sword=>$sword,letter=>$gletter,gword=>@gword);

print @ret_val;

}
print "your attempt is over";
