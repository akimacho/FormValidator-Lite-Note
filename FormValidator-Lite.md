# FormValidator::Lite

## included modules

CPAN modules

* [ ](Carp)
* [ ](Scalar::Util)
* [ ](Class::Accessor::Lite)
* [ ](Class::Load)

FormValidator::Lite specific modules

* [ ](FormValidator::Lite::Constraint::Default)
* [ ](FormValidator::Lite::Upload)
* [ ](FormValidator::Lite::Hash)

## properties

### public

* [ ]($VERSION)
* [ ]($Rules)
* [ ]($FileRules)

### private

* [ ](query)
* [ ](_error)
* [ ](_msg)

## methods

### public

* [ ](import)
* [ ](check)
* [ ](is_error)
* [ ](is_valid)
* [ ](has_error)
* [ ](set_error)
* [ ](errors)
* [ ](load_constraints)
* [ ](load_function_message)
* [ ](set_param_message)
* [ ](set_message_data)
* [ ](set_message)
* [ ](get_error_messages)
* [ ](get_error_message)
* [ ](build_message)
* [ ](get_error_messages_from_param)

### private

* [ ](_extract_values)

===

# new

if argument of new-method is empty, show error message.

```
my $validator = FormValidator::Lite->new;
# Usage: FormValidator::Lite->new($q) at eg/new.pl line 5.
```

* [ref function](http://perldoc.jp/func/ref)
* [UNIVERSAL](http://perldoc.jp/docs/perl/5.8.8/perlobj.pod#A32Class32is32Simply32a32Package)
* [Hash::MultiValue](https://metacpan.org/pod/Hash::MultiValue)
* [flatten](https://metacpan.org/pod/Hash::MultiValue#flatten)

see also :

* [FormValidator::Lite::Hash](FormValidator-Lite-Hash.md)

# load_function_message

1. load class of message to be displayed when the validation fails
2. set the messages to _msg

see also : 

* [FormValidator::Lite::Messages::*](FormValidator-Lite-Messages.md)
* [Class::Load](https://metacpan.org/pod/Class::Load)


[sample](eg/ld_func_msg.pl)

# set_param_message

1. set the params to _msg

[sample](eg/set_param_msg.pl)

# check

```
$validator->check(
    name => [qw/NOT_NULL/],
    name_kana => [qw/NOT_NULL KATAKANA/],
    {mails => [qw/mail1 mail2/]} => ['DUPLICATION'],
);
```

FormValidator/Lite.pm l53 - l64

```
                    if ((not (defined $_ && length $_)) && $rule_name !~ /^(NOT_NULL|NOT_BLANK|REQUIRED)$/) {
                        1;
                    } else {
```

1)

not (defined $_ && length $_)
=> (not defined $_) || (not lenght $_)
「$_が定義されていない」か「$_の文字列長が0」の場合、true

ルール名($rule_name)が、NOT_NULL、NOT_BLANK、REQUIREDでない場合、true

1)以外

a)  $File->{$rule_name}がNOTNULLの場合、
$file_rule->(@$args)がtrueの場合、true
b)  a)以外
$Rules->{$rule_name}がtrueでない場合、エラーログを吐く
$code->(@$args)がtrueの場合、true

バリデーションに成功ならば、$is_okに1、そうでない場合0

l65 - l67

$is_okが0の場合、エラーメッセージを設定

## slice(@list, $num1, $num2)

|argument|role|
|@list|list as target|
|$num1|index|
|$num2|the number to be deleted|

[sample](eg/)

# _extract_values

extract the values corresponding to the key

## argument

* $key (scaler)

## return value

* $key (scaler)
* @values (array)

### note

$rule_name  - ルール名
$args       - 引数名

# has_error

# get_error_messages

