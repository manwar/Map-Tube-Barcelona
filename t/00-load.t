#!perl -T
use 5.006;
use strict;
use warnings FATAL => 'all';
use Test::More tests => 4;

BEGIN {
    use_ok('Map::Tube::Barcelona')            || print "Bail out!\n";
    use_ok('Map::Tube::Barcelona::Line::L3')  || print "Bail out!\n";
    use_ok('Map::Tube::Barcelona::Line::L4')  || print "Bail out!\n";
    use_ok('Map::Tube::Barcelona::Line::L11') || print "Bail out!\n";
}

diag( "Testing Map::Tube::Barcelona $Map::Tube::Barcelona::VERSION, Perl $], $^X" );
