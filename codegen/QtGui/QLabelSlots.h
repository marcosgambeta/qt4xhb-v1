%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQLABEL_H
#define SLOTSQLABEL_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QLabel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QLabel_release_codeblocks ();

class SlotsQLabel: public QObject
{
  Q_OBJECT

  public:
  SlotsQLabel(QObject *parent = 0);
  ~SlotsQLabel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void linkActivated ( const QString & link );
  void linkHovered ( const QString & link );
};

#endif
