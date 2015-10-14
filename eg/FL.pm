package FL;

use strict;
use warnings;
use 5.010;

use Carp ();
use Scalar::Util qw/blessed/;

use FLH;
use DDP {deparse => 1,};

sub new {
    warn "*** in new";
    my ($class, $q) = @_;
    Carp::croak("Usage: ${class}->new(\$q)") unless $q;

    warn $class;
    p $q;
    warn ref($q);
    if (ref $q eq 'HASH') {
        $q = FLH->new($q);
    } elsif (UNIVERSAL::isa($q, 'Hash::MultiValue')) {
        $q = FLH->new($q->flatten);
    }

    bless {
        query => $q,
        _error => {}
    }, $class;
}

sub check {
    warn "*** in check";
    my ($self, @rule_ary) = @_;
    Carp::croak("this is an instance method") unless ref $self;

    while (my ($rule_key, $rules) = splice(@rule_ary, 0, 2)) {
        warn "*** in splice";
        
        p $rule_key;
        p $rules;
        
        warn "*** before _extract_values";
        my ($key, @values) = $self->_extract_values($rule_key);
        warn "*** after _extract_values";

        say "\$key";
        p $key;
        say "\@values";
        p @values;
    }
}

sub _extract_values {
    warn "*** in _extract_values";
    my ($self, $key) = @_;
    
    p $key;
    
    my $q = $self->{query};
    
    my @values;
    if (ref $key) {
        ### $key is a hash
        warn "*** ref \$key";
        $key = [%$key];
        @values = [ map { $q->param($_) } @{ $key->[1] } ];
        $key = $key->[0];
        warn $key;
    } else {
        ### $key is a scaler
        warn "*** not ref \$key";
        @values = (defined $q->param($key)) ? ($q->param($key)) : (undef);
    }
    
    return ($key, @values);
}

1;
