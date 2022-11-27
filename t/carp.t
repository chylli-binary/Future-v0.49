use strict;
use warnings;
use Test::More;
use Future;
use Future::AsyncAwait;
async sub make_fail{
    await Future->new->fail("error here!");
}

eval {make_fail()->get};
is $@, "error here! at t/carp.t line 7.\n";

done_testing();
