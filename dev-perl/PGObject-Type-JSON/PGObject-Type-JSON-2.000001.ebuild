# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="EINHVERFR"
DIST_VERSION="${PV}"

inherit perl-module
LICENSE=BSD-2

DESCRIPTION="JSON wrappers for PGObject"

SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/JSON
	dev-perl/PGObject
"

RDEPEND="$DEPEND"

BDEPEND="
	test? (
		dev-perl/Carp-Always
		dev-perl/Test2-Suite
	)
"
