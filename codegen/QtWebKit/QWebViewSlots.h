%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#ifndef SLOTSQWEBVIEW_H
#define SLOTSQWEBVIEW_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWebView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QWebView_release_codeblocks ();

class SlotsQWebView: public QObject
{
  Q_OBJECT

  public:
  SlotsQWebView(QObject *parent = 0);
  ~SlotsQWebView();
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
  void selectionChanged ();
  void statusBarMessage ( const QString & text );
  void titleChanged ( const QString & title );
  void urlChanged ( const QUrl & url );
};

#endif
