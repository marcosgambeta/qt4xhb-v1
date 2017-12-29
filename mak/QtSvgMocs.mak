#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QSvgRendererSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtSvg/QSvgRendererSlots.h
	$(MOC) $^ -o $@
