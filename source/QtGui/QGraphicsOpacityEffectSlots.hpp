/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSOPACITYEFFECTSLOTS_H
#define QGRAPHICSOPACITYEFFECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QGraphicsOpacityEffect>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_signals.hpp"

class QGraphicsOpacityEffectSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsOpacityEffectSlots(QObject * parent = 0);
  ~QGraphicsOpacityEffectSlots();
  public slots:
  void opacityChanged( qreal opacity );
  void opacityMaskChanged( const QBrush & mask );
};

#endif /* QGRAPHICSOPACITYEFFECTSLOTS_H */
