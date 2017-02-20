$(QT4XHB_OBJ_DIR)/QScriptEngineSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtScript/QScriptEngineSlots.h
	$(MOC) $^ -o $@
