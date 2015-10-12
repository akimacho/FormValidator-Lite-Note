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

* $VERSION
* $Rules
* $FileRules

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
