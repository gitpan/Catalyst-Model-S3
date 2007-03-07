use strict;
use warnings;

use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Catalyst::Model::S3',
    license             => 'perl',
    dist_version_from   => 'lib/Catalyst/Model/S3.pm',
    create_makefile_pl  => 'traditional',
    create_readme       => 1,
    requires            => {
        'Carp'            => '0',
        'Catalyst'        => '5.00',
        'Class::C3'       => '0',
        'Net::Amazon::S3' => '0.31',
    },
    build_requires      => {
        'Test::More'      => '0',
    },
    add_to_cleanup      => [ 'Catalyst-Model-S3-*',
                             'Catalyst-Helper-Model-S3-*' ],
);

$builder->create_build_script();
