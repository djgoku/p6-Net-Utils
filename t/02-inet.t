use v6;
use Test;
use lib 'lib';
use Net::Util;

plan 3;

my $s_addr = Buf.allocate(4);

is inet_pton(AF_INET, '127.0.0.1', $s_addr), 1, 'address was valid for the specified address family';
is inet_pton(AF_INET, '', $s_addr), 0, 'address was not parseable in the specified address family';
is inet_pton(AF_INET6, '127.0.0.1', $s_addr), -1, 'system error occurred';
