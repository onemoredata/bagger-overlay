# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="YANICK"
inherit perl-module

DESCRIPTION="An implementation of Promises in Perl"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/Module-Runtime
	dev-perl/Sub-Attribute
	dev-perl/Sub-Exporter
"
RDEPEND="${DEPEND}"

BDEPEND="
	test? (
		dev-perl/Test-Exception
		dev-perl/Test-Fatal
		dev-perl/Test-Pod
		dev-perl/Test-Requires
		dev-perl/Test-Warn
		virtual/perl-ExtUtils-MakeMaker
		virtual/perl-File-Spec
	)
	dev-lang/perl
"
