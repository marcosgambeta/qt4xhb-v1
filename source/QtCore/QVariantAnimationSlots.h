/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQVARIANTANIMATION_H
#define SLOTSQVARIANTANIMATION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QVariantAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QVariantAnimation_release_codeblocks ();

class SlotsQVariantAnimation: public QObject
{
  Q_OBJECT

  public:
  SlotsQVariantAnimation(QObject *parent = 0);
  ~SlotsQVariantAnimation();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void valueChanged ( const QVariant & value );
};

#endif
