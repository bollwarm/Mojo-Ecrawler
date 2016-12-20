#!/usr/bin/perl

use Mojo::Ecrawler;
binmode(STDOUT,':encoding(utf8)');
=pod
使用方法 perl baiduzhaopin.pl php

=cut

my ($lurl,$re1,$re2);
  my $language=shift;
   $language //="perl";
  $lurl='http://zhaopin.baidu.com/?query='.$language;
  $re1="div#feed-list";
  $re2="dl";
  my $pcontent=geturlcontent($lurl);
  
  my @tile=split /\n/ms,getdiv($pcontent,$re1,"dt a");
  my @source=split /\n/ms, getdiv($pcontent,$re1,"dd.jobs-source a");
  my @time=split /\n/ms, getdiv($pcontent,$re1,"dd.jobs-time");
  my @city=split /\n/ms, getdiv($pcontent,$re1,"dd.jobs-place");
  my @company=split /\n/ms, getdiv($pcontent,$re1,"span.jobs-company");
  my @salary=split /\n/ms, getdiv($pcontent,$re1,"p.feed-item-salary");
  my @discription=split /\n/ms,getdiv($pcontent,$re1,"p.detail-item");
  #print $pcout1;
  for(0..scalar(@tile)-1){
   print $tile[$_],"\n";
   print $source[$_],"\n";
   print $time[$_],"\n";
   print $city[$_],"\n";
   print $company[$_],"\n";
   print $salary[$_],"\n";
   print $discription[2*$_],"\n";
   print $discription[2*$_+1],"\n\n";
    }
  print "get $lurl  ok \n";

