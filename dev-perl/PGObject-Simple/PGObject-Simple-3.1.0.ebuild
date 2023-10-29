# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="EHUELS"
DIST_VERSION="${PV}"

inherit perl-module
LICENSE=BSD-2

DESCRIPTION="Minimalist stored procedure mapper based on LedgerSMB's DBObject"

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE="test"

DEPEND="
	dev-perl/Carp-Clan
	dev-perl/Log-Any
	dev-perl/PGObject
"

RDEPEND="$DEPEND"

BDEPEND="test? ( virtual/perl-Test-Simple )"
