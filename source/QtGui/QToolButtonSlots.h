/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTOOLBUTTON_H
#define SLOTSQTOOLBUTTON_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QToolButton>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QToolButton_release_codeblocks ();

class SlotsQToolButton: public QObject
{
  Q_OBJECT

  public:
  SlotsQToolButton(QObject *parent = 0);
  ~SlotsQToolButton();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void triggered ( QAction * action );
};

#endif
