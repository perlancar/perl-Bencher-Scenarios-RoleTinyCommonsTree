package Bencher::Scenario::RoleTinyCommonsTree::Startup;

# DATE
# VERSION

our $scenario = {
    summary => 'Benchmark startup overhead of some modules in '.
        'Role-TinyCommons-Tree distribution',
    module_startup => 1,
    modules => {
    },
    participants => [
        {module=>'Scalar::Util'},

        {module=>'Code::Includable::Tree::FromStruct'},
        {module=>'Code::Includable::Tree::NodeMethods'},

        {module=>'Role::TinyCommons::Tree::FromStruct'},
        {module=>'Role::TinyCommons::Tree::Node'},
        {module=>'Role::TinyCommons::Tree::NodeMethods'},
    ],
};

1;
# ABSTRACT:
