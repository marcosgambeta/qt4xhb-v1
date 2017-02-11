/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQHELPCONTENTWIDGET_H
#define SLOTSQHELPCONTENTWIDGET_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpContentWidget>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QHelpContentWidget_release_codeblocks ();
class SlotsQHelpContentWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpContentWidget(QObject *parent = 0);
  ~SlotsQHelpContentWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void linkActivated ( const QUrl & link );
};
#endif
