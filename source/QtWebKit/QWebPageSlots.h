/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#ifndef SLOTSQWEBPAGE_H
#define SLOTSQWEBPAGE_H

#include <QObject>
#include <QCoreApplication>
#include <QList>
#include <QWebPage>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

void QWebPage_release_codeblocks ();

class SlotsQWebPage: public QObject
{
  Q_OBJECT

  public:
  SlotsQWebPage(QObject *parent = 0);
  ~SlotsQWebPage();
  QList<QObject*> list1;
  QList<QString> list2;
  QList<PHB_ITEM> list3;
  QList<bool> list4;

  public slots:
  void contentsChanged ();
  void databaseQuotaExceeded ( QWebFrame * frame, QString databaseName );
  void downloadRequested ( const QNetworkRequest & request );
  void frameCreated ( QWebFrame * frame );
  void geometryChangeRequested ( const QRect & geom );
  void linkClicked ( const QUrl & url );
  void linkHovered ( const QString & link, const QString & title, const QString & textContent );
  void loadFinished ( bool ok );
  void loadProgress ( int progress );
  void loadStarted ();
  void menuBarVisibilityChangeRequested ( bool visible );
  void microFocusChanged ();
  void printRequested ( QWebFrame * frame );
  void repaintRequested ( const QRect & dirtyRect );
  void restoreFrameStateRequested ( QWebFrame * frame );
  void saveFrameStateRequested ( QWebFrame * frame, QWebHistoryItem * item );
  void scrollRequested ( int dx, int dy, const QRect & rectToScroll );
  void selectionChanged ();
  void statusBarMessage ( const QString & text );
  void statusBarVisibilityChangeRequested ( bool visible );
  void toolBarVisibilityChangeRequested ( bool visible );
  void unsupportedContent ( QNetworkReply * reply );
  void windowCloseRequested ();
};

#endif
