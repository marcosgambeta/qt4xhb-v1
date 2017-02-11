/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSTYLE_H
#define SLOTSQSTYLE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QStyle>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QStyle_release_codeblocks ();
class SlotsQStyle: public QObject
{
  Q_OBJECT
  public:
  SlotsQStyle(QObject *parent = 0);
  ~SlotsQStyle();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void currentChanged ( int index );
  void tabCloseRequested ( int index );
  void tabMoved ( int from, int to );
};
#endif
