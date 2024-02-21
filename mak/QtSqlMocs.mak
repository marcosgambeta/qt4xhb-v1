#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QSqlDriverSlotsMoc.cpp     : $(QT4XHB_SRC_DIR)/QtSql/QSqlDriverSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSqlTableModelSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtSql/QSqlTableModelSlots.hpp
	$(MOC) $^ -o $@
