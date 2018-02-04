/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#ifndef SLOTSQWEBFRAME_H
#define SLOTSQWEBFRAME_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWebFrame>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

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
