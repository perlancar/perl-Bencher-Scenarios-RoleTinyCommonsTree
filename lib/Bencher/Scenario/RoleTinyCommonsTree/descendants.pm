package Bencher::Scenario::RoleTinyCommonsTree::descendants;

# DATE
# VERSION

use strict;
use warnings;

use Bencher::ScenarioUtil::RoleTinyCommonsTree qw(:all);

our $scenario = {
    summary => 'Benchmark descendants()',
    participants => [
        { fcall_template => 'Code::Includable::Tree::NodeMethods::descendants(<tree>)' },
    ],
    datasets => [
        {
            name=>'h3-o15',
            summary => 'A tree of height 3, 15 objects',
            args => { tree => $tree_h3_o15 },
        },
        {
            name=>'h4-o100',
            summary => 'A tree of height 4, 100 objects',
            args => { tree => $tree_h4_o100 },
        },
        {
            name=>'h6-o1k',
            summary => 'A tree of height 6, 1k objects',
            args => { tree => $tree_h6_o1k },
        },
        {
            name=>'h7-o20k',
            summary => 'A tree of height 7, ~20k objects',
            args => { tree => $tree_h7_o20k },
        },
    ],
};

1;
# ABSTRACT:
