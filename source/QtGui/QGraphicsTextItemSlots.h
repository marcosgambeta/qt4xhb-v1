/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSTEXTITEM_H
#define SLOTSQGRAPHICSTEXTITEM_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsTextItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QGraphicsTextItem_release_codeblocks ();

class SlotsQGraphicsTextItem: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsTextItem(QObject *parent = 0);
  ~SlotsQGraphicsTextItem();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void linkActivated ( const QString & link );
  void linkHovered ( const QString & link );
};

#endif
