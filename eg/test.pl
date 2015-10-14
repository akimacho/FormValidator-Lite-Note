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

# create instance of FormValidator::Lite
my $validator = FormValidator::Lite->new($q);
# set language on error message
$validator->load_function_message('en');
# set param title against param
$validator->set_param_message(
    name => 'yor name',
);
# set rules against param
my $res = $validator->check(
    name => [qw/NOT_NULL/],
);

# retrieve error messages
if ($validator->has_error) {
    for my $msg ($validator->get_error_messages) {
        say $msg;
    }
}
