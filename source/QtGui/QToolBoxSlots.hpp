//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QTOOLBOXSLOTS_H
#define QTOOLBOXSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QToolBox>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QToolBoxSlots : public QObject
{
  Q_OBJECT
public:
  QToolBoxSlots(QObject *parent = 0);
  ~QToolBoxSlots();
public slots:
  void currentChanged(int index);
};

#endif // QTOOLBOXSLOTS_H
