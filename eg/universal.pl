use strict;
use warnings;
use utf8;
use 5.010;
use DDP {deparse => 1,};

use Stub;

my $q = Stub->new(
    name => '', 
);
p $q->isa('Stub');# => 1
p UNIVERSAL::isa($q, 'Stub');# => 1

__END__
1
1