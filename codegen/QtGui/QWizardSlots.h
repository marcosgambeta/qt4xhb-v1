%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQWIZARD_H
#define SLOTSQWIZARD_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWizard>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QWizard_release_codeblocks ();

class SlotsQWizard: public QObject
{
  Q_OBJECT

  public:
  SlotsQWizard(QObject *parent = 0);
  ~SlotsQWizard();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentIdChanged ( int id );
  void customButtonClicked ( int which );
  void helpRequested ();
  void pageAdded ( int id );
  void pageRemoved ( int id );
};

#endif
