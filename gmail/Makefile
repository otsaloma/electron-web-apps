# -*- coding: utf-8-unix -*-

build:
	nativefier \
	--name gmail \
	--icon gmail.png \
	--user-agent "Mozilla/5.0 (X11; Linux x86_64; rv:71.0) Gecko/20100101 Firefox/71.0" \
	--single-instance \
	--electron-version 4.2.11 \
	--internal-urls "https://mail.google.com/.*" \
	"https://mail.google.com/mail/u/0/#inbox" \
	..

.PHONY: build
