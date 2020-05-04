# Copyright 1999-2014 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

# ebuild generated by hackport 0.3.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="A test-suite for any queue or double-ended queue satisfying an interface"
HOMEPAGE="https://github.com/rrnewton/haskell-lockfree/wiki"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/abstract-deque-0.3:=[profile?]
	dev-haskell/hunit:=[profile?]
	>=dev-haskell/random-1.0:=[profile?]
	>=dev-haskell/test-framework-0.6:=[profile?]
	>=dev-haskell/test-framework-hunit-0.2.7:=[profile?]
	>=dev-lang/ghc-6.12.1:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.8.0.2
"
