/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTABBAR_H
#define SLOTSQTABBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTabBar>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QTabBar_release_codeblocks ();

class SlotsQTabBar: public QObject
{
  Q_OBJECT

  public:
  SlotsQTabBar(QObject *parent = 0);
  ~SlotsQTabBar();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentChanged ( int index );
  void tabCloseRequested ( int index );
  void tabMoved ( int from, int to );
};

#endif
