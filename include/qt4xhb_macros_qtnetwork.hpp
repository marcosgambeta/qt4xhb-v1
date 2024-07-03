/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QT4XHB_MACROS_QTNETWORK_H
#define QT4XHB_MACROS_QTNETWORK_H

#define ISQABSTRACTNETWORKCACHE(n)                          Qt4xHb::isObjectDerivedFrom(n, "QAbstractNetworkCache")
#define ISQABSTRACTSOCKET(n)                                Qt4xHb::isObjectDerivedFrom(n, "QAbstractSocket")
#define ISQAUTHENTICATOR(n)                                 Qt4xHb::isObjectDerivedFrom(n, "QAuthenticator")
#define ISQFTP(n)                                           Qt4xHb::isObjectDerivedFrom(n, "QFtp")
#define ISQHOSTADDRESS(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QHostAddress")
#define ISQHOSTINFO(n)                                      Qt4xHb::isObjectDerivedFrom(n, "QHostInfo")
#define ISQHTTPMULTIPART(n)                                 Qt4xHb::isObjectDerivedFrom(n, "QHttpMultiPart")
#define ISQHTTPPART(n)                                      Qt4xHb::isObjectDerivedFrom(n, "QHttpPart")
#define ISQLOCALSERVER(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QLocalServer")
#define ISQLOCALSOCKET(n)                                   Qt4xHb::isObjectDerivedFrom(n, "QLocalSocket")
#define ISQNETWORKACCESSMANAGER(n)                          Qt4xHb::isObjectDerivedFrom(n, "QNetworkAccessManager")
#define ISQNETWORKADDRESSENTRY(n)                           Qt4xHb::isObjectDerivedFrom(n, "QNetworkAddressEntry")
#define ISQNETWORKCACHEMETADATA(n)                          Qt4xHb::isObjectDerivedFrom(n, "QNetworkCacheMetaData")
#define ISQNETWORKCONFIGURATION(n)                          Qt4xHb::isObjectDerivedFrom(n, "QNetworkConfiguration")
#define ISQNETWORKCONFIGURATIONMANAGER(n)                   Qt4xHb::isObjectDerivedFrom(n, "QNetworkConfigurationManager")
#define ISQNETWORKCOOKIE(n)                                 Qt4xHb::isObjectDerivedFrom(n, "QNetworkCookie")
#define ISQNETWORKCOOKIEJAR(n)                              Qt4xHb::isObjectDerivedFrom(n, "QNetworkCookieJar")
#define ISQNETWORKDISKCACHE(n)                              Qt4xHb::isObjectDerivedFrom(n, "QNetworkDiskCache")
#define ISQNETWORKINTERFACE(n)                              Qt4xHb::isObjectDerivedFrom(n, "QNetworkInterface")
#define ISQNETWORKPROXY(n)                                  Qt4xHb::isObjectDerivedFrom(n, "QNetworkProxy")
#define ISQNETWORKPROXYFACTORY(n)                           Qt4xHb::isObjectDerivedFrom(n, "QNetworkProxyFactory")
#define ISQNETWORKPROXYQUERY(n)                             Qt4xHb::isObjectDerivedFrom(n, "QNetworkProxyQuery")
#define ISQNETWORKREPLY(n)                                  Qt4xHb::isObjectDerivedFrom(n, "QNetworkReply")
#define ISQNETWORKREQUEST(n)                                Qt4xHb::isObjectDerivedFrom(n, "QNetworkRequest")
#define ISQNETWORKSESSION(n)                                Qt4xHb::isObjectDerivedFrom(n, "QNetworkSession")
#define ISQSSLCERTIFICATE(n)                                Qt4xHb::isObjectDerivedFrom(n, "QSslCertificate")
#define ISQSSLCIPHER(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QSslCipher")
#define ISQSSLCONFIGURATION(n)                              Qt4xHb::isObjectDerivedFrom(n, "QSslConfiguration")
#define ISQSSLERROR(n)                                      Qt4xHb::isObjectDerivedFrom(n, "QSslError")
#define ISQSSLKEY(n)                                        Qt4xHb::isObjectDerivedFrom(n, "QSslKey")
#define ISQSSLSOCKET(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QSslSocket")
#define ISQTCPSERVER(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QTcpServer")
#define ISQTCPSOCKET(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QTcpSocket")
#define ISQUDPSOCKET(n)                                     Qt4xHb::isObjectDerivedFrom(n, "QUdpSocket")
#define ISQURLINFO(n)                                       Qt4xHb::isObjectDerivedFrom(n, "QUrlInfo")

#define PQABSTRACTNETWORKCACHE(n)                           static_cast<QAbstractNetworkCache*>(Qt4xHb::itemGetPtr(n))
#define PQABSTRACTSOCKET(n)                                 static_cast<QAbstractSocket*>(Qt4xHb::itemGetPtr(n))
#define PQAUTHENTICATOR(n)                                  static_cast<QAuthenticator*>(Qt4xHb::itemGetPtr(n))
#define PQFTP(n)                                            static_cast<QFtp*>(Qt4xHb::itemGetPtr(n))
#define PQHOSTADDRESS(n)                                    static_cast<QHostAddress*>(Qt4xHb::itemGetPtr(n))
#define PQHOSTINFO(n)                                       static_cast<QHostInfo*>(Qt4xHb::itemGetPtr(n))
#define PQHTTPMULTIPART(n)                                  static_cast<QHttpMultiPart*>(Qt4xHb::itemGetPtr(n))
#define PQHTTPPART(n)                                       static_cast<QHttpPart*>(Qt4xHb::itemGetPtr(n))
#define PQLOCALSERVER(n)                                    static_cast<QLocalServer*>(Qt4xHb::itemGetPtr(n))
#define PQLOCALSOCKET(n)                                    static_cast<QLocalSocket*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKACCESSMANAGER(n)                           static_cast<QNetworkAccessManager*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKADDRESSENTRY(n)                            static_cast<QNetworkAddressEntry*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKCACHEMETADATA(n)                           static_cast<QNetworkCacheMetaData*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKCONFIGURATION(n)                           static_cast<QNetworkConfiguration*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKCONFIGURATIONMANAGER(n)                    static_cast<QNetworkConfigurationManager*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKCOOKIE(n)                                  static_cast<QNetworkCookie*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKCOOKIEJAR(n)                               static_cast<QNetworkCookieJar*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKDISKCACHE(n)                               static_cast<QNetworkDiskCache*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKINTERFACE(n)                               static_cast<QNetworkInterface*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKPROXY(n)                                   static_cast<QNetworkProxy*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKPROXYFACTORY(n)                            static_cast<QNetworkProxyFactory*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKPROXYQUERY(n)                              static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKREPLY(n)                                   static_cast<QNetworkReply*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKREQUEST(n)                                 static_cast<QNetworkRequest*>(Qt4xHb::itemGetPtr(n))
#define PQNETWORKSESSION(n)                                 static_cast<QNetworkSession*>(Qt4xHb::itemGetPtr(n))
#define PQSSLCERTIFICATE(n)                                 static_cast<QSslCertificate*>(Qt4xHb::itemGetPtr(n))
#define PQSSLCIPHER(n)                                      static_cast<QSslCipher*>(Qt4xHb::itemGetPtr(n))
#define PQSSLCONFIGURATION(n)                               static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtr(n))
#define PQSSLERROR(n)                                       static_cast<QSslError*>(Qt4xHb::itemGetPtr(n))
#define PQSSLKEY(n)                                         static_cast<QSslKey*>(Qt4xHb::itemGetPtr(n))
#define PQSSLSOCKET(n)                                      static_cast<QSslSocket*>(Qt4xHb::itemGetPtr(n))
#define PQTCPSERVER(n)                                      static_cast<QTcpServer*>(Qt4xHb::itemGetPtr(n))
#define PQTCPSOCKET(n)                                      static_cast<QTcpSocket*>(Qt4xHb::itemGetPtr(n))
#define PQUDPSOCKET(n)                                      static_cast<QUdpSocket*>(Qt4xHb::itemGetPtr(n))
#define PQURLINFO(n)                                        static_cast<QUrlInfo*>(Qt4xHb::itemGetPtr(n))

#define OPQABSTRACTNETWORKCACHE(n, v)                       HB_ISNIL(n) ? v : static_cast<QAbstractNetworkCache*>(Qt4xHb::itemGetPtr(n))
#define OPQABSTRACTSOCKET(n, v)                             HB_ISNIL(n) ? v : static_cast<QAbstractSocket*>(Qt4xHb::itemGetPtr(n))
#define OPQAUTHENTICATOR(n, v)                              HB_ISNIL(n) ? v : static_cast<QAuthenticator*>(Qt4xHb::itemGetPtr(n))
#define OPQFTP(n, v)                                        HB_ISNIL(n) ? v : static_cast<QFtp*>(Qt4xHb::itemGetPtr(n))
#define OPQHOSTADDRESS(n, v)                                HB_ISNIL(n) ? v : static_cast<QHostAddress*>(Qt4xHb::itemGetPtr(n))
#define OPQHOSTINFO(n, v)                                   HB_ISNIL(n) ? v : static_cast<QHostInfo*>(Qt4xHb::itemGetPtr(n))
#define OPQHTTPMULTIPART(n, v)                              HB_ISNIL(n) ? v : static_cast<QHttpMultiPart*>(Qt4xHb::itemGetPtr(n))
#define OPQHTTPPART(n, v)                                   HB_ISNIL(n) ? v : static_cast<QHttpPart*>(Qt4xHb::itemGetPtr(n))
#define OPQLOCALSERVER(n, v)                                HB_ISNIL(n) ? v : static_cast<QLocalServer*>(Qt4xHb::itemGetPtr(n))
#define OPQLOCALSOCKET(n, v)                                HB_ISNIL(n) ? v : static_cast<QLocalSocket*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKACCESSMANAGER(n, v)                       HB_ISNIL(n) ? v : static_cast<QNetworkAccessManager*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKADDRESSENTRY(n, v)                        HB_ISNIL(n) ? v : static_cast<QNetworkAddressEntry*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKCACHEMETADATA(n, v)                       HB_ISNIL(n) ? v : static_cast<QNetworkCacheMetaData*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKCONFIGURATION(n, v)                       HB_ISNIL(n) ? v : static_cast<QNetworkConfiguration*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKCONFIGURATIONMANAGER(n, v)                HB_ISNIL(n) ? v : static_cast<QNetworkConfigurationManager*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKCOOKIE(n, v)                              HB_ISNIL(n) ? v : static_cast<QNetworkCookie*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKCOOKIEJAR(n, v)                           HB_ISNIL(n) ? v : static_cast<QNetworkCookieJar*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKDISKCACHE(n, v)                           HB_ISNIL(n) ? v : static_cast<QNetworkDiskCache*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKINTERFACE(n, v)                           HB_ISNIL(n) ? v : static_cast<QNetworkInterface*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKPROXY(n, v)                               HB_ISNIL(n) ? v : static_cast<QNetworkProxy*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKPROXYFACTORY(n, v)                        HB_ISNIL(n) ? v : static_cast<QNetworkProxyFactory*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKPROXYQUERY(n, v)                          HB_ISNIL(n) ? v : static_cast<QNetworkProxyQuery*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKREPLY(n, v)                               HB_ISNIL(n) ? v : static_cast<QNetworkReply*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKREQUEST(n, v)                             HB_ISNIL(n) ? v : static_cast<QNetworkRequest*>(Qt4xHb::itemGetPtr(n))
#define OPQNETWORKSESSION(n, v)                             HB_ISNIL(n) ? v : static_cast<QNetworkSession*>(Qt4xHb::itemGetPtr(n))
#define OPQSSLCERTIFICATE(n, v)                             HB_ISNIL(n) ? v : static_cast<QSslCertificate*>(Qt4xHb::itemGetPtr(n))
#define OPQSSLCIPHER(n, v)                                  HB_ISNIL(n) ? v : static_cast<QSslCipher*>(Qt4xHb::itemGetPtr(n))
#define OPQSSLCONFIGURATION(n, v)                           HB_ISNIL(n) ? v : static_cast<QSslConfiguration*>(Qt4xHb::itemGetPtr(n))
#define OPQSSLERROR(n, v)                                   HB_ISNIL(n) ? v : static_cast<QSslError*>(Qt4xHb::itemGetPtr(n))
#define OPQSSLKEY(n, v)                                     HB_ISNIL(n) ? v : static_cast<QSslKey*>(Qt4xHb::itemGetPtr(n))
#define OPQSSLSOCKET(n, v)                                  HB_ISNIL(n) ? v : static_cast<QSslSocket*>(Qt4xHb::itemGetPtr(n))
#define OPQTCPSERVER(n, v)                                  HB_ISNIL(n) ? v : static_cast<QTcpServer*>(Qt4xHb::itemGetPtr(n))
#define OPQTCPSOCKET(n, v)                                  HB_ISNIL(n) ? v : static_cast<QTcpSocket*>(Qt4xHb::itemGetPtr(n))
#define OPQUDPSOCKET(n, v)                                  HB_ISNIL(n) ? v : static_cast<QUdpSocket*>(Qt4xHb::itemGetPtr(n))
#define OPQURLINFO(n, v)                                    HB_ISNIL(n) ? v : static_cast<QUrlInfo*>(Qt4xHb::itemGetPtr(n))

#endif /* QT4XHB_MACROS_QTNETWORK_H */
