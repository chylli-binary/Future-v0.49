use strict;
use warnings;
use Test::More;
use Future;
use Future::AsyncAwait;
async sub make_fail{
    await Future->new->fail("error here!");
}

eval {make_fail()->get};
unlike $@, qr{error here! at .*/lib/Future.pm line 555};

done_testing();
