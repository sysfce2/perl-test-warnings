use strict;
use warnings;

BEGIN {
  eval { +require Test2::V0; 1 } or do { print "1..0 # SKIP Need Test2::V0\n"; exit };
  Test2::V0->import;
  eval { +require Import::Into; 1 } or do { print "1..0 # SKIP Need Import::Into\n"; exit };
}

use Test2::Warnings;

pass('this is a test which does not warn');

# for now, we just visually observe we add a no-warnings test here.
done_testing();