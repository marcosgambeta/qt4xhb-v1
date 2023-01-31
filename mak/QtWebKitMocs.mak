#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QGraphicsWebViewSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtWebKit/QGraphicsWebViewSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebFrameSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtWebKit/QWebFrameSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebPageSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtWebKit/QWebPageSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QWebViewSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtWebKit/QWebViewSlots.hpp
	$(MOC) $^ -o $@
