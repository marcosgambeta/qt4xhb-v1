/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCOLUMNVIEW_H
#define SLOTSQCOLUMNVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QColumnView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QColumnView_release_codeblocks ();

class SlotsQColumnView: public QObject
{
  Q_OBJECT

  public:
  SlotsQColumnView(QObject *parent = 0);
  ~SlotsQColumnView();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void updatePreviewWidget ( const QModelIndex & index );
};

#endif
