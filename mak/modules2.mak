#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

# checa presença dos módulos na instalação do Qt Framework
ifneq ($(wildcard $(QTDIR)/include/ActiveQt/.*),)
   MODULE_ACTIVEQT = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtCore/.*),)
   MODULE_QTCORE = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtDeclarative/.*),)
   MODULE_QTDECLARATIVE = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtDesigner/.*),)
   MODULE_QTDESIGNER = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtGui/.*),)
   MODULE_QTGUI = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtHelp/.*),)
   MODULE_QTHELP = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtMultimedia/.*),)
   MODULE_QTMULTIMEDIA = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtNetwork/.*),)
   MODULE_QTNETWORK = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtOpenGL/.*),)
   MODULE_QTOPENGL = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtScript/.*),)
   MODULE_QTSCRIPT = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtScriptTools/.*),)
   MODULE_QTSCRIPTTOOLS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtSql/.*),)
   MODULE_QTSQL = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtSvg/.*),)
   MODULE_QTSVG = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtTest/.*),)
   MODULE_QTTEST = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtUiTools/.*),)
   MODULE_QTUITOOLS = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtWebKit/.*),)
   MODULE_QTWEBKIT = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtXml/.*),)
   MODULE_QTXML = yes
endif
ifneq ($(wildcard $(QTDIR)/include/QtXmlPatterns/.*),)
   MODULE_QTXMLPATTERNS = yes
endif
