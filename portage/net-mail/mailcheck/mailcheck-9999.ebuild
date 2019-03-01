# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
EAPI=7

LICENSE="GPL-3"

EGIT_REPO_URI="${CODEDIR}/${PN} ${MYGITHUB_URIBASE}${PN}.git"
inherit git-r3

DESCRIPTION="check the mails for new or unread ones by notmuch new cmd or so"
HOMEPAGE=""

SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND} net-mail/notmuch"

src_install(){
	dobin mailchecker
	doinitd etc/init.d/mailchecker
	}
