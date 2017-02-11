/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSTACKEDWIDGET_H
#define SLOTSQSTACKEDWIDGET_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QStackedWidget>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QStackedWidget_release_codeblocks ();
class SlotsQStackedWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQStackedWidget(QObject *parent = 0);
  ~SlotsQStackedWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void currentChanged ( int index );
  void widgetRemoved ( int index );
};
#endif
