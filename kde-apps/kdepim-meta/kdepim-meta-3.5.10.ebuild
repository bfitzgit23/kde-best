# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/kde-base/kdepim-meta/kdepim-meta-3.5.10.ebuild,v 1.7 2009/07/12 13:47:34 armin76 Exp $

EAPI="1"
inherit kde-functions
DESCRIPTION="kdepim - merge this to pull in all kdepim-derived packages"
HOMEPAGE="http://www.kde.org/"

LICENSE="GPL-2"
SLOT="3.5"
KEYWORDS="alpha amd64 hppa ia64 ~mips ppc ppc64 sparc x86 ~x86-fbsd"
IUSE="pda kitchensync"

RDEPEND="
	>=kde-apps/akregator-${PV}:${SLOT}
	>=kde-base/certmanager-${PV}:${SLOT}
	>=kde-apps/kaddressbook-${PV}:${SLOT}
	>=kde-apps/kalarm-${PV}:${SLOT}
	>=kde-base/kandy-${PV}:${SLOT}
	>=kde-base/karm-${PV}:${SLOT}
	>=kde-base/kdepim-kioslaves-${PV}:${SLOT}
	>=kde-apps/kdepim-kresources-${PV}:${SLOT}
	>=kde-apps/kdepim-wizards-${PV}:${SLOT}
	kitchensync? ( >=kde-base/kitchensync-${PV}:${SLOT} )
	>=kde-apps/kmail-${PV}:${SLOT}
	>=kde-base/kmailcvt-${PV}:${SLOT}
	>=kde-apps/knode-${PV}:${SLOT}
	>=kde-apps/knotes-${PV}:${SLOT}
	>=kde-base/kode-${PV}:${SLOT}
	>=kde-apps/konsolekalendar-${PV}:${SLOT}
	>=kde-apps/kontact-${PV}:${SLOT}
	>=kde-base/kontact-specialdates-${PV}:${SLOT}
	>=kde-apps/korganizer-${PV}:${SLOT}
	>=kde-base/korn-${PV}:${SLOT}
	pda? ( >=kde-base/kpilot-${PV}:${SLOT} )
	>=kde-apps/ktnef-${PV}:${SLOT}
	>=kde-base/libkcal-${PV}:${SLOT}
	>=kde-base/libkdenetwork-${PV}:${SLOT}
	>=kde-base/libkdepim-${PV}:${SLOT}
	>=kde-base/libkholidays-${PV}:${SLOT}
	>=kde-base/libkmime-${PV}:${SLOT}
	>=kde-base/libkpgp-${PV}:${SLOT}
	>=kde-base/libkpimexchange-${PV}:${SLOT}
	>=kde-base/libkpimidentities-${PV}:${SLOT}
	>=kde-base/libksieve-${PV}:${SLOT}
	>=kde-base/mimelib-${PV}:${SLOT}
	>=kde-base/networkstatus-${PV}:${SLOT}"
