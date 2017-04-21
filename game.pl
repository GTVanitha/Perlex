use strict;
use warnings;

use Hangman::Word;
use Hangman::Player;

print "Player1 please enter your name: ";
my $p1name = <STDIN>;
chomp $p1name;

my $p1 = new Hangman::Player(name => $p1name);

print $p1->name() . " enter secret word: ";
my $word = <STDIN>;
chomp $word;

print "Player2 please enter your name: ";
my $p2name = <STDIN>;
chomp $p2name;

my $p2 = new Hangman::Player(name => $p2name);

$secret = new Hangman::Word(word => $word, player1 => $p1, player2 => $p2);
while (!$secret->is_solved() && $p2->has_attempts_remaining()) {
	print $secret->guessed_word() . "\n";
	print "Misses: " . join(",", $p2->misses()) . "\n";
	print "Chances Remaining: " . join(",", $secret->chances_remaining()) . "\n";
	print $p2->name() . " enter a letter to make a guess: ";
	my $letter = <STDIN>;
	chomp $letter;

	my $result = $secret->validate(attempt => $letter, player2 => $p2);
	if ($result) {
		print "You guessed it right!\n";
	} else {
		print "You missed it\n";
	}
}

if ($secret->is_solved()) {
	print $p2->name() . ", you win!\n";
} else {
	print $p1->name() . ", you win!\n";
}
