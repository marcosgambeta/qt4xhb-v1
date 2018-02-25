#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# MOCINCLUDES
ifeq ($(MODULE_ACTIVEQT),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/ActiveQt
endif
ifeq ($(MODULE_QTCORE),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtCore
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtDesigner
endif
ifeq ($(MODULE_QTGUI),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtHelp
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtMultimedia
endif
ifeq ($(MODULE_QTNETWORK),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtNetwork
endif
ifeq ($(MODULE_QTOPENGL),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtOpenGL
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtScriptTools
endif
ifeq ($(MODULE_QTSQL),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtSvg
endif
ifeq ($(MODULE_QTTEST),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtTest
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtUiTools
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtWebKit
endif
ifeq ($(MODULE_QTXML),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   MOCINCLUDES += -I$(QT_INC_DIR)/QtXmlPatterns
endif
