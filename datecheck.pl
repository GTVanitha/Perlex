#!/usr/bin/perl -w
use DateTime::Format::ISO8601;
use  DateTime::Format::CLDR;
use feature qw/say/;
use strict;


#my $cldr = DateTime::Format::CLDR->new;

#my $pattern = $cldr->pattern($datestr);

#say $pattern;

#my $dt = DateTime::Format::ISO8601->parse_datetime($datestr);
#my $iso8601 = DateTime::Format::ISO8601->new;
#my $dt = $iso8601->parse_datetime($datestr);
=head
if ($dt) {
	print $dt . "\n";
} else{
	print "no result\n" ;
}
=cut

my $datestr = '2015-02-24T18:48:00.987';
# say is_ISO8601_format($datestr);
	say "Date b4 chop: $datestr";
my $date = chop_millisec($datestr);
	say "Date after chop: $date";
sub chop_millisec
{
	#my $self = shift;
	my $date = shift;

	my $pattern = '[.,]\d{1,3}$';

	$date =~ s/$pattern//;

	return $date;

}
exit;

sub is_ISO8601_format
{
	my ( $date_time) = @_;

	return 0 unless $date_time;

	# Check the time to match ISO8601 formats (5.4.1 and 5.4.2)
	# http://search.cpan.org/~jhoblitt/DateTime-Format-ISO8601-0.08/lib/DateTime/Format/ISO8601.pod#5.4.1

	# If we try to use single regex for two patterns, it will be difficult to address some formats
	my $pattern1 = '(?:\d{8}T\d{6})';                             #YYYYMMDDThhmmss
	my $pattern2 = '(?:\d{4}-\d{2}-\d{2}T(?:\d{2}:){2}\d{2})';    #YYYY-MM-DDThh:mm:ss
	my $pattern  = "(?:$pattern1 | $pattern2)";

	my $complete_pattern =
	"(?:(?:$pattern" . "Z?)" .    # YYYYMMDDThhmmss | YYYY-MM-DDThh:mm:ss | YYYYMMDDThhmmssZ | YYYY-MM-DDThh:mm:ssZ
	"|" . "(?:$pattern2" . '[+-](?:\d{2}:\d{2}))' .     # YYYY-MM-DDThh:mm:ss[+-]hh:mm
	"|" . "(?:$pattern1" . '[+-](?: (?:\d{4})))' .      # YYYYMMDDThhmmss[+-]hhmm
	"|" . "(?:$pattern" . '[+-]\d{2})' .                # YYYYMMDDThhmmss[+-]hh | YYYY-MM-DDThh:mm:ss[+-]hh
	"|" . "(?:$pattern" . '.\d{2})' .                   # YYYYMMDDThhmmss.ss | YYYY-MM-DDThh:mm:ss.ss
	"|" . "(?:$pattern1" . '.\d{2}[+-]\d{4})' .         # YYYYMMDDThhmmss.ss[+-]hhmm
	"|" . "(?:$pattern2" . '.\d{2}[+-]\d{2}:\d{2})' .   # YYYY-MM-DDThh:mm:ss.ss[+-]hh:mm
	"|" . "(?:$pattern2" . '(?:[.,]\d{1,3})?))';        # YYYY-MM-DDThh:mm:ss.sss[For ISO8601:2004(E) 4.2.2.4]

	return $date_time =~ m/^$complete_pattern$/x ? 1 : 0;
}

