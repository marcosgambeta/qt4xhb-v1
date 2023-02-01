/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QT4XHB_MACROS_QTTEST_H
#define QT4XHB_MACROS_QTTEST_H

#define ISQTESTEVENTLIST(n)                                 Qt4xHb::isObjectDerivedFrom(n, "QTestEventList")

#define PQTESTEVENTLIST(n)                                  static_cast<QTestEventList*>(Qt4xHb::itemGetPtr(n))

#define OPQTESTEVENTLIST(n, v)                              HB_ISNIL(n) ? v : static_cast<QTestEventList*>(Qt4xHb::itemGetPtr(n))

#endif /* QT4XHB_MACROS_QTTEST_H */
