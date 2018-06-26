#!/usr/bin/perl

use Mojo::Ecrawler;
use Encode;
use utf8;

my $key=shift;
open $collegeData,'<','collegeData';
my @schurl=<$collegeData>;
my $url;

for(@schurl) {
$url.=$_ if /$key/;
}

my @shools=split '\n',$url;

if($shools[1]){

for(@shools) {
my $name=(split)[0];
print "$name ";
}

}else{

my $surl=(split " ",$url)[1];

print Sccore($surl) if $surl;

}

sub Sccore {
my $DUBEG=0;
my $lurl=shift;
print "DEBUG $lurl" if $DUBEG;
my $pcontent = geturlcontent($lurl);
print "DEBUG $pcontent" if $DUBEG;

my $result=getdiv($pcontent, 'div.li-collegeHome',"ul.li-collegeInfo li div div");
my $score=getdiv($pcontent, 'div.places-tab',"table tr td");

my @sscore=split /\n/sm,$score;

print "DDXX ",$sscore[1],"XXDD" if $DUBEG;

my $score1="年份|最高分|平均分|最低分|省控线|批次\n";
$result="招办电话|电子邮箱|通讯地址|招生网址\n\n".$result;
#print "DD $_\n" for(@sscore);

for(@sscore){
#chomp;
#print "$i $_\n";
next if /span/;
s#<span.*##;
s#</span.*##;
s#(20\d\d)#\n\1年#;
#print "$i $_\n";
$score1.="|$_";
#$i++;
}
return "$result\n$score1\n";
}

