/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQAPPLICATION_H
#define SLOTSQAPPLICATION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QApplication>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QApplication_release_codeblocks ();

class SlotsQApplication: public QObject
{
  Q_OBJECT

  public:
  SlotsQApplication(QObject *parent = 0);
  ~SlotsQApplication();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void aboutToReleaseGpuResources ();
  void aboutToUseGpuResources ();
  void commitDataRequest ( QSessionManager & manager );
  void focusChanged ( QWidget * old, QWidget * now );
  void fontDatabaseChanged ();
  void lastWindowClosed ();
  void saveStateRequest ( QSessionManager & manager );
};

#endif
