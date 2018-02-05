%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQDECLARATIVEVIEW_H
#define SLOTSQDECLARATIVEVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDeclarativeView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDeclarativeView_release_codeblocks ();

class SlotsQDeclarativeView: public QObject
{
  Q_OBJECT

  public:
  SlotsQDeclarativeView(QObject *parent = 0);
  ~SlotsQDeclarativeView();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void sceneResized ( QSize size );
  void statusChanged ( QDeclarativeView::Status status );
};

#endif
