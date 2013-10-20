use ExtUtils::MakeMaker;
WriteMakefile(
  NAME => 'App::sibs',
  ABSTRACT_FROM => 'lib/App/sibs.pm',
  VERSION_FROM => 'lib/App/sibs.pm',
  AUTHOR => 'Jan Henning Thorsen <jhthorsen@cpan.org>',
  LICENSE => 'perl',
  PREREQ_PM => {
    'Applify' => 0.0501,
  },
  BUILD_REQUIRES => {
    'Test::More' => 0.90,
  },
  META_MERGE => {
    resources => {
      license => 'http://dev.perl.org/licenses/',
      homepage => 'https://metacpan.org/release/App-sibs',
      bugtracker => 'http://rt.cpan.org/NoAuth/Bugs.html?Dist=App-sibs',
      repository => 'http://github.com/jhthorsen/app-sibs',
    },
  },
  test => {
    TESTS => 't/*.t',
  },
  EXE_FILES => ['bin/sibs'],
);
