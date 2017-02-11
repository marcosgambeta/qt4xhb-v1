/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMDIAREA_H
#define SLOTSQMDIAREA_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMdiArea>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QMdiArea_release_codeblocks ();
class SlotsQMdiArea: public QObject
{
  Q_OBJECT
  public:
  SlotsQMdiArea(QObject *parent = 0);
  ~SlotsQMdiArea();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void subWindowActivated ( QMdiSubWindow * window );
};
#endif
