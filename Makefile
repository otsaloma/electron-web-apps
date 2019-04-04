# -*- coding: utf-8-unix -*-

APP =
APPS = dropbox-paper fastmail gmail
PREFIX = /usr/local
ICON_SIZE = $(if $(APP),$(shell identify -format "%wx%h" $(APP)/$(APP).png))

build:
	test -n "$(APP)" # APP
	$(MAKE) clean
	$(MAKE) -C $(APP) build

build-all:
	for X in $(APPS); do $(MAKE) APP=$$X build; done

clean:
	test -n "$(APP)" # APP
	rm -rf $(APP)-linux-x64

clean-all:
	for X in $(APPS); do $(MAKE) APP=$$X clean; done

install:
	test -n "$(APP)" # APP
	test -n "$(ICON_SIZE)" # ICON_SIZE
	$(MAKE) uninstall
	sudo mkdir -p $(PREFIX)/bin
	sudo mkdir -p $(PREFIX)/electron
	sudo mkdir -p $(PREFIX)/share/applications
	sudo mkdir -p $(PREFIX)/share/icons/hicolor/$(ICON_SIZE)/apps
	sudo cp -r $(APP)-linux-x64 $(PREFIX)/electron/$(APP)
	sudo ln -s $(PREFIX)/electron/$(APP)/$(APP) $(PREFIX)/bin
	sudo cp $(APP)/$(APP).desktop $(PREFIX)/share/applications
	sudo cp $(APP)/$(APP).png $(PREFIX)/share/icons/hicolor/$(ICON_SIZE)/apps

install-all:
	for X in $(APPS); do $(MAKE) APP=$$X install; done

uninstall:
	test -n "$(APP)" # APP
	sudo rm -f  $(PREFIX)/bin/$(APP)
	sudo rm -rf $(PREFIX)/electron/$(APP)
	sudo rm -f  $(PREFIX)/share/applications/$(APP).desktop
	sudo rm -f  $(PREFIX)/share/icons/hicolor/*/apps/$(APP).png

uninstall-all:
	for X in $(APPS); do $(MAKE) APP=$$X uninstall; done

.PHONY: build build-all clean clean-all install install-all uninstall uninstall-all
