# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit cmake-utils kodi-addon

DESCRIPTION="Biogenesis screensaver for Kodi"
HOMEPAGE="https://github.com/notspiff/screensaver.biogenesis"
SRC_URI=""

case ${PV} in
9999)
	SRC_URI=""
	EGIT_REPO_URI="git://github.com/notspiff/screensaver.biogenesis.git"
	inherit git-r3
	;;
*)
	KEYWORDS="~amd64 ~x86"
	SRC_URI="https://github.com/notspiff/screensaver.biogenesis/archive/v${PV}.tar.gz -> ${P}.tar.gz"
	S="${WORKDIR}/screensaver.biogenesis-${PV}"
	;;
esac

LICENSE="GPL-2"
SLOT="0"
IUSE=""

DEPEND="
	media-tv/kodi
	"
