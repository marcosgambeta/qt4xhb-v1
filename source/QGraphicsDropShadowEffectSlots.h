/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSDROPSHADOWEFFECT_H
#define SLOTSQGRAPHICSDROPSHADOWEFFECT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsDropShadowEffect>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

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
