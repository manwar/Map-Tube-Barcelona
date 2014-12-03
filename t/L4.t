use strict; use warnings;
use utf8;
use Test::More tests => 2;
use Map::Tube::Barcelona;

my $metro = Map::Tube::Barcelona->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    is($metro->get_shortest_route($from, $to), $expected, $description);
}

__DATA__
Route 1|Roquetes|Maragall|Roquetes (L3), Trinitat Nova (L3,L4,L11), Via Júlia (L4), Llucmajor (L4), Maragall (L4)
Route 2|roquetes|maragall|Roquetes (L3), Trinitat Nova (L3,L4,L11), Via Júlia (L4), Llucmajor (L4), Maragall (L4)
