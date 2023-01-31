/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QOBJECTSLOTS_H
#define QOBJECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QObjectSlots: public QObject
{
  Q_OBJECT
  public:
  QObjectSlots(QObject * parent = 0);
  ~QObjectSlots();
  public slots:
  void destroyed( QObject * obj = 0 );
};

#endif /* QOBJECTSLOTS_H */
