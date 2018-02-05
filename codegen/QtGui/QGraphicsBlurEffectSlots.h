%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQGRAPHICSBLUREFFECT_H
#define SLOTSQGRAPHICSBLUREFFECT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsBlurEffect>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

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
