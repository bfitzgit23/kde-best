# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kmilo/kmilo-3.5.10.ebuild,v 1.7 2009/07/12 10:38:13 armin76 Exp $

EAPI="1"
KMNAME=kdeutils
inherit kde-meta eutils

DESCRIPTION="kded module that can support various types of hardware input devices, such as those on keyboards."
KEYWORDS="alpha amd64 hppa ia64 ~mips ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="kdehiddenvisibility pbbuttonsd"

DEPEND="x11-libs/libXtst
	pbbuttonsd? ( app-laptop/pbbuttonsd )"

PATCHES=( "${FILESDIR}/kmilo-3.5.9-fixpaths.patch" )

src_compile() {
	local myconf="$(use_with pbbuttonsd powerbook)"

	kde-meta_src_compile
}
