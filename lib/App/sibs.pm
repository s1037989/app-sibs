package App::sibs;

=head1 NAME

App::sibs - Simple incremental backup system

=head1 VERSION

0.01

=head1 SYNOPSIS

  $ sibs
  $ sibs setup
  $ sibs run

=head1 DESCRIPTION

C<sibs> create backups from your source system to a destination server, using
C<rsync>.

=cut

our $VERSION = '0.01';

=head1 METHODS

=head2 backup

=cut

sub backup {
  my $self = shift;
}

=head2 setup

=cut

sub setup {
  my $self = shift;
}

=head1 COPYRIGHT

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

=head1 AUTHOR

Jan Henning Thorsen - C<jhthorsen@cpan.org>

=cut

1;
