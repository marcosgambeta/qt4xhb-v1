%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQDRAG_H
#define SLOTSQDRAG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDrag>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDrag_release_codeblocks ();

class SlotsQDrag: public QObject
{
  Q_OBJECT

  public:
  SlotsQDrag(QObject *parent = 0);
  ~SlotsQDrag();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void actionChanged ( Qt::DropAction action );
  void targetChanged ( QWidget * newTarget );
};

#endif
