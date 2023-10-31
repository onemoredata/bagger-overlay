# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="DCANTRELL"
inherit perl-module

DESCRIPTION="Reliable subroutine attribute handlers"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/MRO-Compat
	dev-perl/Class-Trigger
"
RDEPEND="${DEPEND}"

#BDEPEND="
#	test? (
#		dev-perl/Test-Synopsis
#		virtual/perl-Test-Simple
#	)
#	dev-lang/perl
#"
