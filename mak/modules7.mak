#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

ifeq ($(MODULE_ACTIVEQT),yes)
   include mak/QAxContainer.mak
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   include mak/QAxServer.mak
endif
ifeq ($(MODULE_QTCORE),yes)
   include mak/QtCore.mak
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   include mak/QtDeclarative.mak
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   include mak/QtDesigner.mak
endif
ifeq ($(MODULE_QTGUI),yes)
   include mak/QtGui.mak
endif
ifeq ($(MODULE_QTHELP),yes)
   include mak/QtHelp.mak
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   include mak/QtMultimedia.mak
endif
ifeq ($(MODULE_QTNETWORK),yes)
   include mak/QtNetwork.mak
endif
ifeq ($(MODULE_QTOPENGL),yes)
   include mak/QtOpenGL.mak
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   include mak/QtScript.mak
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   include mak/QtScriptTools.mak
endif
ifeq ($(MODULE_QTSQL),yes)
   include mak/QtSql.mak
endif
ifeq ($(MODULE_QTSVG),yes)
   include mak/QtSvg.mak
endif
ifeq ($(MODULE_QTTEST),yes)
   include mak/QtTest.mak
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   include mak/QtUiTools.mak
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   include mak/QtWebKit.mak
endif
ifeq ($(MODULE_QTXML),yes)
   include mak/QtXml.mak
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   include mak/QtXmlPatterns.mak
endif
