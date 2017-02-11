/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGROUPBOX_H
#define SLOTSQGROUPBOX_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGroupBox>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QGroupBox_release_codeblocks ();
class SlotsQGroupBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQGroupBox(QObject *parent = 0);
  ~SlotsQGroupBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void clicked ( bool checked = false );
  void toggled ( bool on );
};
#endif
