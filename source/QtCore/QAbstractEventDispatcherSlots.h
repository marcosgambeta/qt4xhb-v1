/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QABSTRACTEVENTDISPATCHERSLOTS_H
#define QABSTRACTEVENTDISPATCHERSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QAbstractEventDispatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QAbstractEventDispatcherSlots: public QObject
{
  Q_OBJECT
  public:
  QAbstractEventDispatcherSlots( QObject *parent = 0 );
  ~QAbstractEventDispatcherSlots();
  public slots:
  void aboutToBlock();
  void awake();
};

#endif /* QABSTRACTEVENTDISPATCHERSLOTS_H */
