$(QT4XHB_OBJ_DIR)/QAbstractSocketSlotsMoc.cpp              : $(QT4XHB_SRC_DIR)/QtNetwork/QAbstractSocketSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QFtpSlotsMoc.cpp                         : $(QT4XHB_SRC_DIR)/QtNetwork/QFtpSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QLocalServerSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtNetwork/QLocalServerSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QLocalSocketSlotsMoc.cpp                 : $(QT4XHB_SRC_DIR)/QtNetwork/QLocalSocketSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkAccessManagerSlotsMoc.cpp        : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkAccessManagerSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkConfigurationManagerSlotsMoc.cpp : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkConfigurationManagerSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkReplySlotsMoc.cpp                : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkReplySlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QNetworkSessionSlotsMoc.cpp              : $(QT4XHB_SRC_DIR)/QtNetwork/QNetworkSessionSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QSslSocketSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtNetwork/QSslSocketSlots.h
	moc $^ -o $@
$(QT4XHB_OBJ_DIR)/QTcpServerSlotsMoc.cpp                   : $(QT4XHB_SRC_DIR)/QtNetwork/QTcpServerSlots.h
	moc $^ -o $@
