/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWIZARDPAGE_H
#define SLOTSQWIZARDPAGE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWizardPage>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QWizardPage_release_codeblocks ();
class SlotsQWizardPage: public QObject
{
  Q_OBJECT
  public:
  SlotsQWizardPage(QObject *parent = 0);
  ~SlotsQWizardPage();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void completeChanged ();
};
#endif
