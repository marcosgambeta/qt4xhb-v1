#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

#$(QT4XHB_OBJ_DIR)/QAxBaseSlotsMoc.cpp          : $(QT4XHB_SRC_DIR)/ActiveQt/QAxBaseSlots.hpp
#	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxObjectSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxObjectSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxScriptSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxScriptSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxScriptManagerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/ActiveQt/QAxScriptManagerSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAxWidgetSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/ActiveQt/QAxWidgetSlots.hpp
	$(MOC) $^ -o $@
