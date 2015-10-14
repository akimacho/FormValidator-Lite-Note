use strict;
use warnings;
use utf8;
use 5.010;
use DDP {deparse => 1,};

use Stub;
use FormValidator::Lite;

# create stub object
my $q = Stub->new(
    name => '', 
);

my $validator = FormValidator::Lite->new($q);
$validator->set_param_message(
    name => 'your name',
    mail => 'your email address', 
    age  => 'your age', 
);
p $validator;

__END__
FormValidator::Lite  {
    public methods (17) : build_message, check, errors, get_error_message, get_error_messages, get_error_messages_from_param, has_error, import, is_error, is_valid, load_constraints, load_function_message, new, set_error, set_message, set_message_data, set_param_message
    private methods (1) : _extract_values
    internals: {
        _error   {},
        _msg     {
            param   {
                age    "your age",
                mail   "your email address",
                name   "your name"
            }
        },
        query    Stub
    }
}