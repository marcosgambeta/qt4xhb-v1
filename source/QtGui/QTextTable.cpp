/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTextTable>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QTextCursor>

HB_FUNC( QTEXTTABLE_DELETE )
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
HB_FUNC( QTEXTTABLE_APPENDCOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->appendColumns ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void appendRows ( int count )
*/
HB_FUNC( QTEXTTABLE_APPENDROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->appendRows ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextTableCell cellAt ( int row, int column ) const
*/
HB_FUNC( QTEXTTABLE_CELLAT1 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );  }
}


/*
QTextTableCell cellAt ( int position ) const
*/
HB_FUNC( QTEXTTABLE_CELLAT2 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );  }
}


/*
QTextTableCell cellAt ( const QTextCursor & cursor ) const
*/
HB_FUNC( QTEXTTABLE_CELLAT3 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextTableCell * ptr = new QTextTableCell( obj->cellAt ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLECELL" );  }
}


//[1]QTextTableCell cellAt ( int row, int column ) const
//[2]QTextTableCell cellAt ( int position ) const
//[3]QTextTableCell cellAt ( const QTextCursor & cursor ) const

HB_FUNC( QTEXTTABLE_CELLAT )
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
HB_FUNC( QTEXTTABLE_COLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->columns (  );
    hb_retni( i );
  }
}


/*
QTextTableFormat format () const
*/
HB_FUNC( QTEXTTABLE_FORMAT )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableFormat * ptr = new QTextTableFormat( obj->format (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTTABLEFORMAT" );  }
}


/*
void insertColumns ( int index, int columns )
*/
HB_FUNC( QTEXTTABLE_INSERTCOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->insertColumns ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void insertRows ( int index, int rows )
*/
HB_FUNC( QTEXTTABLE_INSERTROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->insertRows ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeCells ( int row, int column, int numRows, int numCols )
*/
HB_FUNC( QTEXTTABLE_MERGECELLS1 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->mergeCells ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void mergeCells ( const QTextCursor & cursor )
*/
HB_FUNC( QTEXTTABLE_MERGECELLS2 )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->mergeCells ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void mergeCells ( int row, int column, int numRows, int numCols )
//[2]void mergeCells ( const QTextCursor & cursor )

HB_FUNC( QTEXTTABLE_MERGECELLS )
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
HB_FUNC( QTEXTTABLE_REMOVECOLUMNS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->removeColumns ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void removeRows ( int index, int rows )
*/
HB_FUNC( QTEXTTABLE_REMOVEROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->removeRows ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void resize ( int rows, int columns )
*/
HB_FUNC( QTEXTTABLE_RESIZE )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    obj->resize ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTextCursor rowEnd ( const QTextCursor & cursor ) const
*/
HB_FUNC( QTEXTTABLE_ROWEND )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextCursor * ptr = new QTextCursor( obj->rowEnd ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );  }
}


/*
QTextCursor rowStart ( const QTextCursor & cursor ) const
*/
HB_FUNC( QTEXTTABLE_ROWSTART )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextCursor * par1 = (QTextCursor *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QTextCursor * ptr = new QTextCursor( obj->rowStart ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTEXTCURSOR", true );  }
}


/*
int rows () const
*/
HB_FUNC( QTEXTTABLE_ROWS )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->rows (  );
    hb_retni( i );
  }
}


/*
void setFormat ( const QTextTableFormat & format )
*/
HB_FUNC( QTEXTTABLE_SETFORMAT )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTextTableFormat * par1 = (QTextTableFormat *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFormat ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void splitCell ( int row, int column, int numRows, int numCols )
*/
HB_FUNC( QTEXTTABLE_SPLITCELL )
{
  QTextTable * obj = (QTextTable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3 = hb_parni(3);
    int par4 = hb_parni(4);
    obj->splitCell ( par1, par2, par3, par4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



