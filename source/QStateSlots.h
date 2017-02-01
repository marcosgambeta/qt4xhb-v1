/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSTATE_H
#define SLOTSQSTATE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QState>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QState_release_codeblocks ();
class SlotsQState: public QObject
{
  Q_OBJECT
  public:
  SlotsQState(QObject *parent = 0);
  ~SlotsQState();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void finished ();
  void propertiesAssigned ();
};
#endif
