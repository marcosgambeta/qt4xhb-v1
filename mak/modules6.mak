#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# MOCINCLUDES
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCINCLUDES += -I$(QTDIR)/include/ActiveQt
endif
ifeq ($(MODULE_QTCORE),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtCore
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtDesigner
endif
ifeq ($(MODULE_QTGUI),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtHelp
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtMultimedia
endif
ifeq ($(MODULE_QTNETWORK),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtNetwork
endif
ifeq ($(MODULE_QTOPENGL),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtOpenGL
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtScriptTools
endif
ifeq ($(MODULE_QTSQL),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtSvg
endif
ifeq ($(MODULE_QTTEST),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtTest
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtUiTools
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtWebKit
endif
ifeq ($(MODULE_QTXML),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   MOCINCLUDES += -I$(QTDIR)/include/QtXmlPatterns
endif
