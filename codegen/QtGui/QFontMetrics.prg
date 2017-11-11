$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QFontMetrics

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD averageCharWidth
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
$internalConstructor=|new1|const QFont &

/*
QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
*/
$internalConstructor=|new2|const QFont &,QPaintDevice *

/*
QFontMetrics ( const QFontMetrics & fm )
*/
$internalConstructor=|new3|const QFontMetrics &

//[1]QFontMetrics ( const QFont & font )
//[2]QFontMetrics ( const QFont & font, QPaintDevice * paintdevice )
//[3]QFontMetrics ( const QFontMetrics & fm )

HB_FUNC_STATIC( QFONTMETRICS_NEW )
{
  if( ISNUMPAR(1) && ISQFONT(1) )
  {
    QFontMetrics_new1();
  }
  else if( ISNUMPAR(2) && ISQFONT(1) && ISOBJECT(2) )
  {
    QFontMetrics_new2();
  }
  else if( ISNUMPAR(1) && ISQFONTMETRICS(1) )
  {
    QFontMetrics_new3();
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
$internalMethod=|QRect|boundingRect,boundingRect1|QChar

/*
QRect boundingRect ( const QString & text ) const
*/
$internalMethod=|QRect|boundingRect,boundingRect2|const QString &

/*
QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$internalMethod=|QRect|boundingRect,boundingRect3|int,int,int,int,int,const QString &,int=0,int *=0

/*
QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
*/
$internalMethod=|QRect|boundingRect,boundingRect4|const QRect &,int,const QString &,int=0,int *=0

//[1]QRect boundingRect ( QChar ch ) const
//[2]QRect boundingRect ( const QString & text ) const
//[3]QRect boundingRect ( int x, int y, int width, int height, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const
//[4]QRect boundingRect ( const QRect & rect, int flags, const QString & text, int tabStops = 0, int * tabArray = 0 ) const

HB_FUNC_STATIC( QFONTMETRICS_BOUNDINGRECT )
{
  if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetrics_boundingRect1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QFontMetrics_boundingRect2();
  }
  else if( ISBETWEEN(6,8) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISCHAR(6) && (ISNUM(7)||ISNIL(7)) && (ISARRAY(8)||ISNIL(8)) )
  {
    QFontMetrics_boundingRect3();
  }
  else if( ISBETWEEN(3,5) && ISQRECT(1) && ISNUM(2) && ISCHAR(3) && (ISNUM(4)||ISNIL(4)) && (ISARRAY(5)||ISNIL(5)) )
  {
    QFontMetrics_boundingRect4();
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
$internalMethod=|int|width,width1|const QString &,int=-1

/*
int width ( QChar ch ) const
*/
$internalMethod=|int|width,width2|QChar

//[1]int width ( const QString & text, int len = -1 ) const
//[2]int width ( QChar ch ) const

HB_FUNC_STATIC( QFONTMETRICS_WIDTH )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QFontMetrics_width1();
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    QFontMetrics_width2();
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
