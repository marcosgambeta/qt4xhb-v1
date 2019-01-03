#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# CFLAGS
ifeq ($(MODULE_ACTIVEQT),yes)
   CFLAGS += -DQT_ACTIVEQT_LIB
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   CFLAGS += -DQT_AXCONTAINER_LIB
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   CFLAGS += -DQT_AXSERVER_LIB
endif
ifeq ($(MODULE_QTCORE),yes)
   CFLAGS += -DQT_CORE_LIB
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CFLAGS += -DQT_DECLARATIVE_LIB
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CFLAGS += -DQT_DESIGNER_LIB
endif
ifeq ($(MODULE_QTGUI),yes)
   CFLAGS += -DQT_GUI_LIB
endif
ifeq ($(MODULE_QTHELP),yes)
   CFLAGS += -DQT_HELP_LIB
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   CFLAGS += -DQT_MULTIMEDIA_LIB
endif
ifeq ($(MODULE_QTNETWORK),yes)
   CFLAGS += -DQT_NETWORK_LIB
endif
ifeq ($(MODULE_QTOPENGL),yes)
   CFLAGS += -DQT_OPENGL_LIB
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   CFLAGS += -DQT_SCRIPT_LIB
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   CFLAGS += -DQT_SCRIPTTOOLS_LIB
endif
ifeq ($(MODULE_QTSQL),yes)
   CFLAGS += -DQT_SQL_LIB
endif
ifeq ($(MODULE_QTSVG),yes)
   CFLAGS += -DQT_SVG_LIB
endif
ifeq ($(MODULE_QTTEST),yes)
   CFLAGS += -DQT_TEST_LIB
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   CFLAGS += -DQT_UITOOLS_LIB
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   CFLAGS += -DQT_WEBKIT_LIB
endif
ifeq ($(MODULE_QTXML),yes)
   CFLAGS += -DQT_XML_LIB
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   CFLAGS += -DQT_XMLPATTERNS_LIB
endif
