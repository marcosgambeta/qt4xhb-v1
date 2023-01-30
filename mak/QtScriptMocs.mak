#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QScriptEngineSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtScript/QScriptEngineSlots.h
	$(MOC) $^ -o $@
