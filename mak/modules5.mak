#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# MOCFLAGS
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCFLAGS += -DQT_ACTIVEQT_LIB
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCFLAGS += -DQT_AXCONTAINER_LIB
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCFLAGS += -DQT_AXSERVER_LIB
endif
ifeq ($(MODULE_QTCORE),yes)
   MOCFLAGS += -DQT_CORE_LIB
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   MOCFLAGS += -DQT_DECLARATIVE_LIB
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   MOCFLAGS += -DQT_DESIGNER_LIB
endif
ifeq ($(MODULE_QTGUI),yes)
   MOCFLAGS += -DQT_GUI_LIB
endif
ifeq ($(MODULE_QTHELP),yes)
   MOCFLAGS += -DQT_HELP_LIB
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   MOCFLAGS += -DQT_MULTIMEDIA_LIB
endif
ifeq ($(MODULE_QTNETWORK),yes)
   MOCFLAGS += -DQT_NETWORK_LIB
endif
ifeq ($(MODULE_QTOPENGL),yes)
   MOCFLAGS += -DQT_OPENGL_LIB
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   MOCFLAGS += -DQT_SCRIPT_LIB
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   MOCFLAGS += -DQT_SCRIPTTOOLS_LIB
endif
ifeq ($(MODULE_QTSQL),yes)
   MOCFLAGS += -DQT_SQL_LIB
endif
ifeq ($(MODULE_QTSVG),yes)
   MOCFLAGS += -DQT_SVG_LIB
endif
ifeq ($(MODULE_QTTEST),yes)
   MOCFLAGS += -DQT_TEST_LIB
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   MOCFLAGS += -DQT_UITOOLS_LIB
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   MOCFLAGS += -DQT_WEBKIT_LIB
endif
ifeq ($(MODULE_QTXML),yes)
   MOCFLAGS += -DQT_XML_LIB
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   MOCFLAGS += -DQT_XMLPATTERNS_LIB
endif
