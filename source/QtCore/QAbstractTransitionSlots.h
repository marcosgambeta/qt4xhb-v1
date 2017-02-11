/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTTRANSITION_H
#define SLOTSQABSTRACTTRANSITION_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractTransition>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAbstractTransition_release_codeblocks ();
class SlotsQAbstractTransition: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractTransition(QObject *parent = 0);
  ~SlotsQAbstractTransition();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void triggered ();
};
#endif
