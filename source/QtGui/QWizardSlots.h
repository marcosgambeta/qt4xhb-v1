/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWIZARD_H
#define SLOTSQWIZARD_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWizard>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QWizard_release_codeblocks ();
class SlotsQWizard: public QObject
{
  Q_OBJECT
  public:
  SlotsQWizard(QObject *parent = 0);
  ~SlotsQWizard();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void currentIdChanged ( int id );
  void customButtonClicked ( int which );
  void helpRequested ();
  void pageAdded ( int id );
  void pageRemoved ( int id );
};
#endif
