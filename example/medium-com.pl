#!/usr/bin/perl

use Mojo::Ecrawler;
binmode(STDOUT, ":encoding(utf8)");
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

$lurl //= 'https://medium.com/@shazow/ssh-how-does-it-even-9e43586e4ffc';
$re1  = "div.section-inner";
$re2  = "div";
my $pcontent = geturlcontent($lurl);
my $pcout1 = getdiv( $pcontent, $re1, $re2, 1 );

print $pcout1;
print "get $lurl  ok \n";

