/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQAXOBJECT_H
#define SLOTSQAXOBJECT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAxObject>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAxObject_release_codeblocks ();
class SlotsQAxObject: public QObject
{
  Q_OBJECT
  public:
  SlotsQAxObject(QObject *parent = 0);
  ~SlotsQAxObject();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void exception ( int code, const QString & source, const QString & desc, const QString & help );
  void propertyChanged ( const QString & name );
  void signal ( const QString & name, int argc, void * argv );
};
#endif
