package App::sibs;

=head1 NAME

App::sibs - Simple incremental backup system

=head1 VERSION

0.11

=head1 DESCRIPTION

C<sibs> create backup from your computer to a destination server, using
C<rsync>.

=over 4

=item * Setup

First you need to C<setup> sibs. The setup process will create a SSH key
which is uploaded to the C<destination> server. The key is created using
C<ssh-keygen> and uploaded using C<ssh> and C<perl>.

In addition, this step will create or update a config file. The default
config file is L<$HOME/.sibs.conf>, but you can also specify your own path.

=item * Backup

The second step will create the actual backup. This step can be automated
in a cronjob, because the key created in the first step will not require
any password to log into the remote backup server. Example crontab:

  0 */4 * * * /usr/local/bin/sibs backup 2>/dev/null 1>/dev/null

This will create a backup every four hours. The backup will be "full" each
time and kept for a month. Even so, it probably won't take up too much space,
since all the files are hard linked, meaning an unchanged file will take up
the same disk space for each backup.

=back

=head1 SYNOPSIS

  $ sibs <action> <options> <config file>
  $ sibs setup
  $ sibs backup

=over 4

=item * action: setup, backup, man 

=item * options: --verbose, --silent

=item * config file: Path to L</CONFIG FILE>.

=back

=head1 CONFIG FILE

The config file is in perl format, and read by perl. This means that any perl
code that exists in the file will be evaluated by perl. The return value need
to be a hash with the config. Example:

  {
    email => "your@email.com",
    exclude => [qw( .cache .gvfs Downloads Dropbox Trash )],
    source => [qw( /home/username )],
    destination => "rsync://login-username@my.server.com/var/backup/username",
  }

Defaults:

=over 4

=item * exclude: .cache, .gvfs, Downloads, Dropbox, Trash

=item * source: C<$HOME>

=back

Default C<exclude> may change in future release.

=cut

our $VERSION = '0.11';

=head1 COPYRIGHT

This program is free software, you can redistribute it and/or modify it under
the terms of the Artistic License version 2.0.

=head1 AUTHOR

Jan Henning Thorsen - C<jhthorsen@cpan.org>

=cut

1;
