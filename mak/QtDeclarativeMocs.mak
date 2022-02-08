#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QDeclarativeComponentSlotsMoc.cpp   : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativeComponentSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeEngineSlotsMoc.cpp      : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativeEngineSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeExpressionSlotsMoc.cpp  : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativeExpressionSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativePropertyMapSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativePropertyMapSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeViewSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativeViewSlots.h
	$(MOC) $^ -o $@
