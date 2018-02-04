/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQFILESYSTEMMODEL_H
#define SLOTSQFILESYSTEMMODEL_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QFileSystemModel>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QFileSystemModel_release_codeblocks ();

class SlotsQFileSystemModel: public QObject
{
  Q_OBJECT

  public:
  SlotsQFileSystemModel(QObject *parent = 0);
  ~SlotsQFileSystemModel();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void directoryLoaded ( const QString & path );
  void fileRenamed ( const QString & path, const QString & oldName, const QString & newName );
  void rootPathChanged ( const QString & newPath );
};

#endif
