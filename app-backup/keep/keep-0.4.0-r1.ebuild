# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/app-backup/keep/keep-0.4.0-r1.ebuild,v 1.4 2009/07/08 21:03:21 maekke Exp $

EAPI="2"

ARTS_REQUIRED="never"

inherit kde

DESCRIPTION="A simple backup system for KDE."
HOMEPAGE="http://jr.falleri.free.fr/keep/wiki/Home"
SRC_URI="mirror://kde-sunset/${P}.tar.gz"

LICENSE="GPL-2"
SLOT="3.5"
KEYWORDS="amd64 x86"
IUSE=""

DEPEND=""
RDEPEND="kde-apps/kcontrol:3.5
	>=app-backup/rdiff-backup-1.0.1-r1"

need-kde 3.5

PACTHES=(
	"${FILESDIR}/keep-0.4.0-desktop-file.diff"
	)

pkg_postinst() {
	kde_pkg_postinst

	elog "After initial install the Keep daemon needs to be started via KControl - Services."
	elog "The Keep daemon will be loaded automatically at the next KDE startup."
	echo
}
