#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/HAbstractListModelMoc.cpp             : $(QT4XHB_SRC_DIR)/QtCore/HAbstractListModel.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/HAbstractTableModelMoc.cpp            : $(QT4XHB_SRC_DIR)/QtCore/HAbstractTableModel.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/HAbstractTableModelV2Moc.cpp          : $(QT4XHB_SRC_DIR)/QtCore/HAbstractTableModelV2.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/HEventFilterMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtCore/HEventFilter.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractAnimationSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtCore/QAbstractAnimationSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractEventDispatcherSlotsMoc.cpp  : $(QT4XHB_SRC_DIR)/QtCore/QAbstractEventDispatcherSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractItemModelSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtCore/QAbstractItemModelSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractStateSlotsMoc.cpp            : $(QT4XHB_SRC_DIR)/QtCore/QAbstractStateSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QAbstractTransitionSlotsMoc.cpp       : $(QT4XHB_SRC_DIR)/QtCore/QAbstractTransitionSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QCoreApplicationSlotsMoc.cpp          : $(QT4XHB_SRC_DIR)/QtCore/QCoreApplicationSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QFileSystemWatcherSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtCore/QFileSystemWatcherSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QFutureWatcherBaseSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtCore/QFutureWatcherBaseSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QIODeviceSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtCore/QIODeviceSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QObjectSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtCore/QObjectSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QProcessSlotsMoc.cpp                  : $(QT4XHB_SRC_DIR)/QtCore/QProcessSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSequentialAnimationGroupSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtCore/QSequentialAnimationGroupSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSignalMapperSlotsMoc.cpp             : $(QT4XHB_SRC_DIR)/QtCore/QSignalMapperSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSocketNotifierSlotsMoc.cpp           : $(QT4XHB_SRC_DIR)/QtCore/QSocketNotifierSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QStateSlotsMoc.cpp                    : $(QT4XHB_SRC_DIR)/QtCore/QStateSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QStateMachineSlotsMoc.cpp             : $(QT4XHB_SRC_DIR)/QtCore/QStateMachineSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QThreadSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtCore/QThreadSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QTimeLineSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtCore/QTimeLineSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QTimerSlotsMoc.cpp                    : $(QT4XHB_SRC_DIR)/QtCore/QTimerSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QVariantAnimationSlotsMoc.cpp         : $(QT4XHB_SRC_DIR)/QtCore/QVariantAnimationSlots.hpp
	$(MOC) $^ -o $@
