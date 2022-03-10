while(chomp($a=<STDIN>))
{
if($a=~/^A$/||$a=~/^a$/)
{
# A
$down=<STDIN>;
chop($down);
$up=<STDIN>;
chop($up);
$ue=1;
$st=1;
for($i=0;$i<$down;$i++)
{
    $ue*=($down-$i);
}
for($i=0;$i<($down-$up);$i++)
{
    $st*=($down-$up-$i);
}
$result=$ue/$st;
print $result;
}
elsif($a=~/^C$/||$a=~/^c$/)
{
# C
$down=<STDIN>;
chop($down);
$up=<STDIN>;
chop($up);
$ue=1;
$st=1;
for($i=0;$i<$up;$i++)
{
    $ue*=($down-$i);
}
for($i=0;$i<$up;$i++)
{
    $st*=($up-$i);
}
$result=$ue/$st;
print $result;
}
else 
{
    print "error";
    last;
}
print "\n";
}