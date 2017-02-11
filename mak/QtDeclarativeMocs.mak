$(QT4XHB_OBJ_DIR)/QDeclarativeComponentSlotsMoc.cpp   : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativeComponentSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeEngineSlotsMoc.cpp      : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativeEngineSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeExpressionSlotsMoc.cpp  : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativeExpressionSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativePropertyMapSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativePropertyMapSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeViewSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtDeclarative/QDeclarativeViewSlots.h
	moc $^ -o $@
