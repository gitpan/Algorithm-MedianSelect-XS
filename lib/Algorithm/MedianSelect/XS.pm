package Algorithm::MedianSelect::XS;

use strict;
use warnings;
use base qw(Exporter);
use vars qw($VERSION @EXPORT_OK);

$VERSION = '0.16';
@EXPORT_OK = qw(median);

require XSLoader;
XSLoader::load(__PACKAGE__, $VERSION);

1;
__END__

=head1 NAME

Algorithm::MedianSelect::XS - Median finding algorithm

=head1 SYNOPSIS

 use Algorithm::MedianSelect::XS qw(median);

 print median(1,2,3,5,6,7,9,12,14,19,21);

=head1 DESCRIPTION

Algorithm::MedianSelect::XS finds the item which is smaller 
than half of the integers and bigger than half of the integers.

=head1 FUNCTIONS

=head2 median

Takes an array of integers and returns the median number.
 
=head1 EXPORT

C<median()> is exportable.

=head1 SEE ALSO

L<http://www.cs.sunysb.edu/~algorith/files/median.shtml>

=head1 AUTHOR

Steven Schubiger <schubiger@cpan.org>

=head1 LICENSE

This program is free software; you may redistribute it and/or 
modify it under the same terms as Perl itself.

See L<http://www.perl.com/perl/misc/Artistic.html>	    

=cut

