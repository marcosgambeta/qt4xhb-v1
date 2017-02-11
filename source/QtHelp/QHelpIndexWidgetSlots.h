/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQHELPINDEXWIDGET_H
#define SLOTSQHELPINDEXWIDGET_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpIndexWidget>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QHelpIndexWidget_release_codeblocks ();
class SlotsQHelpIndexWidget: public QObject
{
  Q_OBJECT
  public:
  SlotsQHelpIndexWidget(QObject *parent = 0);
  ~SlotsQHelpIndexWidget();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void linkActivated ( const QUrl & link, const QString & keyword );
};
#endif
