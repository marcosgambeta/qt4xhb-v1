#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QSqlDriverSlotsMoc.cpp     : $(QT4XHB_SRC_DIR)/QtSql/QSqlDriverSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSqlTableModelSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtSql/QSqlTableModelSlots.h
	$(MOC) $^ -o $@
