/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMESSAGEBOX_H
#define SLOTSQMESSAGEBOX_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMessageBox>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QMessageBox_release_codeblocks ();
class SlotsQMessageBox: public QObject
{
  Q_OBJECT
  public:
  SlotsQMessageBox(QObject *parent = 0);
  ~SlotsQMessageBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void buttonClicked ( QAbstractButton * button );
};
#endif
