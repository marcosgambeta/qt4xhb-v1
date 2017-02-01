$(QT4XHB_OBJ_DIR)/QAbstractVideoSurfaceSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QAbstractVideoSurfaceSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAudioInputSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QAudioInputSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAudioOutputSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QAudioOutputSlots.h
	moc $^ -o $@
