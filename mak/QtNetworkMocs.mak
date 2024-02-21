#
# Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
#
# Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
#

$(QT4XHB_OBJ_DIR)/QAbstractSocketSlotsMoc.cpp              : $(QT4XHB_SRC_DIR)/QtNetwork/QAbstractSocketSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QFtpSlotsMoc.cpp                         : $(QT4XHB_SRC_DIR)/QtNetwork/QFtpSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QLocalServerSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtNetwork/QLocalServerSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QLocalSocketSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtNetwork/QLocalSocketSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkAccessManagerSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkAccessManagerSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkConfigurationManagerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkConfigurationManagerSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkReplySlotsMoc.cpp                : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkReplySlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkSessionSlotsMoc.cpp              : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkSessionSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QSslSocketSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtNetwork/QSslSocketSlots.hpp
	$(MOC) $^ -o $@
$(QT4XHB_OBJ_DIR)/QTcpServerSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtNetwork/QTcpServerSlots.hpp
	$(MOC) $^ -o $@
