$(QT4XHB_OBJ_DIR)/QSqlDriverSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QSqlDriverSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QSqlTableModelSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QSqlTableModelSlots.h
	moc $^ -o $@
