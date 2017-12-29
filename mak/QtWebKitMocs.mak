#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QGraphicsWebViewSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtWebKit/QGraphicsWebViewSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebFrameSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtWebKit/QWebFrameSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebPageSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtWebKit/QWebPageSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebViewSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtWebKit/QWebViewSlots.h
	$(MOC) $^ -o $@
