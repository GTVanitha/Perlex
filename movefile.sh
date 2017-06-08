
me=`basename $0`;
echo $me;
for i in  *.* 
do
if [ "$i" = 'Apache and CGI.txt' ]
then
newname=`echo $i | sed 's/ /\ /g'`;
echo $newname;
`mv "$newname" vani/`;
fi;
done;
