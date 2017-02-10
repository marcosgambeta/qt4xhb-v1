/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQAXSCRIPT_H
#define SLOTSQAXSCRIPT_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QAxScript>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

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
