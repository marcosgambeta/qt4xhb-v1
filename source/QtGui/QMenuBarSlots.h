/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMENUBAR_H
#define SLOTSQMENUBAR_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMenuBar>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QMenuBar_release_codeblocks ();

class SlotsQMenuBar: public QObject
{
  Q_OBJECT

  public:
  SlotsQMenuBar(QObject *parent = 0);
  ~SlotsQMenuBar();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};

#endif
