# $Id: Makefile.PL 418 2004-11-21 02:01:33Z sungo $

use ExtUtils::MakeMaker;
WriteMakefile(
	NAME => 'POE::strict',
	AUTHOR => 'Matt Cashner (sungo@cpan.org)',
	VERSION_FROM => 'VERSION',
	PREREQ_PM => {
		POE => '0',
		'Test::More' => '0',
	},
	dist => {
		PREOP => 'svn log --non-interactive -r 0:HEAD > ${DISTVNAME}/Changes; perldoc -t lib/POE/strict.pm > ${DISTVNAME}/README',
	},
);
