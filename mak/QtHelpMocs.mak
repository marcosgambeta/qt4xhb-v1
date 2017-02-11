$(QT4XHB_OBJ_DIR)/QHelpContentModelSlotsMoc.cpp       : $(QT4XHB_SRC_DIR)/QtHelp/QHelpContentModelSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpContentWidgetSlotsMoc.cpp      : $(QT4XHB_SRC_DIR)/QtHelp/QHelpContentWidgetSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpEngineCoreSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtHelp/QHelpEngineCoreSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpIndexModelSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtHelp/QHelpIndexModelSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpIndexWidgetSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtHelp/QHelpIndexWidgetSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchEngineSlotsMoc.cpp       : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchEngineSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchQueryWidgetSlotsMoc.cpp  : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchQueryWidgetSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QHelpSearchResultWidgetSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtHelp/QHelpSearchResultWidgetSlots.h
	moc $^ -o $@
