/*

  Qt4xHb - bibliotecas de liga��o entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCHECKBOX_H
#define SLOTSQCHECKBOX_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QCheckBox>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QCheckBox_release_codeblocks ();

class SlotsQCheckBox: public QObject
{
  Q_OBJECT

  public:
  SlotsQCheckBox(QObject *parent = 0);
  ~SlotsQCheckBox();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void stateChanged ( int state );
};

#endif
