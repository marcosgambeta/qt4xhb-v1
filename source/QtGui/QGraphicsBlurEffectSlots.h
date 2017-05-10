/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSBLUREFFECT_H
#define SLOTSQGRAPHICSBLUREFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsBlurEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QGraphicsBlurEffect_release_codeblocks ();

class SlotsQGraphicsBlurEffect: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsBlurEffect(QObject *parent = 0);
  ~SlotsQGraphicsBlurEffect();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void blurHintsChanged ( QGraphicsBlurEffect::BlurHints hints );
  void blurRadiusChanged ( qreal radius );
};

#endif
