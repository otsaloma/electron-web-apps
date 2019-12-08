# -*- coding: utf-8-unix -*-

build:
	nativefier \
	--name gmail \
	--icon gmail.png \
	--single-instance \
	--electron-version 4.2.11 \
	--internal-urls "https://mail.google.com/.*" \
	"https://mail.google.com/mail/u/0/#inbox" \
	..

.PHONY: build
