%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQTREEVIEW_H
#define SLOTSQTREEVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTreeView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QTreeView_release_codeblocks ();

class SlotsQTreeView: public QObject
{
  Q_OBJECT

  public:
  SlotsQTreeView(QObject *parent = 0);
  ~SlotsQTreeView();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void collapsed ( const QModelIndex & index );
  void expanded ( const QModelIndex & index );
};

#endif
