# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=7

KDE_HANDBOOK="optional"
inherit kde4-base

DESCRIPTION="KDE: Educational programming environment using the Logo programming language"
HOMEPAGE="https://www.kde.org/applications/education/kturtle https://edu.kde.org/kturtle"
KEYWORDS="amd64 x86 ~amd64-linux ~x86-linux"
IUSE="debug"

RDEPEND="
	$(add_kdeapps_dep knotify)
"
