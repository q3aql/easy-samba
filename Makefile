####################################
# Install easy-samba 1.6.2 (q3aql) #
####################################

PREFIX=/usr

install:
	mkdir -p /opt/easy-samba/
	mkdir -p $(PREFIX)/share/icons/easy-samba/
	cp -rf icon/easy-samba.png $(PREFIX)/share/icons/easy-samba/
	cp -rf icon/easy-samba.desktop $(PREFIX)/share/applications/
	cp -rf src/easy-samba $(PREFIX)/bin
	cp -rf src/easy-samba-gtk $(PREFIX)/bin
	cp -rf src/easy-samba-gtk-admin $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/easy-samba
	chmod 755 $(PREFIX)/bin/easy-samba-gtk
	chmod 755 $(PREFIX)/bin/easy-samba-gtk-admin
	
install-es:
	mkdir -p /opt/easy-samba/
	mkdir -p $(PREFIX)/share/icons/easy-samba/
	cp -rf icon/easy-samba.png $(PREFIX)/share/icons/easy-samba/
	cp -rf icon/easy-samba.desktop $(PREFIX)/share/applications/
	cp -rf src-ES/easy-samba $(PREFIX)/bin
	cp -rf src-ES/easy-samba-gtk $(PREFIX)/bin
	cp -rf src-ES/easy-samba-gtk-admin $(PREFIX)/bin
	chmod 755 $(PREFIX)/bin/easy-samba
	chmod 755 $(PREFIX)/bin/easy-samba-gtk
	chmod 755 $(PREFIX)/bin/easy-samba-gtk-admin

uninstall:
	rm -rf $(PREFIX)/bin/easy-samba
	rm -rf $(PREFIX)/bin/easy-samba-gtk
	rm -rf $(PREFIX)/bin/easy-samba-gtk-admin
	rm -rf $(PREFIX)/share/icons/easy-samba/easy-samba.png
	rm -rf $(PREFIX)/share/applications/easy-samba.desktop
