use strict;
use warnings;
use utf8;
use 5.010;

use FL;
use FLH;
use Stub;

my $q = Stub->new(
    name => 'taro', 
    name_kana => 'タロウ', 
    mail1 => 'taro@email.com', 
    mail2 => 'tanaka@email.net', 
);

my $v =FL->new($q);
$v->check(
    name => [qw/NOT_NULL/],
    name_kana => [qw/NOT_NULL KATAKANA/],
    {mails => [qw/mail1 mail2/]} => ['DUPLICATION'],
);
