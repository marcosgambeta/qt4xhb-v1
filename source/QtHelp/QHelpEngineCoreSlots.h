/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQHELPENGINECORE_H
#define SLOTSQHELPENGINECORE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QHelpEngineCore>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QHelpEngineCore_release_codeblocks ();

class SlotsQHelpEngineCore: public QObject
{
  Q_OBJECT

  public:
  SlotsQHelpEngineCore(QObject *parent = 0);
  ~SlotsQHelpEngineCore();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void currentFilterChanged ( const QString & newFilter );
  void setupFinished ();
  void setupStarted ();
  void warning ( const QString & msg );
};

#endif
