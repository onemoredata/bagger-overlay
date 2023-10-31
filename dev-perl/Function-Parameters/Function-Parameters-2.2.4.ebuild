# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="MAUKE"
DIST_VERSION="2.002004"
inherit perl-module

DESCRIPTION="define functions and methods with parameter lists"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	virtual/perl-Carp
	virtual/perl-Scalar-List-Utils
"
RDEPEND="${DEPEND}"

# Test suites for development also include
# MooseX::Types and perl threads. We'll skip those
BDEPEND="
	test? (
		dev-perl/Test-Fatal
		virtual/perl-File-Spec
	)
	dev-lang/perl
"
