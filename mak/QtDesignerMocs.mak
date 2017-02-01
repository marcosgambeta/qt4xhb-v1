$(QT4XHB_OBJ_DIR)/QDesignerFormWindowInterfaceSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QDesignerFormWindowInterfaceSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDesignerFormWindowManagerInterfaceSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QDesignerFormWindowManagerInterfaceSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QDesignerPropertyEditorInterfaceSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QDesignerPropertyEditorInterfaceSlots.h
	moc $^ -o $@
