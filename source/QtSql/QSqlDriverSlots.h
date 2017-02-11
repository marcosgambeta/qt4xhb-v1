/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSQLDRIVER_H
#define SLOTSQSQLDRIVER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSqlDriver>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QSqlDriver_release_codeblocks ();
class SlotsQSqlDriver: public QObject
{
  Q_OBJECT
  public:
  SlotsQSqlDriver(QObject *parent = 0);
  ~SlotsQSqlDriver();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void notification ( const QString & name );
};
#endif
