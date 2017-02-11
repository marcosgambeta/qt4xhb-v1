/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQACTION_H
#define SLOTSQACTION_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAction>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QAction_release_codeblocks ();
class SlotsQAction: public QObject
{
  Q_OBJECT
  public:
  SlotsQAction(QObject *parent = 0);
  ~SlotsQAction();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void changed ();
  void hovered ();
  void toggled ( bool checked );
  void triggered ( bool checked = false );
};
#endif
