/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQDRAG_H
#define SLOTSQDRAG_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QDrag>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QDrag_release_codeblocks ();

class SlotsQDrag: public QObject
{
  Q_OBJECT

  public:
  SlotsQDrag(QObject *parent = 0);
  ~SlotsQDrag();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void actionChanged ( Qt::DropAction action );
  void targetChanged ( QWidget * newTarget );
};

#endif
