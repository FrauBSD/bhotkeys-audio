############################################################ LICENSE
#
# SPDX-License-Identifier: BSD-2-Clause
#
# Copyright (c) 2026 Devin Teske <dteske@FreeBSD.org>
#
############################################################ IDENT(1)
#
# $Title: bhotkeys-audio - volume, mute, and output $
# $Copyright: 2026 Devin Teske. All rights reserved. $
# $FrauBSD: bhotkeys-audio/Makefile 2026-10-05 17:36:32 -0700 Devin Teske $
#
############################################################ PATHS

PREFIX?=	/usr/local
BINDIR?=	${PREFIX}/bin
PLUGDIR?=	${PREFIX}/share/bhotkeys/plugins.d
MANDIR?=	${PREFIX}/share/man/man1

############################################################ FILES

BIN=		bin/volume-osd bin/audio-output-toggle \
		bin/audio-output-osd bin/audio-output-devices
PLUG=		plugins.d/fn-vol-down plugins.d/fn-vol-up \
		plugins.d/fn-mute plugins.d/fn-audio-out
MAN1=		volume-osd audio-output-toggle audio-output-osd \
		audio-output-devices

############################################################ TARGETS

.PHONY: install

install:
	mkdir -p ${DESTDIR}${BINDIR} ${DESTDIR}${PLUGDIR} \
	    ${DESTDIR}${MANDIR}
	install -m 755 ${BIN} ${DESTDIR}${BINDIR}
	install -m 644 ${PLUG} ${DESTDIR}${PLUGDIR}
.for m in ${MAN1}
	gzip -cn man/${m}.1 > ${DESTDIR}${MANDIR}/${m}.1.gz
	chmod 444 ${DESTDIR}${MANDIR}/${m}.1.gz
.endfor

################################################################################
# END
################################################################################
