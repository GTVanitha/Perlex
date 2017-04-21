#! /usr/bin/env perl

use Data::Dumper;

my %buses=( "30A" => { "1" => [ CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Thennur,PuthurNalroad,GH,Western,BishopClg,KumaranNgr,SrinivasanNgr,GeethaNgr,U.KThirumalai,Rettavaikal,RajivGandhiNgr,KonarChattram,SomarasamPettai,AravathurThagaraKottagai,VayalurcrossRoad,Vayalur,MullikarumburCross,Ettarai,PoosampattiCrossRoad,ViyalanMedu,Puliyur,Sepplapatti,Neithalurcolony,Subramaniyapuram,Kattanimedu,Neithalur] }, 
	"87c" => { "1" => [ CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Thennur,PuthurNalroad,GH,Western,BishopClg,KumaranNgr,SrinivasanNgr,GeethaNgr,U.KThirumalai,Rettavaikal,RajivGandhiNgr,KonarChattram,SomarasamPettai,AravathurThagaraKottagai,VayalurCrossRoad,Vayalur,MullikarumburCross,EttaraiPaalam,KulumaniAathupaalam,Koppu,Ayilapettai,Suriyanur,Melapatti,Parapatti,Kavandampatti,Othakadai,Panayur,NeithalurColony ] },
	"88" => { "1" => [CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Gandhimarket,Palakarai,WareHouse,Melaputhur,EyeHospital,HeadpostOffice,RCSchool,LICOffice,RailwayJunction,CBS,MannarpuramRoundana,ArabiClg,KajamalaiColony,IndianBankColony,Simco,SundarNgr,SundarNgrHstl,SabariMill,LICColony,AathiparasathiKovil,Poonga,PillaiyarKovil,Kknagar,ThendralNgr,RiceMill,UdayanPatti,EBColony,ItchikaamalaiPatti,Oolaiyur,Thirumalaisamuthiram,Mullipatti,Singathaakurichi,Aathupaalam,KolukattaikudiCross,Kolapatti,Aavur,sengalakudi],
		  "2" => [CPC,Malakottai,Singarathoppu,IbrahimPark,Marakadai,Gandhimarket,Palakarai,WareHouse,Melaputhur,EyeHospital,HeadpostOffice,RCSchool,LICOffice,RailwayJunction,CBS,MannarpuramRoundana,ArabiClg,KajamalaiColony,IndianBankColony,simco,SundarNgr,SundarNgrHstl,SabariMill,LICColony,AathiparasathiKovil,Poonga,pillaiyarKovil,Kknagar,ThendralNgr,RiceMill,UdayanPatti,EBColony,Itchikaamalaipatti,Oolaiyur,Thirumalaisamuthiram,Mullipatti,Singathaakurichi,Aathupaalam,KolukattaikudiCross,kolukattaikudi ] 
	} 
);

print "Enter the source";
my $src = <STDIN>;
chomp $src;
print "Enter the destination";
my $dst = <STDIN>;
chomp $dst;

foreach my $k(keys %buses)
{
	foreach my $k1(keys %{$buses{$k}}){
	   foreach my $stop (@{$buses{$k}{$k1}}){ 
		if ($stop =~ /$src$/i){
		}
			if ($stop =~ /$dst$/i){
			}
	   }
	} 
}
