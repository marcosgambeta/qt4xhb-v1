/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSDROPSHADOWEFFECT_H
#define SLOTSQGRAPHICSDROPSHADOWEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsDropShadowEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QGraphicsDropShadowEffect_release_codeblocks ();

class SlotsQGraphicsDropShadowEffect: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsDropShadowEffect(QObject *parent = 0);
  ~SlotsQGraphicsDropShadowEffect();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void blurRadiusChanged ( qreal blurRadius );
  void colorChanged ( const QColor & color );
  void offsetChanged ( const QPointF & offset );
};

#endif
