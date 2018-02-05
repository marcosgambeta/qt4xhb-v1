%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

#ifndef SLOTSQFILESYSTEMWATCHER_H
#define SLOTSQFILESYSTEMWATCHER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFileSystemWatcher>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QFileSystemWatcher_release_codeblocks ();

class SlotsQFileSystemWatcher: public QObject
{
  Q_OBJECT

  public:
  SlotsQFileSystemWatcher(QObject *parent = 0);
  ~SlotsQFileSystemWatcher();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void directoryChanged(const QString & path);
  void fileChanged(const QString & path);
};

#endif
