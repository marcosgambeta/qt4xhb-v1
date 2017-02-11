$(QT4XHB_OBJ_DIR)/QGraphicsWebViewSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtWebKit/QGraphicsWebViewSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebFrameSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtWebKit/QWebFrameSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebPageSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtWebKit/QWebPageSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebViewSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtWebKit/QWebViewSlots.h
	moc $^ -o $@
