#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# checa presença dos módulos na instalação do Qt Framework
ifneq ($(wildcard $(QT_INC_DIR)/ActiveQt/.*),)
   MODULE_ACTIVEQT = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtCore/.*),)
   MODULE_QTCORE = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtDeclarative/.*),)
   MODULE_QTDECLARATIVE = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtDesigner/.*),)
   MODULE_QTDESIGNER = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtGui/.*),)
   MODULE_QTGUI = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtHelp/.*),)
   MODULE_QTHELP = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtMultimedia/.*),)
   MODULE_QTMULTIMEDIA = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtNetwork/.*),)
   MODULE_QTNETWORK = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtOpenGL/.*),)
   MODULE_QTOPENGL = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtScript/.*),)
   MODULE_QTSCRIPT = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtScriptTools/.*),)
   MODULE_QTSCRIPTTOOLS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtSql/.*),)
   MODULE_QTSQL = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtSvg/.*),)
   MODULE_QTSVG = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtTest/.*),)
   MODULE_QTTEST = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtUiTools/.*),)
   MODULE_QTUITOOLS = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtWebKit/.*),)
   MODULE_QTWEBKIT = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtXml/.*),)
   MODULE_QTXML = yes
endif
ifneq ($(wildcard $(QT_INC_DIR)/QtXmlPatterns/.*),)
   MODULE_QTXMLPATTERNS = yes
endif
