/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWEBFRAME_H
#define SLOTSQWEBFRAME_H
#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWebFrame>
#include "hbapi.h"
#include "hbapiitm.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#endif

void QWebFrame_release_codeblocks ();
class SlotsQWebFrame: public QObject
{
  Q_OBJECT
  public:
  SlotsQWebFrame(QObject *parent = 0);
  ~SlotsQWebFrame();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;
  public slots:
  void contentsSizeChanged ( const QSize & size );
  void iconChanged ();
  void initialLayoutCompleted ();
  void javaScriptWindowObjectCleared ();
  void loadFinished ( bool ok );
  void loadStarted ();
  void pageChanged ();
  void titleChanged ( const QString & title );
  void urlChanged ( const QUrl & url );
};
#endif
