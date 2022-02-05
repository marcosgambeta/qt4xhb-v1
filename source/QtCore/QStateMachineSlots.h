/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2022 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QSTATEMACHINESLOTS_H
#define QSTATEMACHINESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QStateMachine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QStateMachineSlots: public QObject
{
  Q_OBJECT
  public:
  QStateMachineSlots( QObject * parent = 0 );
  ~QStateMachineSlots();
  public slots:
  void started();
  void stopped();
};

#endif /* QSTATEMACHINESLOTS_H */
