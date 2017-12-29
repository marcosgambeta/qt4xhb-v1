/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTTABLECELL
REQUEST QTEXTTABLEFORMAT
REQUEST QTEXTCURSOR
#endif

CLASS QTextTable INHERIT QTextFrame

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD appendColumns
   METHOD appendRows
   METHOD cellAt1
   METHOD cellAt2
   METHOD cellAt3
   METHOD cellAt
   METHOD columns
   METHOD format
   METHOD insertColumns
   METHOD insertRows
   METHOD mergeCells1
   METHOD mergeCells2
   METHOD mergeCells
   METHOD removeColumns
   METHOD removeRows
   METHOD resize
   METHOD rowEnd
   METHOD rowStart
   METHOD rows
   METHOD setFormat
   METHOD splitCell

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QTextTable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QTextTable>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextCursor>

HB_FUNC_STATIC( QTEXTTABLE_DELETE )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendColumns ( int count )
*/
HB_FUNC_STATIC( QTEXTTABLE_APPENDCOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->appendColumns ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void appendRows ( int count )
*/
HB_FUNC_STATIC( QTEXTTABLE_APPENDROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->appendRows ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTextTableCell cellAt ( int row, int column ) const
*/
HB_FUNC_STATIC( QTEXTTABLE_CELLAT1 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );
  }
}

/*
QTextTableCell cellAt ( int position ) const
*/
HB_FUNC_STATIC( QTEXTTABLE_CELLAT2 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );
  }
}

/*
QTextTableCell cellAt ( const QTextCursor & cursor ) const
*/
HB_FUNC_STATIC( QTEXTTABLE_CELLAT3 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( *PQTEXTCURSOR(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );
  }
}

//[1]QTextTableCell cellAt ( int row, int column ) const
//[2]QTextTableCell cellAt ( int position ) const
//[3]QTextTableCell cellAt ( const QTextCursor & cursor ) const

HB_FUNC_STATIC( QTEXTTABLE_CELLAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QTEXTTABLE_CELLAT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTEXTTABLE_CELLAT2 );
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTTABLE_CELLAT3 );
  }
}

/*
int columns () const
*/
HB_FUNC_STATIC( QTEXTTABLE_COLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->columns () );
  }
}

/*
QTextTableFormat format () const
*/
HB_FUNC_STATIC( QTEXTTABLE_FORMAT )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableFormat * ptr = new QTextTableFormat( obj->format () );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLEFORMAT" );
  }
}

/*
void insertColumns ( int index, int columns )
*/
HB_FUNC_STATIC( QTEXTTABLE_INSERTCOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertColumns ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void insertRows ( int index, int rows )
*/
HB_FUNC_STATIC( QTEXTTABLE_INSERTROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertRows ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void mergeCells ( int row, int column, int numRows, int numCols )
*/
HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS1 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->mergeCells ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void mergeCells ( const QTextCursor & cursor )
*/
HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS2 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->mergeCells ( *PQTEXTCURSOR(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void mergeCells ( int row, int column, int numRows, int numCols )
//[2]void mergeCells ( const QTextCursor & cursor )

HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTEXTTABLE_MERGECELLS1 );
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    HB_FUNC_EXEC( QTEXTTABLE_MERGECELLS2 );
  }
}

/*
void removeColumns ( int index, int columns )
*/
HB_FUNC_STATIC( QTEXTTABLE_REMOVECOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeColumns ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void removeRows ( int index, int rows )
*/
HB_FUNC_STATIC( QTEXTTABLE_REMOVEROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->removeRows ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void resize ( int rows, int columns )
*/
HB_FUNC_STATIC( QTEXTTABLE_RESIZE )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->resize ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QTextCursor rowEnd ( const QTextCursor & cursor ) const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWEND )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->rowEnd ( *PQTEXTCURSOR(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}

/*
QTextCursor rowStart ( const QTextCursor & cursor ) const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWSTART )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * ptr = new QTextCursor( obj->rowStart ( *PQTEXTCURSOR(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );
  }
}

/*
int rows () const
*/
HB_FUNC_STATIC( QTEXTTABLE_ROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rows () );
  }
}

/*
void setFormat ( const QTextTableFormat & format )
*/
HB_FUNC_STATIC( QTEXTTABLE_SETFORMAT )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setFormat ( *PQTEXTTABLEFORMAT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void splitCell ( int row, int column, int numRows, int numCols )
*/
HB_FUNC_STATIC( QTEXTTABLE_SPLITCELL )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->splitCell ( PINT(1), PINT(2), PINT(3), PINT(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
