use strict;
use warnings;
use Test::More;
use Future;
use Future::AsyncAwait;
async sub make_fail{
    await Future->new->fail("error here!");
}

eval {make_fail()->get};
isnt $@, "error here! at /tmp/Future-v0.49/lib/Future.pm line 555.\n";

done_testing();
