plugin_LTLIBRARIES = libgstavvideoscale.la

libgstavvideoscale_la_SOURCES = gstffmpegscale.c

libgstavvideoscale_la_CFLAGS = $(SWSCALE_CFLAGS) $(GST_PLUGINS_BASE_CFLAGS) $(GST_BASE_CFLAGS) $(GST_CFLAGS) \
	$(ORC_CFLAGS)
libgstavvideoscale_la_LIBADD = $(SWSCALE_LIBS) \
	$(GST_PLUGINS_BASE_LIBS) -lgstvideo-$(GST_API_VERSION) \
	$(GST_BASE_LIBS) $(ORC_LIBS) $(LIBM) -lz
libgstavvideoscale_la_LDFLAGS = $(GST_PLUGIN_LDFLAGS) $(DARWIN_LDFLAGS)

if HAVE_LIBAV_UNINSTALLED
libgstavvideoscale_la_DEPENDENCIES = $(SWSCALE_DEPS)
endif
