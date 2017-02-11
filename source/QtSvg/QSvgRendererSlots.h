/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQSVGRENDERER_H
#define SLOTSQSVGRENDERER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QSvgRenderer>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QSvgRenderer_release_codeblocks ();
class SlotsQSvgRenderer: public QObject
{
  Q_OBJECT
  public:
  SlotsQSvgRenderer(QObject *parent = 0);
  ~SlotsQSvgRenderer();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void repaintNeeded ();
};
#endif
