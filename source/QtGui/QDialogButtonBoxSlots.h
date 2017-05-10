/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDIALOGBUTTONBOX_H
#define SLOTSQDIALOGBUTTONBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDialogButtonBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDialogButtonBox_release_codeblocks ();

class SlotsQDialogButtonBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQDialogButtonBox(QObject *parent = 0);
  ~SlotsQDialogButtonBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void accepted ();
  void clicked ( QAbstractButton * button );
  void helpRequested ();
  void rejected ();
};

#endif
