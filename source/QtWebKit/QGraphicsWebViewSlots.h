/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQGRAPHICSWEBVIEW_H
#define SLOTSQGRAPHICSWEBVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QGraphicsWebView>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"

void QGraphicsWebView_release_codeblocks ();

class SlotsQGraphicsWebView: public QObject
{
  Q_OBJECT

  public:
  SlotsQGraphicsWebView(QObject *parent = 0);
  ~SlotsQGraphicsWebView();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void iconChanged ();
  void linkClicked ( const QUrl & url );
  void loadFinished ( bool ok );
  void loadProgress ( int progress );
  void loadStarted ();
  void statusBarMessage ( const QString & text );
  void titleChanged ( const QString & title );
  void urlChanged ( const QUrl & url );
};

#endif
