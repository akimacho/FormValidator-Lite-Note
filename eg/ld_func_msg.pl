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
$validator->load_function_message('en');
p $validator;

__END__

FormValidator::Lite  {
    public methods (17) : build_message, check, errors, get_error_message, get_error_messages, get_error_messages_from_param, has_error, import, is_error, is_valid, load_constraints, load_function_message, new, set_error, set_message, set_message_data, set_param_message
    private methods (1) : _extract_values
    internals: {
        _error   {},
        _msg     {
            function   {
                ascii         "Please input [_1] as ASCII",
                date          "[_1] is not valid date",
                duplication   "Please same [_1] twice",
                email_loose   "Please input [_1] as E-mail address",
                file_mime     "[_1] have bad mime type",
                file_size     "[_1] have bad file size",
                hiragana      "Please input [_1] as Hiragana",
                http_url      "please input [_1] as url",
                int           "please input [_1] as integer",
                jtel          "Please input [_1] as telephone number",
                jzip          "Please input [_1] as zip number",
                katakana      "Please input [_1] as Katakana",
                length        "[_1] have bad length",
                not_null      "please input [_1]",
                regex         "[_1] is not good",
                uint          "Please input [_1] as unsigned int"
            }
        },
        query    Stub
    }
}