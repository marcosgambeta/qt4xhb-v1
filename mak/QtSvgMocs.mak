$(QT4XHB_OBJ_DIR)/QSvgRendererSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtSvg/QSvgRendererSlots.h
	$(MOC) $^ -o $@
