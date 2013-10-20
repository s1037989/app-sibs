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

=head1 CONFIG FILE

The config file is in perl format, and read by perl. This means that any perl
code that exists in the file will be evaluated by perl. The return value need
to be a hash with the config. Example:

  {
    email => "your@email.com",
    exclude => [qw( .cache .gvfs Downloads Dropbox Trash )],
    source => [qw( /home/username )],
    destination => "rsync://login-username@my.server.com/var/backup/username",
    keep => { hours => 5, days => 10 },
  }

Defaults:

=over 4

=item * exclude: .cache, .gvfs, Downloads, Dropbox, Trash

=item * source: C<$HOME>

=item * keep: hours=12, days=31

=back

Default C<exclude> may change in future release.

=cut

our $VERSION = '0.01';

=head1 COPYRIGHT

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

=head1 AUTHOR

Jan Henning Thorsen - C<jhthorsen@cpan.org>

=cut

1;
