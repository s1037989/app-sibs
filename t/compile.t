use strict;
use Test::More;

plan skip_all => 'Cannot read bin/sibs' unless -x 'bin/sibs';

my $script = do 'bin/sibs';
ok $script, 'enable to load bin/sibs' or diag $@;
can_ok $script, qw( rsync cleanup );

done_testing;
