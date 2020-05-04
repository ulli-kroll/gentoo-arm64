# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.4.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Bindings for GNU IDN"
HOMEPAGE="https://john-millikin.com/software/haskell-gnuidn/"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/text:=[profile?]
	>=dev-lang/ghc-7.4.1:=
	net-dns/libidn
"
DEPEND="${RDEPEND}
	dev-haskell/c2hs
	>=dev-haskell/cabal-1.8
	virtual/pkgconfig
	test? ( >=dev-haskell/chell-0.4 <dev-haskell/chell-0.5
		>=dev-haskell/chell-quickcheck-0.2 <dev-haskell/chell-quickcheck-0.3
		>=dev-haskell/quickcheck-2.4 )
"
