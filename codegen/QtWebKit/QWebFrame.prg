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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWebKit/QWebElement>
#include <QtWebKit/QWebSecurityOrigin>
#include <QtWebKit/QWebPage>

$prototype=void addToJavaScriptWindowObject ( const QString & name, QObject * object )
$internalMethod=|void|addToJavaScriptWindowObject,addToJavaScriptWindowObject1|const QString &,QObject *

$prototype=void addToJavaScriptWindowObject ( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )
$internalMethod=|void|addToJavaScriptWindowObject,addToJavaScriptWindowObject2|const QString &,QObject *,QScriptEngine::ValueOwnership

/*
[1]void addToJavaScriptWindowObject ( const QString & name, QObject * object )
[2]void addToJavaScriptWindowObject ( const QString & name, QObject * object, QScriptEngine::ValueOwnership own )
*/

HB_FUNC_STATIC( QWEBFRAME_ADDTOJAVASCRIPTWINDOWOBJECT )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQOBJECT(2) )
  {
    QWebFrame_addToJavaScriptWindowObject1();
  }
  else if( ISNUMPAR(3) && ISCHAR(1) && ISQOBJECT(2) && ISNUM(3) )
  {
    QWebFrame_addToJavaScriptWindowObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=addToJavaScriptWindowObject

$prototypeV2=QUrl baseUrl() const

$prototype=QList<QWebFrame *> childFrames () const
$method=|QList<QWebFrame *>|childFrames|

$prototypeV2=QSize contentsSize() const

$prototypeV2=QWebElement documentElement() const

$prototype=QWebElementCollection findAllElements ( const QString & selectorQuery ) const
$method=|QWebElementCollection|findAllElements|const QString &

$prototype=QWebElement findFirstElement ( const QString & selectorQuery ) const
$method=|QWebElement|findFirstElement|const QString &

$prototypeV2=QString frameName() const

$prototypeV2=QRect geometry() const

$prototypeV2=bool hasFocus() const

$prototype=QWebHitTestResult hitTestContent ( const QPoint & pos ) const
$method=|QWebHitTestResult|hitTestContent|const QPoint &

$prototypeV2=QIcon icon() const

$prototype=void load ( const QUrl & url )
$internalMethod=|void|load,load1|const QUrl &

$prototype=void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
$internalMethod=|void|load,load2|const QNetworkRequest &,QNetworkAccessManager::Operation=QNetworkAccessManager::GetOperation,const QByteArray &=QByteArray()

/*
[1]void load ( const QUrl & url )
[2]void load ( const QNetworkRequest & req, QNetworkAccessManager::Operation operation = QNetworkAccessManager::GetOperation, const QByteArray & body = QByteArray() )
*/

HB_FUNC_STATIC( QWEBFRAME_LOAD )
{
  if( ISNUMPAR(1) && ISQURL(1) )
  {
    QWebFrame_load1();
  }
  else if( ISBETWEEN(1,3) && ISQNETWORKREQUEST(1) && (ISNUM(2)||ISNIL(2)) && (ISQBYTEARRAY(3)||ISNIL(3)) )
  {
    QWebFrame_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=load

$prototypeV2=QWebPage * page() const

$prototypeV2=QWebFrame * parentFrame() const

$prototypeV2=QPoint pos() const

$prototype=void render ( QPainter * painter )
$internalMethod=|void|render,render1|QPainter *

$prototype=void render ( QPainter * painter, const QRegion & clip )
$internalMethod=|void|render,render2|QPainter *,const QRegion &

$prototype=void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )
$internalMethod=|void|render,render3|QPainter *,QWebFrame::RenderLayer,const QRegion &=QRegion()

/*
[1]void render ( QPainter * painter )
[2]void render ( QPainter * painter, const QRegion & clip )
[3]void render ( QPainter * painter, RenderLayer layer, const QRegion & clip = QRegion() )
*/

HB_FUNC_STATIC( QWEBFRAME_RENDER )
{
  if( ISNUMPAR(1) && ISQPAINTER(1) )
  {
    QWebFrame_render1();
  }
  else if( ISNUMPAR(2) && ISQPAINTER(1) && ISQREGION(2) )
  {
    QWebFrame_render2();
  }
  else if( ISBETWEEN(2,3) && ISQPAINTER(1) && ISNUM(2) && (ISQREGION(3)||ISNIL(3)) )
  {
    QWebFrame_render3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=render

$prototypeV2=QString renderTreeDump() const

$prototypeV2=QUrl requestedUrl() const

$prototype=void scroll ( int dx, int dy )
$method=|void|scroll|int,int

$prototype=QRect scrollBarGeometry ( Qt::Orientation orientation ) const
$method=|QRect|scrollBarGeometry|Qt::Orientation

$prototype=int scrollBarMaximum ( Qt::Orientation orientation ) const
$method=|int|scrollBarMaximum|Qt::Orientation

$prototype=int scrollBarMinimum ( Qt::Orientation orientation ) const
$method=|int|scrollBarMinimum|Qt::Orientation

$prototype=Qt::ScrollBarPolicy scrollBarPolicy ( Qt::Orientation orientation ) const
$method=|Qt::ScrollBarPolicy|scrollBarPolicy|Qt::Orientation

$prototype=int scrollBarValue ( Qt::Orientation orientation ) const
$method=|int|scrollBarValue|Qt::Orientation

$prototypeV2=QPoint scrollPosition() const

$prototype=void scrollToAnchor ( const QString & anchor )
$method=|void|scrollToAnchor|const QString &

$prototypeV2=QWebSecurityOrigin securityOrigin() const

$prototype=void setContent ( const QByteArray & data, const QString & mimeType = QString(), const QUrl & baseUrl = QUrl() )
$method=|void|setContent|const QByteArray &,const QString &=QString(),const QUrl &=QUrl()

$prototypeV2=void setFocus()

$prototype=void setHtml ( const QString & html, const QUrl & baseUrl = QUrl() )
$method=|void|setHtml|const QString &,const QUrl &=QUrl()

$prototype=void setScrollBarPolicy ( Qt::Orientation orientation, Qt::ScrollBarPolicy policy )
$method=|void|setScrollBarPolicy|Qt::Orientation,Qt::ScrollBarPolicy

$prototype=void setScrollBarValue ( Qt::Orientation orientation, int value )
$method=|void|setScrollBarValue|Qt::Orientation,int

$prototype=void setScrollPosition ( const QPoint & pos )
$method=|void|setScrollPosition|const QPoint &

$prototype=void setTextSizeMultiplier ( qreal factor )
$method=|void|setTextSizeMultiplier|qreal

$prototype=void setUrl ( const QUrl & url )
$method=|void|setUrl|const QUrl &

$prototype=void setZoomFactor ( qreal factor )
$method=|void|setZoomFactor|qreal

$prototypeV2=qreal textSizeMultiplier() const

$prototypeV2=QString title() const

$prototypeV2=QString toHtml() const

$prototypeV2=QString toPlainText() const

$prototypeV2=QUrl url() const

$prototypeV2=qreal zoomFactor() const

$prototype=QVariant evaluateJavaScript ( const QString & scriptSource )
$method=|QVariant|evaluateJavaScript|const QString &

$prototype=void print ( QPrinter * printer ) const
$method=|void|print|QPrinter *

$beginSignals
$signal=|contentsSizeChanged(QSize)
$signal=|iconChanged()
$signal=|initialLayoutCompleted()
$signal=|javaScriptWindowObjectCleared()
$signal=|loadFinished(bool)
$signal=|loadStarted()
$signal=|pageChanged()
$signal=|titleChanged(QString)
$signal=|urlChanged(QUrl)
$endSignals

#pragma ENDDUMP
