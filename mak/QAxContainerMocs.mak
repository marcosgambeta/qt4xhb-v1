#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

#$(QT4XHB_OBJ_DIR)/QAxBaseSlotsMoc.cpp          : $(QT4XHB_SRC_DIR)/ActiveQt/QAxBaseSlots.h
#	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxObjectSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxObjectSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxScriptSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxScriptSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxScriptManagerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/ActiveQt/QAxScriptManagerSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxWidgetSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxWidgetSlots.h
	$(MOC) $^ -o $@
