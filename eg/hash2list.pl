use strict;
use warnings;
use utf8;
use 5.010;
use DDP {deparse => 1,};

sub confirm_argv {
    my (@rule_ary) = @_;
    p @rule_ary;
    say "===";
    my $count = 0;
    while (my ($rule_key, $rules) = splice(@rule_ary, 0, 2)) {
        say $count;
        say "\$rule_key";
        p $rule_key;
        say "\$rules";
        p $rules;
        $count++;
    }
}

confirm_argv(
    name => [qw/NOT_NULL/],
    name_kana => [qw/NOT_NULL KATAKANA/],
    {mails => [qw/mail1 mail2/]} => ['DUPLICATION'],
);

__END__
[
    [0] "name",
    [1] [
        [0] "NOT_NULL"
    ],
    [2] "name_kana",
    [3] [
        [0] "NOT_NULL",
        [1] "KATAKANA"
    ],
    [4] {
        mails   [
            [0] "mail1",
            [1] "mail2"
        ]
    },
    [5] [
        [0] "DUPLICATION"
    ]
]
===
0
$rule_key
"name"
$rules
\ [
    [0] "NOT_NULL"
]
1
$rule_key
"name_kana"
$rules
\ [
    [0] "NOT_NULL",
    [1] "KATAKANA"
]
2
$rule_key
\ {
    mails   [
        [0] "mail1",
        [1] "mail2"
    ]
}
$rules
\ [
    [0] "DUPLICATION"
]
