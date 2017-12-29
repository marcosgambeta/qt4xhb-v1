#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QHelpContentModelSlotsMoc.cpp       : $(QT4XHB_SRC_DIR)/QtHelp/QHelpContentModelSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpContentWidgetSlotsMoc.cpp      : $(QT4XHB_SRC_DIR)/QtHelp/QHelpContentWidgetSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpEngineCoreSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtHelp/QHelpEngineCoreSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpIndexModelSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtHelp/QHelpIndexModelSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpIndexWidgetSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtHelp/QHelpIndexWidgetSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchEngineSlotsMoc.cpp       : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchEngineSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchQueryWidgetSlotsMoc.cpp  : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchQueryWidgetSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchResultWidgetSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchResultWidgetSlots.h
	$(MOC) $^ -o $@
