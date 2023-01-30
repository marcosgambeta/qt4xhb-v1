/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSCOLORIZEEFFECTSLOTS_H
#define QGRAPHICSCOLORIZEEFFECTSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtGui/QGraphicsColorizeEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QGraphicsColorizeEffectSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsColorizeEffectSlots( QObject * parent = 0 );
  ~QGraphicsColorizeEffectSlots();
  public slots:
  void colorChanged( const QColor & color );
  void strengthChanged( qreal strength );
};

#endif /* QGRAPHICSCOLORIZEEFFECTSLOTS_H */
