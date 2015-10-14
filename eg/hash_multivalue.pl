use strict;
use warnings;
use utf8;
use 5.010;
use DDP {deparse => 1,};
use Hash::MultiValue;

my $hash = Hash::MultiValue->new(
    foo => 'A',
    foo => 'B',
    foo => 'C', ;
    bar => 'BAZ',
    bar => 'VAR', 
);

p $hash->{foo};
p $hash->get('foo');
my @bar_list = $hash->get_all('foo');
p @bar_list;

for my $key (keys %$hash) {
    say $hash->{$key};
}
