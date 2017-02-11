/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTSTATE_H
#define SLOTSQABSTRACTSTATE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractState>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAbstractState_release_codeblocks ();
class SlotsQAbstractState: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractState(QObject *parent = 0);
  ~SlotsQAbstractState();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void entered ();
  void exited ();
};
#endif
