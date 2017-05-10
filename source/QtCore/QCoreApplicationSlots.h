/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCOREAPPLICATION_H
#define SLOTSQCOREAPPLICATION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QCoreApplication>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QCoreApplication_release_codeblocks ();

class SlotsQCoreApplication: public QObject
{
  Q_OBJECT

  public:
  SlotsQCoreApplication(QObject *parent = 0);
  ~SlotsQCoreApplication();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void aboutToQuit ();
};

#endif
