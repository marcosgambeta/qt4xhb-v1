/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQFILESYSTEMWATCHER_H
#define SLOTSQFILESYSTEMWATCHER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFileSystemWatcher>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

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
