#!/usr/bin/perl -w
use strict;
use warnings;
my @referenceId = ('534906178641','519307178732','514117111815','9320743672','505860113381','543426120636','518414177658','502401107142','');
my @ProfileId = (614 ,621 ,1180,1550,3524,3603,4350,4629,4717,5066,5855,7927,10399,10484,12897,13066,13239,14477,);

foreach my $prof_id (@ProfileId) {
print q/insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(/.$prof_id.q/,20,'12345');/."\n";
}



qw/insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(14477,15,'45');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(621,15,'30');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(7927,15,'20');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(1550,15,'10');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(4717,15,'20');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(14477,5,'550');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(621,5,'101');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(7927,5,'153');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(1550,5,'130');
insert into "AlertParameterValue" ("ProfileId","ParameterDefinitionId","Value") values(4717,5,'201');/;

