/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQGRAPHICSOPACITYEFFECT_H
#define SLOTSQGRAPHICSOPACITYEFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsOpacityEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QGraphicsOpacityEffect_release_codeblocks ();

class SlotsQGraphicsOpacityEffect: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsOpacityEffect(QObject *parent = 0);
  ~SlotsQGraphicsOpacityEffect();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void opacityChanged ( qreal opacity );
  void opacityMaskChanged ( const QBrush & mask );
};

#endif
