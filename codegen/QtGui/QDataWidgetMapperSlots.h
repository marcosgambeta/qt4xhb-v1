%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQDATAWIDGETMAPPER_H
#define SLOTSQDATAWIDGETMAPPER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDataWidgetMapper>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDataWidgetMapper_release_codeblocks ();

class SlotsQDataWidgetMapper: public QObject
{
  Q_OBJECT

  public:
  SlotsQDataWidgetMapper(QObject *parent = 0);
  ~SlotsQDataWidgetMapper();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentIndexChanged ( int index );
};

#endif