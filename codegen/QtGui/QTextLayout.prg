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

$prototype=QTextLayout ()
$internalConstructor=|new1|

$prototype=QTextLayout ( const QString & text )
$internalConstructor=|new2|const QString &

$prototype=QTextLayout ( const QString & text, const QFont & font, QPaintDevice * paintdevice = 0 )
$internalConstructor=|new3|const QString &,const QFont &,QPaintDevice *=0

/*
[1]QTextLayout ()
[2]QTextLayout ( const QString & text )
[3]QTextLayout ( const QString & text, const QFont & font, QPaintDevice * paintdevice = 0 )
*/

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
$addMethod=new

$deleteMethod

$prototypeV2=void beginLayout()

$prototypeV2=QRectF boundingRect() const

$prototypeV2=bool cacheEnabled() const

$prototypeV2=void clearAdditionalFormats()

$prototypeV2=void clearLayout()

$prototypeV2=QTextLine createLine()

$prototypeV2=Qt::CursorMoveStyle cursorMoveStyle() const

$prototype=void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition, int width ) const
$internalMethod=|void|drawCursor,drawCursor1|QPainter *,const QPointF &,int,int

$prototype=void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition ) const
$internalMethod=|void|drawCursor,drawCursor2|QPainter *,const QPointF &,int

/*
[1]void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition, int width ) const
[2]void drawCursor ( QPainter * painter, const QPointF & position, int cursorPosition ) const
*/

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
$addMethod=drawCursor

$prototypeV2=void endLayout()

$prototypeV2=QFont font() const

$prototypeV2=QList<QGlyphRun> glyphRuns() const

$prototype=bool isValidCursorPosition ( int pos ) const
$method=|bool|isValidCursorPosition|int

$prototype=int leftCursorPosition ( int oldPos ) const
$method=|int|leftCursorPosition|int

$prototype=QTextLine lineAt ( int i ) const
$method=|QTextLine|lineAt|int

$prototypeV2=int lineCount() const

$prototype=QTextLine lineForTextPosition ( int pos ) const
$method=|QTextLine|lineForTextPosition|int

$prototypeV2=qreal maximumWidth() const

$prototypeV2=qreal minimumWidth() const

$prototype=int nextCursorPosition ( int oldPos, CursorMode mode = SkipCharacters ) const
$method=|int|nextCursorPosition|int,QTextLayout::CursorMode=QTextLayout::SkipCharacters

$prototypeV2=QPointF position() const

$prototypeV2=int preeditAreaPosition() const

$prototypeV2=QString preeditAreaText() const

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

$prototypeV2=QString text() const

$prototypeV2=QTextOption textOption() const

$extraMethods

#pragma ENDDUMP
