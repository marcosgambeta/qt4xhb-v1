$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFontMetrics

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
   METHOD boundingRect1
   METHOD boundingRect2
   METHOD boundingRect3
   METHOD boundingRect4
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

#include <QFontMetrics>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QFontMetrics ( const QFont & font )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW1 )
{
  QFontMetrics * o = new QFontMetrics ( *PQFONT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW2 )
{
  QFontMetrics * o = new QFontMetrics ( *PQFONT(1), PQPAINTDEVICE(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QFontMetrics ( const QFontMetrics & fm )
*/
HB_FUNC_STATIC( QFONTMETRICS_NEW3 )
{
  QFontMetrics * o = new QFontMetrics ( *PQFONTMETRICS(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QFontMetrics ( const QFont & font )
//[2]QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetrics ( const QFontMetrics & fm )

HB_FUNC_STATIC( QFONTMETRICS_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
int ascent () const
*/
$method=|int|ascent|

/*
int averageCharWidth () const
*/
$method=|int|averageCharWidth|

/*
QRect boundingRect ( QChar ch ) const
*/
$method=|QRect|boundingRect,boundingRect1|QChar

/*
QRect boundingRect ( const QString & text ) const
*/
$method=|QRect|boundingRect,boundingRect2|const QString &

/*
QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$method=|QRect|boundingRect,boundingRect3|int,int,int,int,int,const QString &,int=0,int *=0

/*
QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$method=|QRect|boundingRect,boundingRect4|const QRect &,int,const QString &,int=0,int *=0

//[1]QRect boundingRect ( QChar ch ) const
//[2]QRect boundingRect ( const QString & text ) const
//[3]QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
//[4]QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT2 );
  }
  else if( ISBETWEEN(6,8) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) && (ISNUM(7)||ISNIL(7)) && (ISARRAY(8)||ISNIL(8)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT3 );
  }
  else if( ISBETWEEN(3,5) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_BOUNDINGRECT4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int descent () const
*/
$method=|int|descent|

/*
QString elidedText ( const QString & text, Qt::TextElideMode mode, int width, int flags = 0 ) const
*/
$method=|QString|elidedText|const QString &,Qt::TextElideMode,int,int=0

/*
int height () const
*/
$method=|int|height|

/*
bool inFont ( QChar ch ) const
*/
$method=|bool|inFont|QChar

/*
bool inFontUcs4 ( uint character ) const
*/
$method=|bool|inFontUcs4|uint

/*
int leading () const
*/
$method=|int|leading|

/*
int leftBearing ( QChar ch ) const
*/
$method=|int|leftBearing|QChar

/*
int lineSpacing () const
*/
$method=|int|lineSpacing|

/*
int lineWidth () const
*/
$method=|int|lineWidth|

/*
int maxWidth () const
*/
$method=|int|maxWidth|

/*
int minLeftBearing () const
*/
$method=|int|minLeftBearing|

/*
int minRightBearing () const
*/
$method=|int|minRightBearing|

/*
int overlinePos () const
*/
$method=|int|overlinePos|

/*
int rightBearing ( QChar ch ) const
*/
$method=|int|rightBearing|QChar

/*
QSize size ( int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$method=|QSize|size|int,const QString &,int=0,int *=0

/*
int strikeOutPos () const
*/
$method=|int|strikeOutPos|

/*
QRect tightBoundingRect ( const QString & text ) const
*/
$method=|QRect|tightBoundingRect|const QString &

/*
int underlinePos () const
*/
$method=|int|underlinePos|

/*
int width ( const QString & text, int len = -1 ) const
*/
$method=|int|width,width1|const QString &,int=-1

/*
int width ( QChar ch ) const
*/
$method=|int|width,width2|QChar

//[1]int width ( const QString & text, int len = -1 ) const
//[2]int width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICS_WIDTH )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_WIDTH1 );
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QFONTMETRICS_WIDTH2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int xHeight () const
*/
$method=|int|xHeight|

$extraMethods

#pragma ENDDUMP
