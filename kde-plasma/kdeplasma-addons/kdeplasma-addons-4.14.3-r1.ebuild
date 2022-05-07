# Copyright 1999-2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

WEBKIT_REQUIRED="always"
inherit flag-o-matic kde4-base

DESCRIPTION="Extra Plasma applets and engines"
LICENSE="GPL-2 LGPL-2"
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE="attica debug desktopglobe eigen ibus json +pim qalculate qwt scim"

RESTRICT=test
# tests hang

# krunner is only needed to generate dbus interface for lancelot
COMMON_DEPEND="
	app-crypt/qca:2-qt4
	kde-plasma/krunner:4
	kde-plasma/plasma-workspace:4
	x11-misc/shared-mime-info
	attica? ( dev-libs/libattica )
	desktopglobe? ( $(add_kdeapps_dep marble) )
	ibus? ( app-i18n/ibus )
	json? ( dev-libs/qjson )
	pim? ( $(add_kdeapps_dep kdepimlibs) )
	qalculate? ( sci-libs/libqalculate )
	qwt? ( x11-libs/qwt:5 )
	scim? ( app-i18n/scim )
"
DEPEND="${COMMON_DEPEND}
	eigen? ( dev-cpp/eigen:2 )
"
RDEPEND="${COMMON_DEPEND}
	app-crypt/qca:2-qt4[ssl]
"

src_configure() {
	local mycmakeargs=(
		-DDBUS_INTERFACES_INSTALL_DIR="${EPREFIX}/usr/share/dbus-1/interfaces/"
		-DWITH_Nepomuk=OFF
		-DWITH_QtOAuth=OFF
		-Dattica=$(usex attica LibAttica)
		-Ddesktopglobe=$(usex desktopglobe Marble)
		-Deign=$(usex eigen Eigen2)
		-Dbuild=$(usex ibus)
		-Djson=$(usex json QJSON)
		-Dpim=$(usex pim KdepimLibs)
		-Dqalculate=$(usex qalculate)
		-Dqwt=$(usex qwt)
	    -Dscim=$(usex scim)
	)

	kde4-base_src_configure
}
