$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSIZEF
#endif

CLASS QFontMetricsF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect1
   METHOD boundingRect2
   METHOD boundingRect3
   METHOD boundingRect
   METHOD descent
   METHOD elidedText
   METHOD height
   METHOD inFont
   METHOD inFontUcs4
   METHOD leading
   METHOD leftBearing
   METHOD lineSpacing
   METHOD lineWidth
   METHOD maxWidth
   METHOD minLeftBearing
   METHOD minRightBearing
   METHOD overlinePos
   METHOD rightBearing
   METHOD size
   METHOD strikeOutPos
   METHOD tightBoundingRect
   METHOD underlinePos
   METHOD width1
   METHOD width2
   METHOD width
   METHOD xHeight

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QFontMetricsF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFontMetricsF ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW1 )
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW2 )
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONT(1), PQPAINTDEVICE(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetricsF ( const QFontMetrics & fontMetrics )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW3 )
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONTMETRICS(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetricsF ( const QFontMetricsF & fm )
*/
HB_FUNC_STATIC( QFONTMETRICSF_NEW4 )
{
  QFontMetricsF * o = new QFontMetricsF ( *PQFONTMETRICSF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QFontMetricsF ( const QFont & font )
//[2]QFontMetricsF ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetricsF ( const QFontMetrics & fontMetrics )
//[4]QFontMetricsF ( const QFontMetricsF & fm )

HB_FUNC_STATIC( QFONTMETRICSF_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICSF(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
qreal ascent () const
*/
$method=|qreal|ascent|

/*
qreal averageCharWidth () const
*/
$method=|qreal|averageCharWidth|

/*
QRectF boundingRect ( const QString & text ) const
*/
$method=|QRectF|boundingRect,boundingRect1|const QString &

/*
QRectF boundingRect ( QChar ch ) const
*/
$method=|QRectF|boundingRect,boundingRect2|QChar

/*
QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$method=|QRectF|boundingRect,boundingRect3|const QRectF &,int,const QString &,int=0,int *=0

//[1]QRectF boundingRect ( const QString & text ) const
//[2]QRectF boundingRect ( QChar ch ) const
//[3]QRectF boundingRect ( const QRectF & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICSF_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_BOUNDINGRECT1 );
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_BOUNDINGRECT2 );
  }
  else if( ISBETWEEN(3,5) && ISQRECTF(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_BOUNDINGRECT3 );
  }
}

/*
qreal descent () const
*/
$method=|qreal|descent|

/*
QString elidedText ( const QString & text, Qt::TextElideMode mode, qreal width, int flags = 0 ) const
*/
$method=|QString|elidedText|const QString &,Qt::TextElideMode,qreal,int=0

/*
qreal height () const
*/
$method=|qreal|height|

/*
bool inFont ( QChar ch ) const
*/
$method=|bool|inFont|QChar

/*
bool inFontUcs4 ( uint ch ) const
*/
$method=|bool|inFontUcs4|uint

/*
qreal leading () const
*/
$method=|qreal|leading|

/*
qreal leftBearing ( QChar ch ) const
*/
$method=|qreal|leftBearing|QChar

/*
qreal lineSpacing () const
*/
$method=|qreal|lineSpacing|

/*
qreal lineWidth () const
*/
$method=|qreal|lineWidth|

/*
qreal maxWidth () const
*/
$method=|qreal|maxWidth|

/*
qreal minLeftBearing () const
*/
$method=|qreal|minLeftBearing|

/*
qreal minRightBearing () const
*/
$method=|qreal|minRightBearing|

/*
qreal overlinePos () const
*/
$method=|qreal|overlinePos|

/*
qreal rightBearing ( QChar ch ) const
*/
$method=|qreal|rightBearing|QChar

/*
QSizeF size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$method=|QSizeF|size|int,const QString &,int=0,int *=0

/*
qreal strikeOutPos () const
*/
$method=|qreal|strikeOutPos|

/*
QRectF tightBoundingRect ( const QString & text ) const
*/
$method=|QRectF|tightBoundingRect|const QString &

/*
qreal underlinePos () const
*/
$method=|qreal|underlinePos|

/*
qreal width ( const QString & text ) const
*/
$method=|qreal|width,width1|const QString &

/*
qreal width ( QChar ch ) const
*/
$method=|qreal|width,width2|QChar

//[1]qreal width ( const QString & text ) const
//[2]qreal width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICSF_WIDTH )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_WIDTH1 );
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICSF_WIDTH2 );
  }
}

/*
qreal xHeight () const
*/
$method=|qreal|xHeight|

$extraMethods

#pragma ENDDUMP
