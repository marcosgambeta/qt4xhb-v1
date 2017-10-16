$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOINTF
#endif

CLASS QTextLine

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD ascent
   METHOD cursorToX1
   METHOD cursorToX2
   METHOD cursorToX
   METHOD descent
   METHOD height
   METHOD horizontalAdvance
   METHOD isValid
   METHOD leading
   METHOD leadingIncluded
   METHOD lineNumber
   METHOD naturalTextRect
   METHOD naturalTextWidth
   METHOD position
   METHOD rect
   METHOD setLeadingIncluded
   METHOD setLineWidth
   METHOD setNumColumns1
   METHOD setNumColumns2
   METHOD setNumColumns
   METHOD setPosition
   METHOD textLength
   METHOD textStart
   METHOD width
   METHOD x
   METHOD xToCursor
   METHOD y

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextLine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTextLine ()
*/
HB_FUNC_STATIC( QTEXTLINE_NEW )
{
  QTextLine * o = new QTextLine ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
qreal ascent () const
*/
$method=|qreal|ascent|

/*
qreal cursorToX ( int * cursorPos, Edge edge = Leading ) const
*/
$method=|qreal|cursorToX,cursorToX1|int *,QTextLine::Edge=QTextLine::Leading

/*
qreal cursorToX ( int cursorPos, Edge edge = Leading ) const
*/
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
}

/*
qreal descent () const
*/
$method=|qreal|descent|

/*
qreal height () const
*/
$method=|qreal|height|

/*
qreal horizontalAdvance () const
*/
$method=|qreal|horizontalAdvance|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
qreal leading () const
*/
$method=|qreal|leading|

/*
bool leadingIncluded () const
*/
$method=|bool|leadingIncluded|

/*
int lineNumber () const
*/
$method=|int|lineNumber|

/*
QRectF naturalTextRect () const
*/
HB_FUNC_STATIC( QTEXTLINE_NATURALTEXTRECT )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->naturalTextRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
qreal naturalTextWidth () const
*/
$method=|qreal|naturalTextWidth|

/*
QPointF position () const
*/
HB_FUNC_STATIC( QTEXTLINE_POSITION )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->position () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QRectF rect () const
*/
HB_FUNC_STATIC( QTEXTLINE_RECT )
{
  QTextLine * obj = (QTextLine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->rect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
void setLeadingIncluded ( bool included )
*/
$method=|void|setLeadingIncluded|bool

/*
void setLineWidth ( qreal width )
*/
$method=|void|setLineWidth|qreal

/*
void setNumColumns ( int numColumns )
*/
$method=|void|setNumColumns,setNumColumns1|int

/*
void setNumColumns ( int numColumns, qreal alignmentWidth )
*/
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
}

/*
void setPosition ( const QPointF & pos )
*/
$method=|void|setPosition|const QPointF &

/*
int textLength () const
*/
$method=|int|textLength|

/*
int textStart () const
*/
$method=|int|textStart|

/*
qreal width () const
*/
$method=|qreal|width|

/*
qreal x () const
*/
$method=|qreal|x|

/*
int xToCursor ( qreal x, CursorPosition cpos = CursorBetweenCharacters ) const
*/
$method=|int|xToCursor|qreal,QTextLine::CursorPosition=QTextLine::CursorBetweenCharacters

/*
qreal y () const
*/
$method=|qreal|y|

$extraMethods

#pragma ENDDUMP
