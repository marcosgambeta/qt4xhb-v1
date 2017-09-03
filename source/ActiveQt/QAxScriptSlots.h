/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQAXSCRIPT_H
#define SLOTSQAXSCRIPT_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAxScript>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QAxScript_release_codeblocks ();

class SlotsQAxScript: public QObject
{
  Q_OBJECT

  public:
  SlotsQAxScript(QObject *parent = 0);
  ~SlotsQAxScript();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void entered ();
  void error ( int code, const QString & description, int sourcePosition, const QString & sourceText );
  void finished ();
  void finished ( const QVariant & result );
  void finished ( int code, const QString & source, const QString & description, const QString & help );
  void stateChanged ( int state );
};

#endif
