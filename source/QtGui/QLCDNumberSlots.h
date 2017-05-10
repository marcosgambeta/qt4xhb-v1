/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQLCDNUMBER_H
#define SLOTSQLCDNUMBER_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QLCDNumber>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QLCDNumber_release_codeblocks ();

class SlotsQLCDNumber: public QObject
{
  Q_OBJECT

  public:
  SlotsQLCDNumber(QObject *parent = 0);
  ~SlotsQLCDNumber();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void overflow ();
};

#endif
