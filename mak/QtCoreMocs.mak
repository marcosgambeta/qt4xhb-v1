#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/HAbstractListModelMoc.cpp             : $(QT4XHB_SRC_DIR)/QtCore/HAbstractListModel.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/HAbstractTableModelMoc.cpp            : $(QT4XHB_SRC_DIR)/QtCore/HAbstractTableModel.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/HAbstractTableModelV2Moc.cpp          : $(QT4XHB_SRC_DIR)/QtCore/HAbstractTableModelV2.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/HEventFilterMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtCore/HEventFilter.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractAnimationSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtCore/QAbstractAnimationSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractEventDispatcherSlotsMoc.cpp  : $(QT4XHB_SRC_DIR)/QtCore/QAbstractEventDispatcherSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractItemModelSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtCore/QAbstractItemModelSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractStateSlotsMoc.cpp            : $(QT4XHB_SRC_DIR)/QtCore/QAbstractStateSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractTransitionSlotsMoc.cpp       : $(QT4XHB_SRC_DIR)/QtCore/QAbstractTransitionSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QCoreApplicationSlotsMoc.cpp          : $(QT4XHB_SRC_DIR)/QtCore/QCoreApplicationSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QFileSystemWatcherSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtCore/QFileSystemWatcherSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QFutureWatcherBaseSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtCore/QFutureWatcherBaseSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QIODeviceSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtCore/QIODeviceSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QObjectSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtCore/QObjectSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QProcessSlotsMoc.cpp                  : $(QT4XHB_SRC_DIR)/QtCore/QProcessSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSequentialAnimationGroupSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtCore/QSequentialAnimationGroupSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSignalMapperSlotsMoc.cpp             : $(QT4XHB_SRC_DIR)/QtCore/QSignalMapperSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSocketNotifierSlotsMoc.cpp           : $(QT4XHB_SRC_DIR)/QtCore/QSocketNotifierSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QStateSlotsMoc.cpp                    : $(QT4XHB_SRC_DIR)/QtCore/QStateSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QStateMachineSlotsMoc.cpp             : $(QT4XHB_SRC_DIR)/QtCore/QStateMachineSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QThreadSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtCore/QThreadSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QTimeLineSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtCore/QTimeLineSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QTimerSlotsMoc.cpp                    : $(QT4XHB_SRC_DIR)/QtCore/QTimerSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QVariantAnimationSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtCore/QVariantAnimationSlots.h
	$(MOC) $^ -o $@
