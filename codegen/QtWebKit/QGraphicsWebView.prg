%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtWebKit

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QGraphicsWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QAction>

$prototype=QGraphicsWebView ( QGraphicsItem * parent = 0 )
$constructor=|new|QGraphicsItem *=0

$deleteMethod

$prototypeV2=bool findText( const QString & subString, QWebPage::FindFlags options = 0 )

$prototypeV2=QWebHistory * history() const

$prototypeV2=QIcon icon() const

$prototypeV2=bool isModified() const

$prototypeV2=bool isTiledBackingStoreFrozen() const

$prototype=void load ( const QUrl & url )
$internalMethod=|void|load,load1|const QUrl &

$prototype=void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
$internalMethod=|void|load,load2|const QNetworkRequest &,QNetworkAccessManager::Operation=QNetworkAccessManager::GetOperation,const QByteArray &=QByteArray()

/*
[1]void load ( const QUrl & url )
[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/

HB_FUNC_STATIC( QGRAPHICSWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QGraphicsWebView_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && (ISNUM(2)||ISNIL(2)) && (ISQBYTEARRAY(3)||ISNIL(3)) )
  {
    QGraphicsWebView_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

$prototypeV2=QWebPage * page() const

$prototypeV2=QAction * pageAction( QWebPage::WebAction action ) const

$prototypeV2=bool resizesToContents() const

$prototypeV2=void setContent( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )

$prototypeV2=void setHtml( const QString & html, const QUrl & baseUrl = QUrl() )

$prototypeV2=void setPage( QWebPage * page )

$prototypeV2=void setResizesToContents( bool enabled )

$prototypeV2=void setTiledBackingStoreFrozen( bool frozen )

$prototypeV2=void setUrl( const QUrl & )

$prototypeV2=void setZoomFactor( qreal )

$prototypeV2=QWebSettings * settings() const

$prototypeV2=QString title() const

$prototypeV2=void triggerPageAction( QWebPage::WebAction action, bool checked = false )

$prototypeV2=QUrl url() const

$prototypeV2=qreal zoomFactor() const

$prototypeV2=void back()

$prototypeV2=void forward()

$prototypeV2=void reload()

$prototypeV2=void stop()

$beginSignals
$signal=|iconChanged()
$signal=|linkClicked(QUrl)
$signal=|loadFinished(bool)
$signal=|loadProgress(int)
$signal=|loadStarted()
$signal=|statusBarMessage(QString)
$signal=|titleChanged(QString)
$signal=|urlChanged(QUrl)
$endSignals

#pragma ENDDUMP
