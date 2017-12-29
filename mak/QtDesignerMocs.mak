#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QDesignerFormWindowInterfaceSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtDesigner/QDesignerFormWindowInterfaceSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QDesignerFormWindowManagerInterfaceSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtDesigner/QDesignerFormWindowManagerInterfaceSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QDesignerPropertyEditorInterfaceSlotsMoc.cpp    : $(QT4XHB_SRC_DIR)/QtDesigner/QDesignerPropertyEditorInterfaceSlots.h
	$(MOC) $^ -o $@
