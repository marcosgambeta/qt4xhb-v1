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

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtWebKit/QWebElement>

$prototype=QWebHitTestResult ()
$internalConstructor=|new1|

$prototype=QWebHitTestResult ( const QWebHitTestResult & other )
$internalConstructor=|new2|const QWebHitTestResult &

/*
[1]QWebHitTestResult ()
[2]QWebHitTestResult ( const QWebHitTestResult & other )
*/

HB_FUNC_STATIC( QWEBHITTESTRESULT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QWebHitTestResult_new1();
  }
  else if( ISNUMPAR(1) && ISQWEBHITTESTRESULT(1) )
  {
    QWebHitTestResult_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QString alternateText() const

$prototypeV2=QRect boundingRect() const

$prototypeV2=QWebElement element() const

$prototypeV2=QWebElement enclosingBlockElement() const

$prototypeV2=QWebFrame * frame() const

$prototypeV2=QUrl imageUrl() const

$prototypeV2=bool isContentEditable() const

$prototypeV2=bool isContentSelected() const

$prototypeV2=bool isNull() const

$prototypeV2=QWebElement linkElement() const

$prototypeV2=QWebFrame * linkTargetFrame() const

$prototypeV2=QString linkText() const

$prototypeV2=QUrl linkTitle() const

$prototypeV2=QUrl linkUrl() const

$prototypeV2=QPixmap pixmap() const

$prototypeV2=QPoint pos() const

$prototypeV2=QString title() const

$extraMethods

#pragma ENDDUMP
