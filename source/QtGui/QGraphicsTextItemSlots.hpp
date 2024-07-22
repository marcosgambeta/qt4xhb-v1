//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

#ifndef QGRAPHICSTEXTITEMSLOTS_H
#define QGRAPHICSTEXTITEMSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QGraphicsTextItem>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QGraphicsTextItemSlots : public QObject
{
  Q_OBJECT
public:
  QGraphicsTextItemSlots(QObject *parent = 0);
  ~QGraphicsTextItemSlots();
public slots:
  void linkActivated(const QString &link);
  void linkHovered(const QString &link);
};

#endif // QGRAPHICSTEXTITEMSLOTS_H
