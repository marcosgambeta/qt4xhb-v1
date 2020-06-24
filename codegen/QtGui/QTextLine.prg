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

$prototype=QTextLine ()
$constructor=|new|

$deleteMethod

$prototypeV2=qreal ascent() const

$prototype=qreal cursorToX ( int * cursorPos, Edge edge = Leading ) const
$method=|qreal|cursorToX,cursorToX1|int *,QTextLine::Edge=QTextLine::Leading

$prototype=qreal cursorToX ( int cursorPos, Edge edge = Leading ) const
$method=|qreal|cursorToX,cursorToX2|int,QTextLine::Edge=QTextLine::Leading

/*
[1]qreal cursorToX ( int * cursorPos, Edge edge = Leading ) const
[2]qreal cursorToX ( int cursorPos, Edge edge = Leading ) const
*/

%% TODO: resolver conflito

HB_FUNC_STATIC( QTEXTLINE_CURSORTOX )
{
  if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTLINE_CURSORTOX1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QTEXTLINE_CURSORTOX2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=cursorToX

$prototypeV2=qreal descent() const

$prototypeV2=qreal height() const

$prototypeV2=qreal horizontalAdvance() const

$prototypeV2=bool isValid() const

$prototypeV2=qreal leading() const

$prototypeV2=bool leadingIncluded() const

$prototypeV2=int lineNumber() const

$prototypeV2=QRectF naturalTextRect() const

$prototypeV2=qreal naturalTextWidth() const

$prototypeV2=QPointF position() const

$prototypeV2=QRectF rect() const

$prototypeV2=void setLeadingIncluded( bool included )

$prototypeV2=void setLineWidth( qreal width )

$prototype=void setNumColumns ( int numColumns )
$method=|void|setNumColumns,setNumColumns1|int

$prototype=void setNumColumns ( int numColumns, qreal alignmentWidth )
$method=|void|setNumColumns,setNumColumns2|int,qreal

/*
[1]void setNumColumns ( int numColumns )
[2]void setNumColumns ( int numColumns, qreal alignmentWidth )
*/

HB_FUNC_STATIC( QTEXTLINE_SETNUMCOLUMNS )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTLINE_SETNUMCOLUMNS1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTLINE_SETNUMCOLUMNS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=setNumColumns

$prototypeV2=void setPosition( const QPointF & pos )

$prototypeV2=int textLength() const

$prototypeV2=int textStart() const

$prototypeV2=qreal width() const

$prototypeV2=qreal x() const

$prototypeV2=int xToCursor( qreal x, QTextLine::CursorPosition cpos = QTextLine::CursorBetweenCharacters ) const

$prototypeV2=qreal y() const

$extraMethods

#pragma ENDDUMP
