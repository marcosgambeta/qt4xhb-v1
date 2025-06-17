#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/HUiLoaderMoc.cpp : $(QT4XHB_SRC_DIR)/QtUiTools/HUiLoader.hpp
	$(MOC) $^ -o $@
