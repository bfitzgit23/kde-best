# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=5
inherit qt4-build-multilib

DESCRIPTION="The Declarative module for the Qt toolkit"

if [[ ${QT4_BUILD_TYPE} == release ]]; then
	KEYWORDS="alpha amd64 arm ~arm64 ~hppa ia64 ppc ppc64 sparc x86 ~amd64-fbsd ~x86-fbsd"
fi

IUSE="+accessibility debug"

DEPEND="
	~dev-qt/qtcore-${PV}[aqua${MULTILIB_USEDEP}]
	~dev-qt/qtgui-${PV}[accessibility,aqua${MULTILIB_USEDEP}]
	~dev-qt/qtopengl-${PV}[aqua${MULTILIB_USEDEP}]
	~dev-qt/qtscript-${PV}[aqua${MULTILIB_USEDEP}]
	~dev-qt/qtsvg-${PV}[accessibility,aqua${MULTILIB_USEDEP}]
	~dev-qt/qtxmlpatterns-${PV}[aqua${MULTILIB_USEDEP}]"

QT4_TARGET_DIRECTORIES="
	src/declarative
	src/imports
	src/plugins/qmltooling
	tools/qml
	tools/qmlplugindump"

QCONFIG_ADD="declarative"
QCONFIG_DEFINE="QT_DECLARATIVE"


multilib_src_configure() {
	local myconf=(
		-declarative -no-gtkstyle
		$(qt_use accessibility)
	)
	qt4_multilib_src_configure
}
