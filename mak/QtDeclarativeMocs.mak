$(QT4XHB_OBJ_DIR)/QDeclarativeComponentSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QDeclarativeComponentSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeEngineSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QDeclarativeEngineSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeExpressionSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QDeclarativeExpressionSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativePropertyMapSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QDeclarativePropertyMapSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDeclarativeViewSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QDeclarativeViewSlots.h
	moc $^ -o $@
