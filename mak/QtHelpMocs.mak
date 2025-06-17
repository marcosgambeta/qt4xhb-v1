#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
#

$(QT4XHB_OBJ_DIR)/QHelpContentModelSlotsMoc.cpp       : $(QT4XHB_SRC_DIR)/QtHelp/QHelpContentModelSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpContentWidgetSlotsMoc.cpp      : $(QT4XHB_SRC_DIR)/QtHelp/QHelpContentWidgetSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpEngineCoreSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtHelp/QHelpEngineCoreSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpIndexModelSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtHelp/QHelpIndexModelSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpIndexWidgetSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtHelp/QHelpIndexWidgetSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchEngineSlotsMoc.cpp       : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchEngineSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchQueryWidgetSlotsMoc.cpp  : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchQueryWidgetSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchResultWidgetSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchResultWidgetSlots.hpp
	$(MOC) $^ -o $@
