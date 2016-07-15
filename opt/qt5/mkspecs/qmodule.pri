CONFIG +=  cross_compile compile_examples qpa largefile precompile_header use_gold_linker enable_new_dtags neon pcre
QT_BUILD_PARTS +=  libs tools
QT_NO_DEFINES =  EGL_X11 IMAGEFORMAT_JPEG LIBPROXY TABLET XINPUT ZLIB
QT_QCONFIG_PATH = 
host_build {
    QT_CPU_FEATURES.x86_64 =  mmx sse sse2
} else {
    QT_CPU_FEATURES.arm =  neon
}
QT_COORD_TYPE = double
QT_LFLAGS_ODBC   = -lodbc
styles += mac fusion windows
QT_CFLAGS_GLIB = -pthread -I/home/penk/raspberry/rootfs/usr/include/glib-2.0 -I/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf/glib-2.0/include 
QT_LIBS_GLIB = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lgthread-2.0 -pthread -lglib-2.0 
QT_CFLAGS_QGTKSTYLE = -pthread -I/home/penk/raspberry/rootfs/usr/include/gtk-2.0 -I/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf/gtk-2.0/include -I/home/penk/raspberry/rootfs/usr/include/gio-unix-2.0/ -I/home/penk/raspberry/rootfs/usr/include/cairo -I/home/penk/raspberry/rootfs/usr/include/pango-1.0 -I/home/penk/raspberry/rootfs/usr/include/cairo -I/home/penk/raspberry/rootfs/usr/include/pixman-1 -I/home/penk/raspberry/rootfs/usr/include/libpng12 -I/home/penk/raspberry/rootfs/usr/include/gdk-pixbuf-2.0 -I/home/penk/raspberry/rootfs/usr/include/libpng12 -I/home/penk/raspberry/rootfs/usr/include/pango-1.0 -I/home/penk/raspberry/rootfs/usr/include/harfbuzz -I/home/penk/raspberry/rootfs/usr/include/pango-1.0 -I/home/penk/raspberry/rootfs/usr/include/freetype2 -I/home/penk/raspberry/rootfs/usr/include/atk-1.0 -I/home/penk/raspberry/rootfs/usr/include/glib-2.0 -I/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf/glib-2.0/include 
QT_LIBS_QGTKSTYLE = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lgobject-2.0 -lglib-2.0 
QT_CFLAGS_QGTK2 = -pthread -I/home/penk/raspberry/rootfs/usr/include/gtk-2.0 -I/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf/gtk-2.0/include -I/home/penk/raspberry/rootfs/usr/include/gio-unix-2.0/ -I/home/penk/raspberry/rootfs/usr/include/cairo -I/home/penk/raspberry/rootfs/usr/include/pango-1.0 -I/home/penk/raspberry/rootfs/usr/include/cairo -I/home/penk/raspberry/rootfs/usr/include/pixman-1 -I/home/penk/raspberry/rootfs/usr/include/libpng12 -I/home/penk/raspberry/rootfs/usr/include/gdk-pixbuf-2.0 -I/home/penk/raspberry/rootfs/usr/include/libpng12 -I/home/penk/raspberry/rootfs/usr/include/pango-1.0 -I/home/penk/raspberry/rootfs/usr/include/harfbuzz -I/home/penk/raspberry/rootfs/usr/include/pango-1.0 -I/home/penk/raspberry/rootfs/usr/include/freetype2 -I/home/penk/raspberry/rootfs/usr/include/atk-1.0 -I/home/penk/raspberry/rootfs/usr/include/glib-2.0 -I/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf/glib-2.0/include 
QT_LIBS_QGTK2 = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lgtk-x11-2.0 -lgdk-x11-2.0 -lpangocairo-1.0 -latk-1.0 -lcairo -lgdk_pixbuf-2.0 -lgio-2.0 -lpangoft2-1.0 -lpango-1.0 -lgobject-2.0 -lglib-2.0 -lfontconfig -lfreetype 
QT_CFLAGS_PULSEAUDIO = -D_REENTRANT -I/home/penk/raspberry/rootfs/usr/include/glib-2.0 -I/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf/glib-2.0/include 
QT_LIBS_PULSEAUDIO = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lpulse-mainloop-glib -lpulse -lglib-2.0 
QMAKE_INCDIR_OPENGL_ES2 = 
QMAKE_LIBDIR_OPENGL_ES2 =  "/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf"
QMAKE_LIBS_OPENGL_ES2 =  "-lGLESv2"
QMAKE_CFLAGS_OPENGL_ES2 = 
QMAKE_CFLAGS_FONTCONFIG = -I/home/penk/raspberry/rootfs/usr/include/freetype2 
QMAKE_LIBS_FONTCONFIG = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lfontconfig -lfreetype 
QMAKE_INCDIR_LIBUDEV = 
QMAKE_LIBS_LIBUDEV = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -ludev 
DEFINES += QT_NO_LIBUDEV
QMAKE_INCDIR_XKBCOMMON_EVDEV = 
QMAKE_LIBS_XKBCOMMON_EVDEV = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lxkbcommon 
DEFINES += QT_NO_LIBINPUT
QMAKE_LIBXI_VERSION_MAJOR = 1
QMAKE_LIBXI_VERSION_MINOR = 7
QMAKE_LIBXI_VERSION_PATCH = 4
QMAKE_X11_PREFIX = /usr
QMAKE_CFLAGS_XKBCOMMON = 
QMAKE_LIBS_XKBCOMMON = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lxkbcommon-x11 -lxkbcommon 
QMAKE_INCDIR_EGL = /home/penk/raspberry/rootfs/usr/include/libdrm 
QMAKE_LIBS_EGL = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lEGL 
QMAKE_CFLAGS_EGL = 
QMAKE_CFLAGS_XCB = 
QMAKE_LIBS_XCB = -L/home/penk/raspberry/rootfs/usr/lib/arm-linux-gnueabihf -lxcb 
sql-drivers = 
sql-plugins =  odbc sqlite sqlite2 tds
