# xmobar-notification Makefile
# Simo Mattila <simo.h.mattila at gmail dot com>

GTK_PIDGIN_INCLUDES= `pkg-config --cflags gtk+-2.0 pidgin`

GTK_PREFIX=/usr/local
GTK_PREFIX2=/usr

CC= clang
CFLAGS= -O2 -Wall -fpic -g
LDFLAGS= -shared

INCLUDES = \
      -I$(GTK_PREFIX)/include \
      -I$(GTK_PREFIX)/include/gtk-2.0 \
      -I$(GTK_PREFIX)/include/glib-2.0 \
      -I$(GTK_PREFIX)/include/pango-1.0 \
      -I$(GTK_PREFIX)/include/atk-1.0 \
      -I$(GTK_PREFIX)/lib/glib-2.0/include \
      -I$(GTK_PREFIX)/lib/gtk-2.0/include \
      -I$(GTK_PREFIX2)/include \
      -I$(GTK_PREFIX2)/include/gtk-2.0 \
      -I$(GTK_PREFIX2)/include/glib-2.0 \
      -I$(GTK_PREFIX2)/include/pango-1.0 \
      -I$(GTK_PREFIX2)/include/atk-1.0 \
      -I$(GTK_PREFIX2)/lib/glib-2.0/include \
      -I$(GTK_PREFIX2)/lib/gtk-2.0/include \
      $(GTK_PIDGIN_INCLUDES)

xmobar-notification.so: xmobar-notification.c
	$(CC) xmobar-notification.c $(CFLAGS) $(INCLUDES) $(LDFLAGS) -o xmobar-notification.so

install: xmobar-notification.so
	mkdir -p ~/.purple/plugins/
	cp xmobar-notification.so ~/.purple/plugins/

uninstall:
	rm -f ~/.purple/plugins/xmobar-notification.so

clean:
	rm -f xmobar-notification.so
