package Dist::Zilla::Plugin::Clean;

use Moose;

use warnings;
use strict;

with 'Dist::Zilla::Role::AfterRelease';

=head1 NAME

Dist::Zilla::Plugin::Clean - Clean after release

=head1 SYNOPSIS

In your F<dist.ini>:

    [Clean]

=head1 DESCRIPTION

Just a simple plugin that runs C<dzil clean> after the release.

=cut

sub after_release {
	my $self = shift;

	my $output = `dzil clean`;

	$self -> log($output);
	$self -> log('Folder is now spick-and-span');
}

=head1 AUTHOR

Alessandro Ghedini <alexbio@cpan.org>

=head1 LICENSE AND COPYRIGHT

Copyright 2011 Alessandro Ghedini.

This program is free software; you can redistribute it and/or modify it
under the terms of either: the GNU General Public License as published
by the Free Software Foundation; or the Artistic License.

See http://dev.perl.org/licenses/ for more information.

=cut

no Moose;

__PACKAGE__ -> meta -> make_immutable;

1; # End of Dist::Zilla::Plugin::Clean
