#!/usr/bin/perl

eval { require Future::XS } or do {
   print "1..0 # SKIP No Future::XS\n";
   exit;
};

do "./t/05then-else.pl";
die $@ if $@;
