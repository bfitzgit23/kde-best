# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit qt4-build-multilib
MULTILIB_USEDEP_HACK='abi_x86_64(-)?,abi_x86_32'

DESCRIPTION="The SVG module for the Qt toolkit"

if [[ ${QT4_BUILD_TYPE} == release ]]; then
	KEYWORDS="~amd64 x86 i686"
fi

IUSE="+accessibility"

DEPEND="
	~dev-qt/qtcore-${PV}
	~dev-qt/qtgui-${PV}
	>=sys-libs/zlib-1.2.8-r1[${MULTILIB_USEDEP_HACK}]
"
RDEPEND="${DEPEND}"

QT4_TARGET_DIRECTORIES="
	src/svg
	src/plugins/imageformats/svg
	src/plugins/iconengines/svgiconengine"

QCONFIG_ADD="svg"
QCONFIG_DEFINE="QT_SVG"

src_prepare() {
	qt4-build-multilib_src_prepare
}

multilib_src_configure() {
	local myconf=(
		-svg
		$(qt_use accessibility)
		-no-xkb  -no-xrender
		-no-xrandr -no-xfixes -no-xcursor -no-xinerama -no-xshape -no-sm
		-no-opengl -no-nas-sound -no-dbus -no-cups -no-nis -no-gif -no-libpng
		-no-libmng -no-libjpeg -no-openssl -system-zlib -no-webkit -no-phonon
		-no-qt3support -no-xmlpatterns -no-freetype -no-libtiff
		-no-fontconfig -no-glib -no-gtkstyle
	)
	qt4_multilib_src_configure
}
