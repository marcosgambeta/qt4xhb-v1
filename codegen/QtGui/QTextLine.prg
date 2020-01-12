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

$prototype=qreal ascent () const
$method=|qreal|ascent|

$prototype=qreal cursorToX ( int * cursorPos, Edge edge = Leading ) const
$method=|qreal|cursorToX,cursorToX1|int *,QTextLine::Edge=QTextLine::Leading

$prototype=qreal cursorToX ( int cursorPos, Edge edge = Leading ) const
$method=|qreal|cursorToX,cursorToX2|int,QTextLine::Edge=QTextLine::Leading

//[1]qreal cursorToX ( int * cursorPos, Edge edge = Leading ) const
//[2]qreal cursorToX ( int cursorPos, Edge edge = Leading ) const

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

$prototype=qreal descent () const
$method=|qreal|descent|

$prototype=qreal height () const
$method=|qreal|height|

$prototype=qreal horizontalAdvance () const
$method=|qreal|horizontalAdvance|

$prototype=bool isValid () const
$method=|bool|isValid|

$prototype=qreal leading () const
$method=|qreal|leading|

$prototype=bool leadingIncluded () const
$method=|bool|leadingIncluded|

$prototype=int lineNumber () const
$method=|int|lineNumber|

$prototype=QRectF naturalTextRect () const
$method=|QRectF|naturalTextRect|

$prototype=qreal naturalTextWidth () const
$method=|qreal|naturalTextWidth|

$prototype=QPointF position () const
$method=|QPointF|position|

$prototype=QRectF rect () const
$method=|QRectF|rect|

$prototype=void setLeadingIncluded ( bool included )
$method=|void|setLeadingIncluded|bool

$prototype=void setLineWidth ( qreal width )
$method=|void|setLineWidth|qreal

$prototype=void setNumColumns ( int numColumns )
$method=|void|setNumColumns,setNumColumns1|int

$prototype=void setNumColumns ( int numColumns, qreal alignmentWidth )
$method=|void|setNumColumns,setNumColumns2|int,qreal

//[1]void setNumColumns ( int numColumns )
//[2]void setNumColumns ( int numColumns, qreal alignmentWidth )

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

$prototype=void setPosition ( const QPointF & pos )
$method=|void|setPosition|const QPointF &

$prototype=int textLength () const
$method=|int|textLength|

$prototype=int textStart () const
$method=|int|textStart|

$prototype=qreal width () const
$method=|qreal|width|

$prototype=qreal x () const
$method=|qreal|x|

$prototype=int xToCursor ( qreal x, CursorPosition cpos = CursorBetweenCharacters ) const
$method=|int|xToCursor|qreal,QTextLine::CursorPosition=QTextLine::CursorBetweenCharacters

$prototype=qreal y () const
$method=|qreal|y|

$extraMethods

#pragma ENDDUMP
