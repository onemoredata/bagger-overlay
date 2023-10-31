# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="EHUELS"
DIST_VERSION="${PV}"

inherit perl-module
LICENSE=BSD-2

DESCRIPTION="Moo/Moose mappers for minimalist PGObject framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/Carp-Clan
	dev-perl/Log-Any
	dev-perl/PGObject-Simple
	dev-perl/Moo
"

RDEPEND="$DEPEND"
