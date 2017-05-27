#!/usr/bin/perl

use Mojo::Ecrawler;

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

$lurl = 'http://www.cert.org.cn/publish/main/9/index.html';
$re1  = "div.con_list";
$re2  = "a";
my $pcontent = geturlcontent($lurl);
my $pcout1 = getdiv( $pcontent, $re1, $re2, 1 );
print $pcontent,"\n";
print $pcout1;
print "get $lurl  ok \n";

