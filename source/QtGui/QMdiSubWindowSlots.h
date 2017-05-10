/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMDISUBWINDOW_H
#define SLOTSQMDISUBWINDOW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMdiSubWindow>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QMdiSubWindow_release_codeblocks ();

class SlotsQMdiSubWindow: public QObject
{
  Q_OBJECT

  public:
  SlotsQMdiSubWindow(QObject *parent = 0);
  ~SlotsQMdiSubWindow();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void aboutToActivate ();
  void windowStateChanged ( Qt::WindowStates oldState, Qt::WindowStates newState );
};

#endif
