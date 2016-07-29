use v6;
use NativeCall;
unit module Net::Utils;

# http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/sys/sys/socket.h?rev=1.90&content-type=text/x-cvsweb-markup&only_with_tag=MAIN
enum AF is export (AF_INET => 2, AF_INET6 => 24);

# http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/lib/libc/net/inet_pton.c?rev=1.10&content-type=text/x-cvsweb-markup&only_with_tag=MAIN
sub inet_pton (int32, Str, Buf is rw) returns int32 is native is export { * }

# http://cvsweb.openbsd.org/cgi-bin/cvsweb/src/lib/libc/net/inet_ntop.c?rev=1.12&content-type=text/x-cvsweb-markup&only_with_tag=MAIN
sub inet_ntop (int32, Buf, utf8, uint32 --> Str)    is native is export { * }

my class in_addr is repr('CStruct') is export {
  has uint32 $.s_addr;
}

sub inet_aton(Str, in_addr is rw) returns int32 is native is export { * }
sub inet_ntoa(uint32) returns Str is native is export { * }

=begin pod

=head1 NAME

Net::Utils - blah blah blah

=head1 SYNOPSIS

  use Net::Utils;

=head1 DESCRIPTION

Net::Utils is ...

=head1 AUTHOR

Jonathan C. Otsuka <djgoku@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 Jonathan C. Otsuka

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
