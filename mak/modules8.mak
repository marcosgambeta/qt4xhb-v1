#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

ifeq ($(MODULE_ACTIVEQT),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqaxcontainer4$(LIBEXT)
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqaxserver4$(LIBEXT)
endif
ifeq ($(MODULE_QTCORE),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtcore4$(LIBEXT)
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtdeclarative4$(LIBEXT)
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtdesigner4$(LIBEXT)
endif
ifeq ($(MODULE_QTGUI),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtgui4$(LIBEXT)
endif
ifeq ($(MODULE_QTHELP),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqthelp4$(LIBEXT)
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtmultimedia4$(LIBEXT)
endif
ifeq ($(MODULE_QTNETWORK),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtnetwork4$(LIBEXT)
endif
ifeq ($(MODULE_QTOPENGL),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtopengl4$(LIBEXT)
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtscript4$(LIBEXT)
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtscripttools4$(LIBEXT)
endif
ifeq ($(MODULE_QTSQL),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtsql4$(LIBEXT)
endif
ifeq ($(MODULE_QTSVG),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtsvg4$(LIBEXT)
endif
ifeq ($(MODULE_QTTEST),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqttest4$(LIBEXT)
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtuitools4$(LIBEXT)
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtwebkit4$(LIBEXT)
endif
ifeq ($(MODULE_QTXML),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtxml4$(LIBEXT)
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   ALLLIBS += $(QT4XHB_LIB_DIR)/$(LIBPRE)hbqtxmlpatterns4$(LIBEXT)
endif
