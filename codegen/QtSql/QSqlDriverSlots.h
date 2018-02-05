%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQSQLDRIVER_H
#define SLOTSQSQLDRIVER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSqlDriver>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QSqlDriver_release_codeblocks ();

class SlotsQSqlDriver: public QObject
{
  Q_OBJECT

  public:
  SlotsQSqlDriver(QObject *parent = 0);
  ~SlotsQSqlDriver();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void notification ( const QString & name );
};

#endif
