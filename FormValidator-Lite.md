# FormValidator::Lite

## included modules

CPAN modules

* Carp
* Scalar::Util
* Class::Accessor::Lite
* Class::Load

FormValidator::Lite specific modules

* FormValidator::Lite::Constraint::Default
* FormValidator::Lite::Upload
* FormValidator::Lite::Hash

## properties

### public

* $VERSION
* $Rules
* $FileRules

### private

* query
* _error
* _msg

## methods

### public

* import
* check
* is_error
* is_valid
* has_error
* set_error
* errors
* load_constraints
* load_function_message
* set_param_message
* set_message_data
* set_message
* get_error_messages
* get_error_message
* build_message
* get_error_messages_from_param

### private

* _extract_values

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

see also : [FormValidator::Lite::Hash]()

# load_function_message

# set_param_message

# check

# has_error

# get_error_messages

