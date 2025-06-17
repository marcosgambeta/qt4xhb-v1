#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

ifeq ($(MODULE_ACTIVEQT),yes)
   include mak/QAxContainerMocs.mak
endif
ifeq ($(MODULE_ACTIVEQT),yes)
   include mak/QAxServerMocs.mak
endif
ifeq ($(MODULE_QTCORE),yes)
   include mak/QtCoreMocs.mak
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   include mak/QtDeclarativeMocs.mak
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   include mak/QtDesignerMocs.mak
endif
ifeq ($(MODULE_QTGUI),yes)
   include mak/QtGuiMocs.mak
endif
ifeq ($(MODULE_QTHELP),yes)
   include mak/QtHelpMocs.mak
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   include mak/QtMultimediaMocs.mak
endif
ifeq ($(MODULE_QTNETWORK),yes)
   include mak/QtNetworkMocs.mak
endif
ifeq ($(MODULE_QTOPENGL),yes)
   include mak/QtOpenGLMocs.mak
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   include mak/QtScriptMocs.mak
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   include mak/QtScriptToolsMocs.mak
endif
ifeq ($(MODULE_QTSQL),yes)
   include mak/QtSqlMocs.mak
endif
ifeq ($(MODULE_QTSVG),yes)
   include mak/QtSvgMocs.mak
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   include mak/QtUiToolsMocs.mak
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   include mak/QtWebKitMocs.mak
endif
ifeq ($(MODULE_QTXML),yes)
   include mak/QtXmlMocs.mak
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   include mak/QtXmlPatternsMocs.mak
endif
