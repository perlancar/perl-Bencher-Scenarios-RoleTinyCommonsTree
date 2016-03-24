package Bencher::Scenario::RoleTinyCommonsTree::descendants;

# DATE
# VERSION

use strict;
use warnings;

#use Bencher::ScenarioUtil::RoleTinyCommonsTree qw(build_tree);
use Data::Random::Tree qw(create_random_tree);
use Tree::Object;

# an example of a tiny tree
my $tree_h3_o15 = create_random_tree(
    num_objects_per_level => [2, 4, 8],
    classes => ['Tree::Object'],
);

# an example of a small tree
my $tree_h4_o100 = create_random_tree(
    num_objects_per_level => [4, 16, 64, 15],
    classes => ['Tree::Object'],
);

# an example of a small tree
my $tree_h6_o1k = create_random_tree(
    num_objects_per_level => [10, 100, 600, 200, 99],
    classes => ['Tree::Object'],
);

# this is a tree of height 7, ~20k objects. this is on par with my current
# todo.org (~750kB) which contains ~2900 todo items and ~20k Org::Element
# objects when parsed with Org::Parser.
my $tree_h7_o20k = create_random_tree(
    num_objects_per_level => [100, 3000, 5000, 8000, 3000, 1000, 300],
    classes => ['Tree::Object'],
);

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
