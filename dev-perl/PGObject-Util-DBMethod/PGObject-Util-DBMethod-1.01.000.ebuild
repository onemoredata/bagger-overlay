# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="EHUELS"
DIST_VERSION="${PV}"

inherit perl-module
LICENSE=BSD-2

DESCRIPTION="Declarative stored procedure <-> object mappings for the PGObject Framework"

SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="virtual/perl-Scalar-List-Utils"

RDEPEND="$DEPEND"

BDEPEND="
	test? ( virtual/perl-Test-Simple )
"
