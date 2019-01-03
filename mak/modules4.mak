#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2019 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# CINCLUDES
ifeq ($(MODULE_ACTIVEQT),yes)
   CINCLUDES += -I$(QT_INC_DIR)/ActiveQt
endif
ifeq ($(MODULE_QTCORE),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtCore
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtDesigner
endif
ifeq ($(MODULE_QTGUI),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtHelp
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtMultimedia
endif
ifeq ($(MODULE_QTNETWORK),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtNetwork
endif
ifeq ($(MODULE_QTOPENGL),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtOpenGL
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtScriptTools
endif
ifeq ($(MODULE_QTSQL),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtSvg
endif
ifeq ($(MODULE_QTTEST),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtTest
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtUiTools
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtWebKit
endif
ifeq ($(MODULE_QTXML),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   CINCLUDES += -I$(QT_INC_DIR)/QtXmlPatterns
endif

ifeq ($(MODULE_ACTIVEQT),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/ActiveQt
endif
ifeq ($(MODULE_QTCORE),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtCore
endif
ifeq ($(MODULE_QTDECLARATIVE),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtDeclarative
endif
ifeq ($(MODULE_QTDESIGNER),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtDesigner
endif
ifeq ($(MODULE_QTGUI),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtGui
endif
ifeq ($(MODULE_QTHELP),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtHelp
endif
ifeq ($(MODULE_QTMULTIMEDIA),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtMultimedia
endif
ifeq ($(MODULE_QTNETWORK),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtNetwork
endif
ifeq ($(MODULE_QTOPENGL),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtOpenGL
endif
ifeq ($(MODULE_QTSCRIPT),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtScript
endif
ifeq ($(MODULE_QTSCRIPTTOOLS),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtScriptTools
endif
ifeq ($(MODULE_QTSQL),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtSql
endif
ifeq ($(MODULE_QTSVG),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtSvg
endif
ifeq ($(MODULE_QTTEST),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtTest
endif
ifeq ($(MODULE_QTUITOOLS),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtUiTools
endif
ifeq ($(MODULE_QTWEBKIT),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtWebKit
endif
ifeq ($(MODULE_QTXML),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtXml
endif
ifeq ($(MODULE_QTXMLPATTERNS),yes)
   CINCLUDES += -I$(QT4XHB_SRC_DIR)/QtXmlPatterns
endif
