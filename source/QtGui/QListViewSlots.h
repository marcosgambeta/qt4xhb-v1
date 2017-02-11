/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQLISTVIEW_H
#define SLOTSQLISTVIEW_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QListView>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QListView_release_codeblocks ();
class SlotsQListView: public QObject
{
  Q_OBJECT
  public:
  SlotsQListView(QObject *parent = 0);
  ~SlotsQListView();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void indexesMoved ( const QModelIndexList & indexes );
};
#endif
