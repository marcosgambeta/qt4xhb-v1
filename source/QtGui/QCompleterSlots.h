/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQCOMPLETER_H
#define SLOTSQCOMPLETER_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QCompleter>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QCompleter_release_codeblocks ();
class SlotsQCompleter: public QObject
{
  Q_OBJECT
  public:
  SlotsQCompleter(QObject *parent = 0);
  ~SlotsQCompleter();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void activated ( const QString & text );
  void activated ( const QModelIndex & index );
  void highlighted ( const QString & text );
  void highlighted ( const QModelIndex & index );
};
#endif
