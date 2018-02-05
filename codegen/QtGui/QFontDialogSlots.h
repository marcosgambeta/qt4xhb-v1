%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQFONTDIALOG_H
#define SLOTSQFONTDIALOG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFontDialog>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QFontDialog_release_codeblocks ();

class SlotsQFontDialog: public QObject
{
  Q_OBJECT

  public:
  SlotsQFontDialog(QObject *parent = 0);
  ~SlotsQFontDialog();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentFontChanged ( const QFont & font );
  void fontSelected ( const QFont & font );
};

#endif
