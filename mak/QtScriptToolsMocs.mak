#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QScriptEngineDebuggerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtScriptTools/QScriptEngineDebuggerSlots.h
	$(MOC) $^ -o $@
