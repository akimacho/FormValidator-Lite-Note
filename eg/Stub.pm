package Stub;

use strict;
use warnings;
use utf8;

sub new {
    my ($class, %args) = @_;
    bless \%args, $class;
}

sub param {
    my ($self, $param) = @_;
    $self->{$param}
}

1;
