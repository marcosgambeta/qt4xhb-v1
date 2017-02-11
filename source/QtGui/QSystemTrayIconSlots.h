/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSYSTEMTRAYICON_H
#define SLOTSQSYSTEMTRAYICON_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSystemTrayIcon>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QSystemTrayIcon_release_codeblocks ();
class SlotsQSystemTrayIcon: public QObject
{
  Q_OBJECT
  public:
  SlotsQSystemTrayIcon(QObject *parent = 0);
  ~SlotsQSystemTrayIcon();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void activated ( QSystemTrayIcon::ActivationReason reason );
  void messageClicked ();
};
#endif
