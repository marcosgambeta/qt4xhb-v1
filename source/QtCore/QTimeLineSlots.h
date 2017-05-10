/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQTIMELINE_H
#define SLOTSQTIMELINE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QTimeLine>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QTimeLine_release_codeblocks ();

class SlotsQTimeLine: public QObject
{
  Q_OBJECT

  public:
  SlotsQTimeLine(QObject *parent = 0);
  ~SlotsQTimeLine();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void finished ();
  void frameChanged ( int frame );
  void stateChanged ( QTimeLine::State newState );
  void valueChanged ( qreal value );
};

#endif
