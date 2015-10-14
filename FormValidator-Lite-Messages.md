# FormValidator::Lite::Messages::*

message to be displayed when the validation fails

## FormValidator::Lite::Messages::en

for English

## public properties

```perl
our $MESSAGES = {
    not_null => 'please input [_1]',
    int      => 'please input [_1] as integer',
    ascii => 'Please input [_1] as ASCII',
    date => '[_1] is not valid date',
    duplication => 'Please same [_1] twice',
    length => '[_1] have bad length',
    regex => '[_1] is not good',
    uint => 'Please input [_1] as unsigned int',

    # http-url
    http_url => 'please input [_1] as url',

    # email
    email_loose => 'Please input [_1] as E-mail address',

    # japanese
    hiragana => 'Please input [_1] as Hiragana',
    jtel => 'Please input [_1] as telephone number',
    jzip => 'Please input [_1] as zip number',
    katakana => 'Please input [_1] as Katakana',

    # file
    file_size => '[_1] have bad file size',
    file_mime => '[_1] have bad mime type',
};
```

## FormValidator::Lite::Messages::ja

messages for Japanese

## public properties

```perl
our $MESSAGES = {
    not_null => '[_1] を入力してください',
    int      => '[_1] は整数で入力してください',
    ascii => '[_1] は半角で入力してください',
    date => '[_1] が日付として正しくありません',
    duplication => '[_1] は正しく2回入力してください',
    length => '[_1] の長さがちがいます',
    regex => '[_1] がただしくありません',
    uint => '[_1] は正の整数で入力してください',

    # http-url
    http_url => '[_1] には URL を入力してください',

    # email
    email_loose => '[_1] にはメールアドレスを入力してください',

    # japanese
    hiragana => '[_1] にはひらがなで入力してください',
    jtel => '[_1] には電話番号をただしく入力してくさい',
    jzip => '[_1] には郵便番号を正しく入力してください',
    katakana => '[_1] にはカタカナで入力してください',

    # file
    file_size => '[_1] のファイルサイズがただしくありません',
    file_mime => '[_1] のファイルタイプがただしくありません',
};
```

