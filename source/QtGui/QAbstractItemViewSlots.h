/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQABSTRACTITEMVIEW_H
#define SLOTSQABSTRACTITEMVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAbstractItemView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

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
