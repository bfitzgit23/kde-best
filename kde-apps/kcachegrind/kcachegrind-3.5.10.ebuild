# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kcachegrind/kcachegrind-3.5.10.ebuild,v 1.6 2009/07/12 10:01:32 armin76 Exp $

EAPI="1"
KMNAME=kdesdk
inherit kde-meta eutils

DESCRIPTION="KDE Frontend for Cachegrind"
KEYWORDS="alpha amd64 hppa ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="kdehiddenvisibility"

#DEPEND="!alpha? ( !sparc? ( !x86-fbsd? ( >=dev-util/valgrind-3.2.0 ) ) )"

RDEPEND="${DEPEND}
	media-gfx/graphviz"

pkg_postinst() {
	kde_pkg_postinst

	echo
	elog "To make full use of ${PN} you should emerge >=dev-util/valgrind-3.2.0 and/or"
	elog "dev-util/oprofile."
	echo
}
