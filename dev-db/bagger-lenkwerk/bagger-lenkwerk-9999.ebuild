# Copyright 2023 OneMoreData

EAPI=8

inherit perl-module git-r3
DESCRIPTION="Lenkwerk is the metadata schema and tooling for Bagger"
HOMEPAGE="https://onemoredata.com"
EGIT_REPO_URI="https://github.com/onemoredata/bagger"

LICENSE="BSD-2"
SLOT="0"

DEPEND="
	dev-perl/AnyEvent-PgRecvlogical
	dev-perl/autovivification
	dev-perl/Capture-Tiny
	dev-perl/Config-IniFiles
	dev-perl/DBI
	dev-perl/Guard
	dev-perl/Moose
	dev-perl/namespace-autoclean
	dev-perl/Net-Etcd
	dev-perl/PGObject
	dev-perl/PGObject-Simple
	dev-perl/PGObject-Simple-Role
	dev-perl/PGObject-Type-DateTime
	dev-perl/PGObject-Type-JSON
	dev-perl/PGObject-Util-DBMethod
	dev-perl/URI
"
RDEPEND="${DEPEND}"
BDEPEND="test? ( dev-perl/Test2-Suite )"
