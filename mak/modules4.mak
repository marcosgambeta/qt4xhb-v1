#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# CINCLUDES
ifeq ($(MODULE_ACTIVEQT),yes)
   CINCLUDES += -I$(QTDIR)/include/ActiveQt
endif
ifeq ($(MODULE_QTCORE),yes)
   CINCLUDES += -I$(QTDIR)/include/QtCore
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CINCLUDES += -I$(QTDIR)/include/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CINCLUDES += -I$(QTDIR)/include/QtDesigner
endif
ifeq ($(MODULE_QTGUI),yes)
   CINCLUDES += -I$(QTDIR)/include/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   CINCLUDES += -I$(QTDIR)/include/QtHelp
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   CINCLUDES += -I$(QTDIR)/include/QtMultimedia
endif
ifeq ($(MODULE_QTNETWORK),yes)
   CINCLUDES += -I$(QTDIR)/include/QtNetwork
endif
ifeq ($(MODULE_QTOPENGL),yes)
   CINCLUDES += -I$(QTDIR)/include/QtOpenGL
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   CINCLUDES += -I$(QTDIR)/include/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtScriptTools
endif
ifeq ($(MODULE_QTSQL),yes)
   CINCLUDES += -I$(QTDIR)/include/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   CINCLUDES += -I$(QTDIR)/include/QtSvg
endif
ifeq ($(MODULE_QTTEST),yes)
   CINCLUDES += -I$(QTDIR)/include/QtTest
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtUiTools
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   CINCLUDES += -I$(QTDIR)/include/QtWebKit
endif
ifeq ($(MODULE_QTXML),yes)
   CINCLUDES += -I$(QTDIR)/include/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   CINCLUDES += -I$(QTDIR)/include/QtXmlPatterns
endif
