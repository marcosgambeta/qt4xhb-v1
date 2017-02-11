/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSSCENE_H
#define SLOTSQGRAPHICSSCENE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsScene>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QGraphicsScene_release_codeblocks ();
class SlotsQGraphicsScene: public QObject
{
  Q_OBJECT
  public:
  SlotsQGraphicsScene(QObject *parent = 0);
  ~SlotsQGraphicsScene();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void changed ( const QList<QRectF> & region );
  void sceneRectChanged ( const QRectF & rect );
  void selectionChanged ();
};
#endif
