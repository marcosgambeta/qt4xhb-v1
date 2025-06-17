#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT4XHB_OBJ_DIR)/QScriptEngineDebuggerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtScriptTools/QScriptEngineDebuggerSlots.hpp
	$(MOC) $^ -o $@
