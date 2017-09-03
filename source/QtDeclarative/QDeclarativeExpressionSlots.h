/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQDECLARATIVEEXPRESSION_H
#define SLOTSQDECLARATIVEEXPRESSION_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDeclarativeExpression>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDeclarativeExpression_release_codeblocks ();

class SlotsQDeclarativeExpression: public QObject
{
  Q_OBJECT

  public:
  SlotsQDeclarativeExpression(QObject *parent = 0);
  ~SlotsQDeclarativeExpression();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void valueChanged ();
};

#endif
