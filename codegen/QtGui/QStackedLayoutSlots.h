%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQSTACKEDLAYOUT_H
#define SLOTSQSTACKEDLAYOUT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QStackedLayout>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QStackedLayout_release_codeblocks ();

class SlotsQStackedLayout: public QObject
{
  Q_OBJECT

  public:
  SlotsQStackedLayout(QObject *parent = 0);
  ~SlotsQStackedLayout();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void setCurrentIndex ( int index );
  void setCurrentWidget ( QWidget * widget );
};

#endif
