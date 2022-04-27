# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7
MY_PV='4.8.7'
QT4_DEBIAN_PATCHES_COMMIT='df517fcfe4ee9430cff23a180be42ae5ebe867d5'
inherit qt4-build-multilib

DESCRIPTION="The DBus module for the Qt toolkit"
SRC_URI="https://ftp.desolve.ru/ftp/viktor/qt4/qt-everywhere-opensource-src-4.8.7.tar.gz"

if [[ ${QT4_BUILD_TYPE} == release ]]; then
	KEYWORDS="alpha amd64 arm ~arm64 ~hppa ia64 ~mips ppc ppc64 sparc x86 ~amd64-fbsd ~x86-fbsd"
fi

IUSE="aqua"

DEPEND="
	>=dev-qt/qtcore-4.8.7[aqua=,debug=,${MULTILIB_USEDEP}]
	sys-apps/dbus[${MULTILIB_USEDEP}]
"
RDEPEND="${DEPEND}"

PATCHES=(
	"${FILESDIR}/${PN}-4.8.4-qdbusconnection-silence-warning.patch"
)

QT4_TARGET_DIRECTORIES="
	src/dbus
	tools/qdbus/qdbus
	tools/qdbus/qdbusxml2cpp
	tools/qdbus/qdbuscpp2xml"

QCONFIG_ADD="dbus dbus-linked"
QCONFIG_DEFINE="QT_DBUS"

multilib_src_configure() {
	local myconf=(
		-dbus-linked
	)
	qt4_multilib_src_configure
}
