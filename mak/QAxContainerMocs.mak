$(QT4XHB_OBJ_DIR)/QAxBaseSlotsMoc.cpp          : $(QT4XHB_SRC_DIR)/ActiveQt/QAxBaseSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxObjectSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxObjectSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxScriptSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxScriptSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxScriptManagerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/ActiveQt/QAxScriptManagerSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxWidgetSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxWidgetSlots.h
	moc $^ -o $@
