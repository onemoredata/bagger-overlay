# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="TJC"
inherit perl-module

DESCRIPTION="PostgreSQL runner for tests"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/DBD-Pg
	dev-perl/DBI
	dev-perl/File-Which
	dev-perl/Moo
	dev-perl/Tie-Hash-Method
	dev-perl/Try-Tiny
	dev-perl/Type-Tiny
	virtual/perl-File-Spec
"
RDEPEND="${DEPEND}"

BDEPEND="
	test? (
		dev-perl/DBD-Pg
		dev-perl/Test-SharedFork
	)
	dev-perl/Module-Build-Tiny
	dev-lang/perl
	virtual/perl-ExtUtils-MakeMaker
"
