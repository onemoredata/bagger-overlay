# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="EHUELS"
DIST_VERSION="${PV}"

inherit perl-module

DESCRIPTION="A toolkit integrating intelligent PostgreSQL dbs into Perl objects"

LICENSE=BSD-2
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/Carp-Clan
	dev-perl/DBD-Pg
	dev-perl/List-MoreUtils
	dev-perl/Log-Any
	dev-perl/Try-Tiny
	virtual/perl-Memoize
"
RDEPEND="$DEPEND"

BDEPEND="
	test? (
		dev-perl/Test-Exception
		virtual/perl-Test-Simple
	)
"
