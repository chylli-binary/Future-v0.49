use strict;
use warnings;
use Future;
use Future::AsyncAwait;
async sub abc{
    await Future->new->fail("error here!");
}
abc();
