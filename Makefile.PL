# $Id: Makefile.PL 410 2004-11-13 20:03:58Z sungo $

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
		PREOP => 'svn log > ${DISTVNAME}/Changes',
	},
);
