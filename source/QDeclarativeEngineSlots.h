/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDECLARATIVEENGINE_H
#define SLOTSQDECLARATIVEENGINE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDeclarativeEngine>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QDeclarativeEngine_release_codeblocks ();
class SlotsQDeclarativeEngine: public QObject
{
  Q_OBJECT
  public:
  SlotsQDeclarativeEngine(QObject *parent = 0);
  ~SlotsQDeclarativeEngine();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void quit ();
  void warnings ( const QList<QDeclarativeError> & warnings );
};
#endif
