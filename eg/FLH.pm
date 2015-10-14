package FLH;
use strict;
use warnings;
use 5.010;
use utf8;
use Carp ();

use DDP {deparse => 1,};

sub new {
    my $class = shift;
    my @args = ( (@_==1) ? (%{ $_[0] }) : (@_) );
    p $class;
    p @args;
    my $self = bless {}, $class;
    # for Hash::MultiValue hash
    while (my ($k, $v) = splice @args, 0, 2) {
        push @{$self->{$k}}, $v;
    }
    p $self;
    return $self;
}

sub param {
    my $self = shift;
    if (@_==1) {
        if (wantarray) {
            return @{$self->{$_[0]}};
        } else {
            return $self->{$_[0]}->[0];
        }
    } elsif (@_==0) {
        return keys %$self;
    } else {
        Carp::croak("Too much arguments for FormValidator::Lite::Hash#param: " . 0+@_);
    }
}

sub upload { undef }

1;