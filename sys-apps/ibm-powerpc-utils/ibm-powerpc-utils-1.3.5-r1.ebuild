# Copyright 1999-2018 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=6
inherit autotools eutils

DESCRIPTION="Utilities for the maintainance of the IBM and Apple PowerPC platforms"
HOMEPAGE="https://github.com/ibm-power-utilities/powerpc-utils"
SRC_URI="https://github.com/ibm-power-utilities/${PN//ibm-}/archive/v${PV}.tar.gz -> ${P}.tar.gz"
IUSE="+rtas"

S="${WORKDIR}/${P//ibm-}"

SLOT="0"
LICENSE="IBM"
KEYWORDS="~ppc ~ppc64"

DEPEND="
	sys-devel/bc
"
RDEPEND="
	!sys-apps/powerpc-utils
	${DEPEND}
	rtas? ( >=sys-libs/librtas-2.0.2 )
"
PATCHES=(
	"${FILESDIR}"/${PN}-1.3.5-docdir.patch
)

src_prepare() {
	default
	eautoreconf
}

src_configure() {
	econf $(use_with rtas librtas)
}
