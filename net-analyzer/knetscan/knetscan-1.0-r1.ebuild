# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/net-analyzer/knetscan/knetscan-1.0-r1.ebuild,v 1.10 2009/11/10 23:05:16 ssuominen Exp $

ARTS_REQUIRED=never
inherit kde eutils

DESCRIPTION="KDE frontend for nmap, ping, whois and traceroute"
HOMEPAGE="http://sourceforge.net/projects/knetscan"
SRC_URI="mirror://sourceforge/knetscan/${P}.tar.gz
	mirror://gentoo/kde-admindir-3.5.3.tar.bz2"

LICENSE="GPL-2"
SLOT="3.5"
KEYWORDS="amd64 ppc ppc64 sparc x86"
IUSE=""

DEPEND=">=net-analyzer/nmap-2.54_beta36
	>=net-analyzer/traceroute-1.4_p12
	>=net-misc/whois-4.5.28-r1
	>=sys-apps/netkit-base-0.17-r5"

need-kde 3.5

PATCHES=( "${FILESDIR}/${P}-desktop.diff" )
