/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQOBJECT_H
#define SLOTSQOBJECT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QObject>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QObject_release_codeblocks ();
class SlotsQObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQObject(QObject *parent = 0);
  ~SlotsQObject();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void destroyed ( QObject * obj = 0);
};
#endif
