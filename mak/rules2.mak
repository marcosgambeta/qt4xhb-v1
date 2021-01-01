#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/%.cpp
	$(CC_CMD)
# ActiveQt
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/ActiveQt/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/ActiveQt/%.cpp
	$(CC_CMD)
# QtCore
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtCore/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtCore/%.cpp
	$(CC_CMD)
# QtDeclarative
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtDeclarative/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtDeclarative/%.cpp
	$(CC_CMD)
# QtDesigner
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtDesigner/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtDesigner/%.cpp
	$(CC_CMD)
# QtGui
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtGui/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtGui/%.cpp
	$(CC_CMD)
# QtHelp
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtHelp/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtHelp/%.cpp
	$(CC_CMD)
# QtMultimedia
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtMultimedia/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtMultimedia/%.cpp
	$(CC_CMD)
# QtNetwork
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtNetwork/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtNetwork/%.cpp
	$(CC_CMD)
# QtOpenGL
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtOpenGL/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtOpenGL/%.cpp
	$(CC_CMD)
# QtScript
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtScript/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtScript/%.cpp
	$(CC_CMD)
# QtScriptTools
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtScriptTools/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtScriptTools/%.cpp
	$(CC_CMD)
# QtSql
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtSql/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtSql/%.cpp
	$(CC_CMD)
# QtSvg
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtSvg/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtSvg/%.cpp
	$(CC_CMD)
# QtTest
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtTest/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtTest/%.cpp
	$(CC_CMD)
# QtUiTools
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtUiTools/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtUiTools/%.cpp
	$(CC_CMD)
# QtWebKit
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtWebKit/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtWebKit/%.cpp
	$(CC_CMD)
# QtXml
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtXml/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtXml/%.cpp
	$(CC_CMD)
# QtXmlPatterns
$(QT4XHB_OBJ_DIR)/%.c         : $(QT4XHB_SRC_DIR)/QtXmlPatterns/%.prg
	$(HB_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_SRC_DIR)/QtXmlPatterns/%.cpp
	$(CC_CMD)

$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_OBJ_DIR)/%.c
	$(CC_CMD)
$(QT4XHB_OBJ_DIR)/%$(OBJEXT) : $(QT4XHB_OBJ_DIR)/%.cpp
	$(CC_CMD)
