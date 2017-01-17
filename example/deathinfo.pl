#!/usr/bin/perl

use Mojo::Ecrawler;
use Data::Dumper;
use Encode;
=pod

采集数据入库
my @ur=(1..302);
#my @ur=(150..152);

#open my $ZFD,'>',"DATA" or die;

#=pod
for(@ur){

 #print $ZFD $pcontent;
 print $pcontent;
  print "get $lurl  ok \n";

}

=cut

my ( $lurl, $re1, $re2 ) = @ARGV;

$lurl = 'http://www.gzbz.com.cn/dead_men/index.asp?page=2';
$re1  = "table.t1";
$re2  = "td div";
my $pcontent = geturlcontent($lurl);
#print Dumper($pcontent);
my $pcout1 = getdiv( $pcontent, $re1, $re2,1);
my $line = encode("utf-8",decode("gbk",$pcout1));
print $line;
print "get $lurl  ok \n";

