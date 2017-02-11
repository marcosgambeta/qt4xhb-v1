/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQABSTRACTITEMVIEW_H
#define SLOTSQABSTRACTITEMVIEW_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractItemView>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAbstractItemView_release_codeblocks ();
class SlotsQAbstractItemView: public QObject
{
  Q_OBJECT
  public:
  SlotsQAbstractItemView(QObject *parent = 0);
  ~SlotsQAbstractItemView();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void activated ( const QModelIndex & index );
  void clicked ( const QModelIndex & index );
  void doubleClicked ( const QModelIndex & index );
  void entered ( const QModelIndex & index );
  void pressed ( const QModelIndex & index );
  void viewportEntered ();
};
#endif
