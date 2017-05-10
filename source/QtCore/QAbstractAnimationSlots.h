/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTANIMATION_H
#define SLOTSQABSTRACTANIMATION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractAnimation>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QAbstractAnimation_release_codeblocks ();

class SlotsQAbstractAnimation: public QObject
{
  Q_OBJECT

  public:
  SlotsQAbstractAnimation(QObject *parent = 0);
  ~SlotsQAbstractAnimation();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentLoopChanged ( int currentLoop );
  void directionChanged ( QAbstractAnimation::Direction newDirection );
  void finished ();
  void stateChanged ( QAbstractAnimation::State newState, QAbstractAnimation::State oldState );
};

#endif
