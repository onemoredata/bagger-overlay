# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..11} )

DISTUTILS_USE_PEP517=setuptools
inherit distutils-r1
if [[ ${PV} == *9999 ]]; then
	inherit git-r3
	EGIT_REPO_URI=https://github.com/onemoredata/sqlfluff
else
	SRC_URI="https://github.com/sqlfluff/sqlfluff/archive/refs/tags/${PV}.tar.gz -> ${P}.tar.gz"
	KEYWORDS="~amd64"
fi

DESCRIPTION="Lint/FMT tool for SQL"
HOMEPAGE="https://github.com/sqlfluff/sqlfluff"

LICENSE="MIT"
SLOT="0"

RDEPEND="
	dev-python/appdirs[${PYTHON_USEDEP}]
	dev-python/chardet[${PYTHON_USEDEP}]
	dev-python/click[${PYTHON_USEDEP}]
	dev-python/colorama[${PYTHON_USEDEP}]
	dev-python/jinja[${PYTHON_USEDEP}]
	dev-python/pathspec[${PYTHON_USEDEP}]
	dev-python/pyyaml[${PYTHON_USEDEP}]
	dev-python/regex[${PYTHON_USEDEP}]
	dev-python/tblib[${PYTHON_USEDEP}]
	dev-python/tqdm[${PYTHON_USEDEP}]
	dev-python/typing-extensions[${PYTHON_USEDEP}]
	dev-python/pytest[${PYTHON_USEDEP}]
"
DEPEND="${RDEPEND}"
BDEPEND="
	test? (
		dev-python/coverage[${PYTHON_USEDEP}]
		dev-python/hypothesis[${PYTHON_USEDEP}]
		dev-python/pytest[${PYTHON_USEDEP}]
		dev-python/pytest-cov[${PYTHON_USEDEP}]
		dev-python/pytest-xdist[${PYTHON_USEDEP}]
		dev-util/diff-cover[${PYTHON_USEDEP}]
	)"

distutils_enable_tests pytest

python_test() {
	epytest test
}
