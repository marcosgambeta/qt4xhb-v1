/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMENU_H
#define SLOTSQMENU_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMenu>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

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
