/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQMOVIE_H
#define SLOTSQMOVIE_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QMovie>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QMovie_release_codeblocks ();
class SlotsQMovie: public QObject
{
  Q_OBJECT
  public:
  SlotsQMovie(QObject *parent = 0);
  ~SlotsQMovie();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void updated ( const QRect & rect );
};
#endif
