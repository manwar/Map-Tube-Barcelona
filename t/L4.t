use strict; use warnings;
use utf8;
use Test::More tests => 2;
use Map::Tube::Barcelona;

my $metro = Map::Tube::Barcelona->new;
while (<DATA>) {
    chomp;
    next if /^\#/;
    my ($description, $from, $to, $expected) = split /\|/;
    is_deeply($metro->get_shortest_route($from, $to), _expected_route($expected), $description);
}

sub _expected_route {
    my ($route) = @_;
    my $routes  = [];
    foreach my $name (split /\,/,$route) {
        push @$routes, $metro->get_node_by_name($name);
    }
    return Map::Tube::Route->new({ nodes => $routes });
}

__DATA__
Route 1|Roquetes|Maragall|Roquetes,Trinitat Nova,Via Júlia,Llucmajor,Maragall
Route 2|roquetes|maragall|Roquetes,Trinitat Nova,Via Júlia,Llucmajor,Maragall
