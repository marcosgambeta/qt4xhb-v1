//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QABSTRACTTRANSITIONSLOTS_H
#define QABSTRACTTRANSITIONSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtCore/QAbstractTransition>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QAbstractTransitionSlots : public QObject
{
  Q_OBJECT
public:
  QAbstractTransitionSlots(QObject *parent = 0);
  ~QAbstractTransitionSlots();
public slots:
  void triggered();
};

#endif /* QABSTRACTTRANSITIONSLOTS_H */
