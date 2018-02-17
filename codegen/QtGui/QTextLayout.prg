%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QTEXTLINE
REQUEST QFONT
REQUEST QGLYPHRUN
REQUEST QPOINTF
REQUEST QTEXTOPTION
#endif

CLASS QTextLayout

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD beginLayout
   METHOD boundingRect
   METHOD cacheEnabled
   METHOD clearAdditionalFormats
   METHOD clearLayout
   METHOD createLine
   METHOD cursorMoveStyle
   METHOD drawCursor
   METHOD endLayout
   METHOD font
   METHOD glyphRuns
   METHOD isValidCursorPosition
   METHOD leftCursorPosition
   METHOD lineAt
   METHOD lineCount
   METHOD lineForTextPosition
   METHOD maximumWidth
   METHOD minimumWidth
   METHOD nextCursorPosition
   METHOD position
   METHOD preeditAreaPosition
   METHOD preeditAreaText
   METHOD previousCursorPosition
   METHOD rightCursorPosition
   METHOD setCacheEnabled
   METHOD setCursorMoveStyle
   METHOD setFont
   METHOD setPosition
   METHOD setPreeditArea
   METHOD setText
   METHOD setTextOption
   METHOD text
   METHOD textOption

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextLayout ()
$internalConstructor=|new1|

$prototype=QTextLayout ( const QString & text )
$internalConstructor=|new2|const QString &

$prototype=QTextLayout ( const QString & text, const QFont & font, QPaintDevice * paintdevice = 0 )
$internalConstructor=|new3|const QString &,const QFont &,QPaintDevice *=0

//[1]QTextLayout ()
//[2]QTextLayout ( const QString & text )
//[3]QTextLayout ( const QString & text, const QFont & font, QPaintDevice * paintdevice = 0 )

HB_FUNC_STATIC( QTEXTLAYOUT_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextLayout_new1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QTextLayout_new2();
  }
  else if( ISBETWEEN(2,3) && ISCHAR(1) && ISQFONT(2) && (ISOBJECT(3)||ISNIL(3)) )
  {
    QTextLayout_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=void beginLayout ()
$method=|void|beginLayout|

$prototype=QRectF boundingRect () const
$method=|QRectF|boundingRect|

$prototype=bool cacheEnabled () const
$method=|bool|cacheEnabled|

$prototype=void clearAdditionalFormats ()
$method=|void|clearAdditionalFormats|

$prototype=void clearLayout ()
$method=|void|clearLayout|

$prototype=QTextLine createLine ()
$method=|QTextLine|createLine|

$prototype=Qt::CursorMoveStyle cursorMoveStyle () const
$method=|Qt::CursorMoveStyle|cursorMoveStyle|

$prototype=void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition, int width ) const
$internalMethod=|void|drawCursor,drawCursor1|QPainter *,const QPointF &,int,int

$prototype=void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition ) const
$internalMethod=|void|drawCursor,drawCursor2|QPainter *,const QPointF &,int

//[1]void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition, int width ) const
//[2]void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition ) const

HB_FUNC_STATIC( QTEXTLAYOUT_DRAWCURSOR )
{
  if( ISNUMPAR(4) && ISQPAINTER(1) && ISQPOINTF(2) && ISNUM(3) && ISNUM(4) )
  {
    QTextLayout_drawCursor1();
  }
  else if( ISNUMPAR(3) && ISQPAINTER(1) && ISQPOINTF(2) && ISNUM(3) )
  {
    QTextLayout_drawCursor2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void endLayout ()
$method=|void|endLayout|

$prototype=QFont font () const
$method=|QFont|font|

$prototype=QList<QGlyphRun> glyphRuns () const
$method=|QList<QGlyphRun>|glyphRuns|

$prototype=bool isValidCursorPosition ( int pos ) const
$method=|bool|isValidCursorPosition|int

$prototype=int leftCursorPosition ( int oldPos ) const
$method=|int|leftCursorPosition|int

$prototype=QTextLine lineAt ( int i ) const
$method=|QTextLine|lineAt|int

$prototype=int lineCount () const
$method=|int|lineCount|

$prototype=QTextLine lineForTextPosition ( int pos ) const
$method=|QTextLine|lineForTextPosition|int

$prototype=qreal maximumWidth () const
$method=|qreal|maximumWidth|

$prototype=qreal minimumWidth () const
$method=|qreal|minimumWidth|

$prototype=int nextCursorPosition ( int oldPos, CursorMode mode = SkipCharacters ) const
$method=|int|nextCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

$prototype=QPointF position () const
$method=|QPointF|position|

$prototype=int preeditAreaPosition () const
$method=|int|preeditAreaPosition|

$prototype=QString preeditAreaText () const
$method=|QString|preeditAreaText|

$prototype=int previousCursorPosition ( int oldPos, CursorMode mode = SkipCharacters ) const
$method=|int|previousCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

$prototype=int rightCursorPosition ( int oldPos ) const
$method=|int|rightCursorPosition|int

$prototype=void setCacheEnabled ( bool enable )
$method=|void|setCacheEnabled|bool

$prototype=void setCursorMoveStyle ( Qt::CursorMoveStyle style )
$method=|void|setCursorMoveStyle|Qt::CursorMoveStyle

$prototype=void setFont ( const QFont & font )
$method=|void|setFont|const QFont &

$prototype=void setPosition ( const QPointF & p )
$method=|void|setPosition|const QPointF &

$prototype=void setPreeditArea ( int position, const QString & text )
$method=|void|setPreeditArea|int,const QString &

$prototype=void setText ( const QString & string )
$method=|void|setText|const QString &

$prototype=void setTextOption ( const QTextOption & option )
$method=|void|setTextOption|const QTextOption &

$prototype=QString text () const
$method=|QString|text|

$prototype=QTextOption textOption () const
$method=|QTextOption|textOption|

$extraMethods

#pragma ENDDUMP
