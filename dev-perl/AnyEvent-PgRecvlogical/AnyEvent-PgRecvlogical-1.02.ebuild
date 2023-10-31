# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="MYDMNSN"
inherit perl-module

DESCRIPTION="perl port of pg_recvlogical"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86"
# Tests require a running postgres instance.
# Uncomment at your own peril
RESTRICT="test"

DEPEND="
	dev-perl/AnyEvent
	dev-perl/curry
	dev-perl/DBD-Pg
	dev-perl/DBI
	dev-perl/Moo
	dev-perl/Promises
	dev-perl/Sub-Attribute
	dev-perl/Sub-Exporter
	dev-perl/namespace-clean
"
RDEPEND="${DEPEND}"

BDEPEND="
	test? (
		dev-perl/Test-PostgreSQL
		virtual/perl-File-Spec
	)
	dev-lang/perl
"
