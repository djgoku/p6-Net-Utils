use v6;
use Test;
use lib 'lib';
use Net::Utils;

plan 7;

my $s_addr = Buf.allocate(4);

is inet_pton(AF_INET, '127.0.0.1', $s_addr), 1, 'address was valid for the specified address family';
is inet_pton(AF_INET, '', Buf.allocate(4)), 0, 'address was not parseable in the specified address family';
is inet_pton(AF_INET6, '127.0.0.1', Buf.allocate(4)), -1, 'system error occurred';

my $ip = utf8.allocate(16);
is inet_ntop(AF_INET, $s_addr, $ip, 16), '127.0.0.1', 'ip is 127.0.0.1';

my $s_addr_invalid = Buf.new();
is inet_ntop(AF_INET, $s_addr_invalid, utf8.allocate(16), 16), Str, 'ip is not 127.0.0.1';


my in_addr $in_addr = in_addr.new;
is inet_aton('127.0.0.1', $in_addr), 1, 'address was parse correctly';
is inet_ntoa($in_addr.s_addr), '127.0.0.1', 'ip is 127.0.0.1';
