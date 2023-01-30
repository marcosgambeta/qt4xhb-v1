/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSOBJECTSLOTS_H
#define QGRAPHICSOBJECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QGraphicsObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QGraphicsObjectSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsObjectSlots( QObject * parent = 0 );
  ~QGraphicsObjectSlots();
  public slots:
  void enabledChanged();
  void opacityChanged();
  void parentChanged();
  void rotationChanged();
  void scaleChanged();
  void visibleChanged();
  void xChanged();
  void yChanged();
  void zChanged();
};

#endif /* QGRAPHICSOBJECTSLOTS_H */
