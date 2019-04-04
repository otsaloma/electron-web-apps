# -*- coding: utf-8-unix -*-

build:
	nativefier \
	--name=dropbox-paper \
	--icon=dropbox-paper.png \
	--width=1200 \
	--height=800 \
	--inject=dropbox-paper.css \
	--inject=dropbox-paper.js \
	--single-instance \
	--internal-urls="https://paper.dropbox.com/.*" \
	"https://paper.dropbox.com/" \
	..

.PHONY: build
