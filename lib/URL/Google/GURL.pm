package URL::Google::GURL;
use 5.008;
use strict;
use warnings;

our $VERSION = '0.01';

require XSLoader;
XSLoader::load('URL::Google::GURL', $VERSION);

1;
__END__

=head1 NAME

URL::Google::GURL - GURL class from the Google url library.

=head1 SYNOPSIS

    my $u1 = URL::Google::GURL->new('http://user:pass@google.com:99/foo;bar?q=a#ref'); $u1->is_valid();         # 1
    $u1->scheme_is('http');  # 1 
    $u1->scheme_is_file()    # 0
    $u1->scheme();           # 'http'
    $u1->username();         # 'user'
    $u1->password();         # 'pass'
    $u1->host();             # 'google.com'
    $u1->port();             # '99'
    $u1->int_port();         # 99
    $u1->path();             # '/foo;bar'
    $u1->query();            # 'q=a'
    $u1->ref();              # 'ref'

    my $u2 = URL::Google::GURL->new('http://foo.bar.com:80');
    $u2->spec();   # 'http://foo.bar.com/'

    my $u3 = URL::Google::GURL->new('http://foo.bar.com:8080');
    $u3->spec();   # 'http://foo.bar.com:8080/'

    my $u4 = URL::Google::GURL->new('http://foo.bar.com?baz=1');
    $u4->spec();   # 'http://foo.bar.com/?baz=1'

=head1 DESCRIPTION

This module provides a partial XS export of the GURL class from
the google url library (L<http://code.google.com/p/google-url/>).
The code in this module must be synchronized with the source project
manually. As such, it may not always be in-sync with the original sources.

=head1 AUTHOR

Mike Ellery

=head1 COPYRIGHT AND LICENSE


=cut
