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

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QWidget>
#include <QtCore/QUrl>
#include <QtGui/QAction>

$prototype=QWebView ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototype=bool findText ( const QString & subString, QWebPage::FindFlags options = 0 )
$method=|bool|findText|const QString &,QWebPage::FindFlags=0

$prototypeV2=QWebHistory * history() const

$prototypeV2=QIcon icon() const

$prototypeV2=bool isModified() const

$prototype=void load ( const QUrl & url )
$internalMethod=|void|load,load1|const QUrl &

$prototype=void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
$internalMethod=|void|load,load2|const QNetworkRequest &,QNetworkAccessManager::Operation=QNetworkAccessManager::GetOperation,const QByteArray &=QByteArray()

/*
[1]void load ( const QUrl & url )
[2]void load ( const QNetworkRequest & request, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/

HB_FUNC_STATIC( QWEBVIEW_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QWebView_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && (ISNUM(2)||ISNIL(2)) && (ISQBYTEARRAY(3)||ISNIL(3)) )
  {
    QWebView_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

$prototypeV2=QWebPage * page() const

$prototypeV2=QAction * pageAction( QWebPage::WebAction action ) const

$prototypeV2=QPainter::RenderHints renderHints() const

$prototypeV2=QString selectedText() const

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototypeV2=void setPage( QWebPage * page )

$prototype=void setRenderHint ( QPainter::RenderHint hint, bool enabled = true )
$method=|void|setRenderHint|QPainter::RenderHint,bool=true

$prototypeV2=void setRenderHints( QPainter::RenderHints hints )

$prototypeV2=void setTextSizeMultiplier( qreal factor )

$prototypeV2=void setUrl( const QUrl & url )

$prototypeV2=void setZoomFactor( qreal factor )

$prototypeV2=QWebSettings * settings() const

$prototypeV2=qreal textSizeMultiplier() const

$prototypeV2=QString title() const

$prototype=void triggerPageAction ( QWebPage::WebAction action, bool checked = false )
$method=|void|triggerPageAction|QWebPage::WebAction,bool=false

$prototypeV2=QUrl url() const

$prototypeV2=qreal zoomFactor() const

$prototypeV2=void back()

$prototypeV2=void forward()

$prototypeV2=void print( QPrinter * printer ) const

$prototypeV2=void reload()

$prototypeV2=void stop()

$beginSignals
$signal=|iconChanged()
$signal=|linkClicked(QUrl)
$signal=|loadFinished(bool)
$signal=|loadProgress(int)
$signal=|loadStarted()
$signal=|selectionChanged()
$signal=|statusBarMessage(QString)
$signal=|titleChanged(QString)
$signal=|urlChanged(QUrl)
$endSignals

#pragma ENDDUMP
