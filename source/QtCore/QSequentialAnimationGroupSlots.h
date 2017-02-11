/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSEQUENTIALANIMATIONGROUP_H
#define SLOTSQSEQUENTIALANIMATIONGROUP_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSequentialAnimationGroup>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QSequentialAnimationGroup_release_codeblocks ();
class SlotsQSequentialAnimationGroup: public QObject
{
  Q_OBJECT
  public:
  SlotsQSequentialAnimationGroup(QObject *parent = 0);
  ~SlotsQSequentialAnimationGroup();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void currentAnimationChanged ( QAbstractAnimation * current );
};
#endif
