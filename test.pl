use strict;
use warnings;
use Future;
use Future::AwaitAsync;
async sub abc{
    await Future->new->fail("error here!");
}
abc();
