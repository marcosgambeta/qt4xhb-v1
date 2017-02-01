$(QT4XHB_OBJ_DIR)/QGraphicsWebViewSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QGraphicsWebViewSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebFrameSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QWebFrameSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebPageSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QWebPageSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebViewSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QWebViewSlots.h
	moc $^ -o $@
