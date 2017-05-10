/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTOOLBOX_H
#define SLOTSQTOOLBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QToolBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QToolBox_release_codeblocks ();

class SlotsQToolBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQToolBox(QObject *parent = 0);
  ~SlotsQToolBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentChanged ( int index );
};

#endif
