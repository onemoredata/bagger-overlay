# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="EHUELS"
DIST_VERSION="2.000002"

inherit perl-module
LICENSE=BSD-2

DESCRIPTION="DateTime Wrappers for PGObject"

SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/DateTime
	dev-perl/DateTime-TimeZone
	dev-perl/PGObject
"

RDEPEND="$DEPEND"

BDEPEND="
	test? (
		virtual/perl-Test-Simple
	)
	dev-lang/perl
"
