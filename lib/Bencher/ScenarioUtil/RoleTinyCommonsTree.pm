package Bencher::ScenarioUtil::RoleTinyCommonsTree;

# DATE
# VERSION

use strict;
use warnings;

use Data::Random::Tree qw(create_random_tree);
use Tree::Object;

use Exporter qw(import);
our @EXPORT_OK = qw($tree_h3_o15 $tree_h4_o100 $tree_h6_o1k $tree_h7_o20k);
our %EXPORT_TAGS = (all => \@EXPORT_OK);

# an example of a tiny tree
our $tree_h3_o15 = create_random_tree(
    num_objects_per_level => [2, 4, 8],
    classes => ['Tree::Object'],
);

# an example of a small tree
our $tree_h4_o100 = create_random_tree(
    num_objects_per_level => [4, 16, 64, 15],
    classes => ['Tree::Object'],
);

# an example of a small tree
our $tree_h6_o1k = create_random_tree(
    num_objects_per_level => [10, 100, 600, 200, 99],
    classes => ['Tree::Object'],
);

# this is a tree of height 7, ~20k objects. this is on par with my current
# todo.org (~750kB) which contains ~2900 todo items and ~20k Org::Element
# objects when parsed with Org::Parser.
our $tree_h7_o20k = create_random_tree(
    num_objects_per_level => [100, 3000, 5000, 8000, 3000, 1000, 300],
    classes => ['Tree::Object'],
);

1;
# ABSTRACT: Utility routines
