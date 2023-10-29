# Copyright 2023 OneMoreData

EAPI=8

DIST_AUTHOR="HEXFUSION"
inherit perl-module

DESCRIPTION="Net::Etcd is an interface to the v3 REST API provided by the etcd grpc-gateway"

LICENSE="|| ( Artistic GPL-1+ )"
SLOT="0"
KEYWORDS="~amd64 ~x86"

DEPEND="
	dev-perl/AnyEvent
	dev-perl/AnyEvent-HTTP
	virtual/perl-HTTP-Tiny
	dev-perl/JSON
	dev-perl/Math-Int64
	dev-perl/Moo
	dev-perl/Sub-Quote
	dev-perl/Type-Tiny
	dev-perl/URI
	dev-perl/namespace-clean
"

RDEPEND="${DEPEND}"

BDEPEND="test? ( dev-perl/Test-Exception )"
