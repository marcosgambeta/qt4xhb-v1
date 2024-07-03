//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QSTATESLOTS_H
#define QSTATESLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QState>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QStateSlots : public QObject
{
  Q_OBJECT
public:
  QStateSlots(QObject *parent = 0);
  ~QStateSlots();
public slots:
  void finished();
  void propertiesAssigned();
};

#endif /* QSTATESLOTS_H */
