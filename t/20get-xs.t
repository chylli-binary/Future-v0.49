#!/usr/bin/perl

eval { require Future::XS } or do {
   print "1..0 # SKIP No Future::XS\n";
   exit;
};

do "./t/20get.pl";
die $@ if $@;
