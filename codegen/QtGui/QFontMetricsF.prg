%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QFontMetricsF ( const QFont & font )
$internalConstructor=|new1|const QFont &

$prototype=QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
$internalConstructor=|new2|const QFont &,QPaintDevice *

$prototype=QFontMetricsF ( const QFontMetrics & fontMetrics )
$internalConstructor=|new3|const QFontMetrics &

$prototype=QFontMetricsF ( const QFontMetricsF & fm )
$internalConstructor=|new4|const QFontMetricsF &

/*
[1]QFontMetricsF ( const QFont & font )
[2]QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
[3]QFontMetricsF ( const QFontMetrics & fontMetrics )
[4]QFontMetricsF ( const QFontMetricsF & fm )
*/

HB_FUNC_STATIC( QFONTMETRICSF_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontMetricsF_new1();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    QFontMetricsF_new2();
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    QFontMetricsF_new3();
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICSF(1) )
  {
    QFontMetricsF_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=qreal ascent() const

$prototypeV2=qreal averageCharWidth() const

$prototype=QRectF boundingRect ( const QString & text ) const
$internalMethod=|QRectF|boundingRect,boundingRect1|const QString &

$prototype=QRectF boundingRect ( QChar ch ) const
$internalMethod=|QRectF|boundingRect,boundingRect2|QChar

$prototype=QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
$internalMethod=|QRectF|boundingRect,boundingRect3|const QRectF &,int,const QString &,int=0,int *=0

/*
[1]QRectF boundingRect ( const QString & text ) const
[2]QRectF boundingRect ( QChar ch ) const
[3]QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/

HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetricsF_boundingRect1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetricsF_boundingRect2();
  }
  else if( ISBETWEEN(3,5) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
  {
    QFontMetricsF_boundingRect3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=boundingRect

$prototypeV2=qreal descent() const

$prototype=QString elidedText ( const QString & text, Qt::TextElideMode mode, qreal width, int flags = 0 ) const
$method=|QString|elidedText|const QString &,Qt::TextElideMode,qreal,int=0

$prototypeV2=qreal height() const

$prototype=bool inFont ( QChar ch ) const
$method=|bool|inFont|QChar

$prototype=bool inFontUcs4 ( uint ch ) const
$method=|bool|inFontUcs4|uint

$prototypeV2=qreal leading() const

$prototype=qreal leftBearing ( QChar ch ) const
$method=|qreal|leftBearing|QChar

$prototypeV2=qreal lineSpacing() const

$prototypeV2=qreal lineWidth() const

$prototypeV2=qreal maxWidth() const

$prototypeV2=qreal minLeftBearing() const

$prototypeV2=qreal minRightBearing() const

$prototypeV2=qreal overlinePos() const

$prototype=qreal rightBearing ( QChar ch ) const
$method=|qreal|rightBearing|QChar

$prototype=QSizeF size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
$method=|QSizeF|size|int,const QString &,int=0,int *=0

$prototypeV2=qreal strikeOutPos() const

$prototype=QRectF tightBoundingRect ( const QString & text ) const
$method=|QRectF|tightBoundingRect|const QString &

$prototypeV2=qreal underlinePos() const

$prototype=qreal width ( const QString & text ) const
$internalMethod=|qreal|width,width1|const QString &

$prototype=qreal width ( QChar ch ) const
$internalMethod=|qreal|width,width2|QChar

/*
[1]qreal width ( const QString & text ) const
[2]qreal width ( QChar ch ) const
*/

HB_FUNC_STATIC( QFONTMETRICSF_WIDTH )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetricsF_width1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetricsF_width2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=width

$prototypeV2=qreal xHeight() const

$extraMethods

#pragma ENDDUMP
