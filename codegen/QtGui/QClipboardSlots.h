%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQCLIPBOARD_H
#define SLOTSQCLIPBOARD_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QClipboard>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QClipboard_release_codeblocks ();

class SlotsQClipboard: public QObject
{
  Q_OBJECT

  public:
  SlotsQClipboard(QObject *parent = 0);
  ~SlotsQClipboard();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void changed ( QClipboard::Mode mode );
  void dataChanged ();
  void findBufferChanged ();
  void selectionChanged ();
};

#endif
