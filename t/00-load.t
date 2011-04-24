#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Dist::Zilla::Plugin::Clean' ) || print "Bail out!
";
}

diag( "Testing Dist::Zilla::Plugin::Clean $Dist::Zilla::Plugin::Clean::VERSION, Perl $], $^X" );
