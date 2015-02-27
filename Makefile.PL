#!/usr/bin/perl

use 5.006;
use strict;
use warnings FATAL => 'all';
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share dist => 'share';

WriteMakefile(
    NAME               => 'Map::Tube::Barcelona',
    AUTHOR             => q{Mohammad S Anwar <mohammad.anwar@yahoo.com>},
    VERSION_FROM       => 'lib/Map/Tube/Barcelona.pm',
    ABSTRACT_FROM      => 'lib/Map/Tube/Barcelona.pm',
    LICENSE            => 'artistic_2',
    PL_FILES           => {},
    MIN_PERL_VERSION   => 5.006,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker'     => 0,
        'File::ShareDir::Install' => 0,
    },
    BUILD_REQUIRES   => {
        'Test::More' => 0,
    },
    PREREQ_PM => {
        'Moo'              => 0,
        'namespace::clean' => 0,
        'File::Share'      => 0,
        'Map::Tube'        => '2.87',
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Map-Tube-Barcelona-*' },
    (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
        'meta-spec' => { version => 2 },
        provides    => {
            'Map::Tube::Barcelona'            => { file => 'lib/Map/Tube/Barcelona.pm',          version => '0.20' },
            'Map::Tube::Barcelona::Line::L3'  => { file => 'lib/Map/Tube/Barcelona/Line/L3.pm',  version => '0.20' },
            'Map::Tube::Barcelona::Line::L4'  => { file => 'lib/Map/Tube/Barcelona/Line/L4.pm',  version => '0.20' },
            'Map::Tube::Barcelona::Line::L11' => { file => 'lib/Map/Tube/Barcelona/Line/L11.pm', version => '0.20' },
        },
        resources => {
            repository => {
                type => 'git',
                url  => 'https://github.com/Manwar/Map-Tube-Barcelona.git',
                web  => 'https://github.com/Manwar/Map-Tube-Barcelona',
            },
        }})
     : ()
    ),
);

package MY;
use File::ShareDir::Install 'postamble';
