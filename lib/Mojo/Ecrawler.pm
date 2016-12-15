package Mojo::Ecrawler;

use Mojo::UserAgent;
use 5.010;
use Encode qw(decode encode decode_utf8 encode_utf8);
use Mojo::IOLoop;
use strict;
use warnings;

our @ISA    = qw(Exporter);
our @EXPORT = qw(geturlcontent getdiv);

=head1 NAME

Mojo::Ecrawler - A Eeay crawler for html page!

=head1 VERSION

Version 0.001

=cut

our $VERSION = '0.001';


=head1 SYNOPSIS

Quick summary of what the module does.

Perhaps a little code snippet.

    use Mojo::Ecrawler;

    my $foo = Mojo::Ecrawler->new();
    ...

=head1 EXPORT

A list of functions that can be exported.  You can delete this section
if you don't export anything, such as for a purely object-oriented module.

=head1 SUBROUTINES/METHODS


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
my $DEBUG=0;
sub geturlcontent {
my $feed = shift;
my $ua   = Mojo::UserAgent->new;
$ua->transactor->name( 'Mozilla/5.0 (Macintosh; '
      . 'Intel Mac OS X 10_8_5) AppleWebKit/537.36 '
      . '(KHTML, like Gecko) Chrome/29.0.1547.76 Safari/537.36' );
my $recontent;
my $result=($ua->get($feed));
return  $result->res->dom;
}

sub getdiv {

my ($dom,$re1,$re2)=@_;
my $recontent;
my @div = $dom->find($re1)->each;
   $recontent.=getndiv($_,$re2) for(@div);
print "DEBUG:getndiv()\::OUT:\n",$recontent if $DEBUG;;
return  $recontent;
}

sub getndiv {

#my $DEBUG=1;
my ($st,$re)=@_;
my $ndom=gmyc($st);
my @ndiv = $ndom->find($re)->each;
my $nrecontent;
   for(@ndiv){
   $nrecontent.=$_->content;
   $nrecontent.="  ".$_->attr->{href};
   $nrecontent.="\n";
}
print "DEBUG:getndiv()\::OUT:\n",$nrecontent if $DEBUG;
return $nrecontent;

}

sub gmyc {

  my ($c,$s)=@_;
  my $dom =$s ? Mojo::DOM->new($c)->at($s): Mojo::DOM->new($c);
#  say Dump($dom);
  return $dom;

}


=head1 AUTHOR

ORANGE, C<< <bollwarm at ijz.me> >>

=head1 BUGS

Please report any bugs or feature requests to C<bug-mojo-ecrawler at rt.cpan.org>, or through
the web interface at L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=Mojo-Ecrawler>.  I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.




=head1 SUPPORT

You can find documentation for this module with the perldoc command.

    perldoc Mojo::Ecrawler


You can also look for information at:

=over 4

=item * RT: CPAN's request tracker (report bugs here)

L<http://rt.cpan.org/NoAuth/Bugs.html?Dist=Mojo-Ecrawler>

=item * AnnoCPAN: Annotated CPAN documentation

L<http://annocpan.org/dist/Mojo-Ecrawler>

=item * CPAN Ratings

L<http://cpanratings.perl.org/d/Mojo-Ecrawler>

=item * Search CPAN

L<http://search.cpan.org/dist/Mojo-Ecrawler/>

=back


=head1 ACKNOWLEDGEMENTS


=head1 LICENSE AND COPYRIGHT

Copyright 2016 ORANGE.

This program is released under the following license: Perl


=cut

1; # End of Mojo::Ecrawler
