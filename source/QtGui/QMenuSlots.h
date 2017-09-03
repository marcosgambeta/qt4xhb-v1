/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQMENU_H
#define SLOTSQMENU_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMenu>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QMenu_release_codeblocks ();

class SlotsQMenu: public QObject
{
  Q_OBJECT

  public:
  SlotsQMenu(QObject *parent = 0);
  ~SlotsQMenu();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void aboutToHide ();
  void aboutToShow ();
  void hovered ( QAction * action );
  void triggered ( QAction * action );
};

#endif
