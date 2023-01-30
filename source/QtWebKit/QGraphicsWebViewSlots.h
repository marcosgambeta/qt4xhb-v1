/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#ifndef QGRAPHICSWEBVIEWSLOTS_H
#define QGRAPHICSWEBVIEWSLOTS_H

#include <QtCore/QObject>
#include <QtCore/QCoreApplication>
#include <QtCore/QString>

#include <QtWebKit/QGraphicsWebView>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_signals.h"

class QGraphicsWebViewSlots: public QObject
{
  Q_OBJECT
  public:
  QGraphicsWebViewSlots( QObject * parent = 0 );
  ~QGraphicsWebViewSlots();
  public slots:
  void iconChanged();
  void linkClicked( const QUrl & url );
  void loadFinished( bool ok );
  void loadProgress( int progress );
  void loadStarted();
  void statusBarMessage( const QString & text );
  void titleChanged( const QString & title );
  void urlChanged( const QUrl & url );
};

#endif /* QGRAPHICSWEBVIEWSLOTS_H */
