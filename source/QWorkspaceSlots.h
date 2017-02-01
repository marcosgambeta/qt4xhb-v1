/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWORKSPACE_H
#define SLOTSQWORKSPACE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWorkspace>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QWorkspace_release_codeblocks ();
class SlotsQWorkspace: public QObject
{
  Q_OBJECT
  public:
  SlotsQWorkspace(QObject *parent = 0);
  ~SlotsQWorkspace();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void windowActivated ( QWidget * w );
};
#endif
