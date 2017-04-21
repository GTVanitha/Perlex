#! /usr/bin/perl

#use strict;
#use warnings;
use Data::Dumper;
my %buses=();
%buses=( "30A" => { "1" => [CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Thennur,PuthurNalroad,GH,Western,BishopClg,KumaranNgr,SrinivasanNgr,GeethaNgr,U.KThirumalai,Rettavaikal,RajivGandhiNgr,KonarChattram,SomarasamPettai,AravathurThagaraKottagai,VayalurcrossRoad,Vayalur,MullikarumburCross,Ettarai,PoosampattiCrossRoad,ViyalanMedu,Puliyur,Sepplapatti,Neithalurcolony,Subramaniyapuram,Kattanimedu,Neithalur] },
        "87c" => { "1" => [CPC,Malakottai,Singarathoppu,Thennur,PuthurNalroad,GH,Western,BishopClg,KumaranNgr,SrinivasanNgr,GeethaNgr,U.KThirumalai,Rettavaikal,RajivGandhiNgr,KonarChattram,SomarasamPettai,AravathurThagaraKottagai,VayalurCrossRoad,Vayalur,MullikarumburCross,EttaraiPaalam,KulumaniAathupaalam,Koppu,Ayilapettai,Suriyanur,Melapatti,Parapatti,Kavandampatti,Othakadai,Panayur,NeithalurColony ] },
	"87d" => { "1" => [CPC,Malakottai,Singarathoppu,IbrahimPark,Thennur,PuthurNalroad,GH,Western,BishopClg,KumaranNgr,SrinivasanNgr,GeethaNgr,U.KThirumalai,Rettavaikal,RajivGandhiNgr,KonarChattram,SomarasamPettai,AravathurThagaraKottagai,VayalurCrossRoad,Vayalur,MullikarumburCross,EttaraiPaalam,KulumaniAathupaalam,Koppu,Ayilapettai,Suriyanur,Melapatti,Parapatti,Kavandampatti,Othakadai,Panayur,NeithalurColony ] },
        "88" => { "1" => [CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Gandhimarket,Palakarai,WareHouse,Melaputhur,EyeHospital,HeadpostOffice,RCSchool,LICOffice,RailwayJunction,CBS,MannarpuramRoundana,ArabiClg,KajamalaiColony,IndianBankColony,Simco,SundarNgr,SundarNgrHstl,SabariMill,LICColony,AathiparasathiKovil,Poonga,PillaiyarKovil,Kknagar,ThendralNgr,RiceMill,UdayanPatti,EBColony,ItchikaamalaiPatti,Oolaiyur,Thirumalaisamuthiram,Mullipatti,Singathaakurichi,Aathupaalam,KolukattaikudiCross,Kolapatti,Aavur,sengalakudi],
                  "2" => [CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Gandhimarket,Palakarai,WareHouse,Melaputhur,EyeHospital,HeadpostOffice,RCSchool,LICOffice,RailwayJunction,CBS,MannarpuramRoundana,ArabiClg,KajamalaiColony,IndianBankColony,simco,SundarNgr,SundarNgrHstl,SabariMill,LICColony,AathiparasathiKovil,Poonga,pillaiyarKovil,Kknagar,ThendralNgr,RiceMill,UdayanPatti,EBColony,Itchikaamalaipatti,Oolaiyur,Thirumalaisamuthiram,Mullipatti,Singathaakurichi,Aathupaalam,KolukattaikudiCross,kolukattaikudi ],		   "3" => [CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Gandhimarket,Palakarai,WareHouse,Melaputhur,EyeHospital,HeadpostOffice,RCSchool,LICOffice,RailwayJunction,CBS,MannarpuramRoundana,ArabiClg,KajamalaiColony,IndianBankColony,Simco,SundarNgr,SundarNgrHstl,SabariMill,LICColony,AathiparasathiKovil,Poonga,PillaiyarKovil,Kknagar,ThendralNgr,RiceMill,UdayanPatti,EBColony,ItchikaamalaiPatti,Oolaiyur,Thirumalaisamuthiram,Mullipatti,Singathaakurichi,Aathupaalam,KolukattaikudiCross,Kolapatti,Aavur,sengalakudi]
        },
	#"52" => { "1" => [CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Gandhimarket,Palakarai,WareHouse,SabariHospital,Kajapettai,sangiliyandapuram,MariyamTheatre,MrRadhaColony,OutpostPoliceStation,NalRoad,Senthuneerpuram,AangineyarKovil,MuthumaniTown]},
	#"52c" => {"1" => [CPC,Malakottai,Singarathoppu,SophysCorner,Arunachalamandram,LaxshmiComplex,Thillaingr1st,MakkalMandram,Thillaingr10th,Thillaingr11th,Thennur,PuthurNalRoad,GH,MathuramHospital,Court,AmericanHospital,HeadPostOffice,RCSchool,LICOffice,RailwayJunction,CBS,RailwayJunctionOuter,RCSchool,HeadPostOffice,EyeHospital,Melaputhur,WareHouse,SabariHospital,Kajapettai,Sangiliyandapuram,mariyamTheatre,MrRadhaColony,OutpostPoliceStation,nalRoad,Senthuneerpuram,AangineyarKovil,MuthumaniTown],
	#	   "2" => [CPC,Malakottai,Singarathoppu,SophysCorner,Arunachalamandram,LaxshmiComplex,Thillaingr1st]}

);
my @source_buses;
my $flag = 0;
sub single_bus {
my ($src1,$dst1) = @_;
foreach my $k (keys %buses) {
 if( $k != $bus_no){
  foreach my $k1 (keys $buses{$k}){
    my @stops = (values $buses{$k}{$k1});

    if ( (grep( /^$src1$/i, @stops)) &&( grep( /^$dst1$/i, @stops)) ) {
#		push(@single,$k);
#		push(@singleno,$k1);
print "Bus $k $k1 $src1 $dst1\n";
	   $flag++;
	print "flag is $flag\t";
    }
   }
  }
 }

return $flag;
}

#double bus
sub double_bus {
my ($src1,$dst1) = @_;
print "No single bus available"."\n";

 foreach my $k (keys %buses) {
  foreach my $k1 (keys $buses{$k}){
    my @stops = (values $buses{$k}{$k1});
    if ( grep( /^$src1$/i, @stops) ) {
	push(@source_buses,$k);
    }
   }
 }
foreach  my $k (@source_buses){
	  foreach $k1 (keys $buses{$k}){
		print "first bus: $k $k1"."\n";
    	   my @stops = (values $buses{$k}{$k1});
		foreach $src (@stops) {
		   single_bus($src , $dst1);
		} 
         }
 }
}


print "Enter the source";
my $src = <STDIN>;
chomp $src;
print "Enter the destination";
my $dst = <STDIN>;
chomp $dst;
my $rval=single_bus $src,$dst;
if ($rval == 0)
{
 double_bus($src,$dst);
}



