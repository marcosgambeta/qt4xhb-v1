#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QAbstractSocketSlotsMoc.cpp              : $(QT4XHB_SRC_DIR)/QtNetwork/QAbstractSocketSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QFtpSlotsMoc.cpp                         : $(QT4XHB_SRC_DIR)/QtNetwork/QFtpSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QLocalServerSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtNetwork/QLocalServerSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QLocalSocketSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtNetwork/QLocalSocketSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkAccessManagerSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkAccessManagerSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkConfigurationManagerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkConfigurationManagerSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkReplySlotsMoc.cpp                : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkReplySlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkSessionSlotsMoc.cpp              : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkSessionSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSslSocketSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtNetwork/QSslSocketSlots.h
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QTcpServerSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtNetwork/QTcpServerSlots.h
	$(MOC) $^ -o $@
