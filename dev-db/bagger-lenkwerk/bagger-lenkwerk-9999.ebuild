# Copyright 2023 OneMoreData

EAPI=8

inherit perl-module git-r3
DESCRIPTION="Lenkwerk is the metadata schema and tooling for Bagger"
HOMEPAGE="https://onemoredata.com"
EGIT_REPO_URI="https://github.com/onemoredata/bagger"

LICENSE="BSD"
SLOT="0"
IUSE="test"

DEPEND="
	dev-perl/Moose
	dev-perl/PGObject
	dev-perl/PGObject-Simple
	dev-perl/PGObject-Simple-Role
	dev-perl/PGObject-Util-DBMethod
	dev-perl/PGObject-Type-JSON
	dev-perl/URI
	dev-perl/Capture-Tiny
	dev-perl/Net-Etcd
	dev-perl/Guard
"
RDEPEND="${DEPEND}"
BDEPEND="test? ( dev-perl/Test2-Suite )"
