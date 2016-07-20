use v6;
use NativeCall;
unit module Net::Util;

enum AF is export (AF_INET => 2, AF_INET6 => 24);

sub inet_pton (int32, Str, Buf is rw) returns int32 is native is export { * }

=begin pod

=head1 NAME

Net::Util - blah blah blah

=head1 SYNOPSIS

  use Net::Util;

=head1 DESCRIPTION

Net::Util is ...

=head1 AUTHOR

Jonathan C. Otsuka <djgoku@gmail.com>

=head1 COPYRIGHT AND LICENSE

Copyright 2016 Jonathan C. Otsuka

This library is free software; you can redistribute it and/or modify it under the Artistic License 2.0.

=end pod
