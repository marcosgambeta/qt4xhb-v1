$(QT4XHB_OBJ_DIR)/QAbstractVideoSurfaceSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtMultimedia/QAbstractVideoSurfaceSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAudioInputSlotsMoc.cpp           : $(QT4XHB_SRC_DIR)/QtMultimedia/QAudioInputSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QAudioOutputSlotsMoc.cpp          : $(QT4XHB_SRC_DIR)/QtMultimedia/QAudioOutputSlots.h
	moc $^ -o $@
