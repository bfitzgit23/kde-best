# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5

DECLARATIVE_REQUIRED="always"
EGIT_BRANCH="KDE/4.13"
inherit kde4-base kde4-functions-extra

DESCRIPTION="KDE Activity Manager"

KEYWORDS="amd64 ~arm x86 ~x86-fbsd ~amd64-linux ~x86-linux"
IUSE=""

RDEPEND="
	|| ( $(add_kdeplasma_dep kactivitymanagerd) <kde-frameworks/kactivities-5.20.0:5 kde-plasma/kactivitymanagerd:5 )
"

src_configure() {
	local mycmakeargs=(
		-DKACTIVITIES_LIBRARY_ONLY=ON
		-DWITH_NepomukCore=OFF
	)
	kde4-base_src_configure
}
