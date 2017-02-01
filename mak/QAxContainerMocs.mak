$(QT4XHB_OBJ_DIR)/QAxBaseSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QAxBaseSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxObjectSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QAxObjectSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxScriptSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QAxScriptSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxScriptManagerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QAxScriptManagerSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxWidgetSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QAxWidgetSlots.h
	moc $^ -o $@
