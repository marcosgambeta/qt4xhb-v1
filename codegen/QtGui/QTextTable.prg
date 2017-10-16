$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTTABLECELL
REQUEST QTEXTTABLEFORMAT
REQUEST QTEXTCURSOR
#endif

CLASS QTextTable INHERIT QTextFrame

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

$destructor

#pragma BEGINDUMP

#include <QTextTable>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextCursor>

$deleteMethod

/*
void appendColumns ( int count )
*/
$method=|void|appendColumns|int

/*
void appendRows ( int count )
*/
$method=|void|appendRows|int

/*
QTextTableCell cellAt ( int row, int column ) const
*/
$method=|QTextTableCell|cellAt,cellAt1|int,int

/*
QTextTableCell cellAt ( int position ) const
*/
$method=|QTextTableCell|cellAt,cellAt2|int

/*
QTextTableCell cellAt ( const QTextCursor & cursor ) const
*/
$method=|QTextTableCell|cellAt,cellAt3|const QTextCursor &

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
$method=|int|columns|

/*
QTextTableFormat format () const
*/
$method=|QTextTableFormat|format|

/*
void insertColumns ( int index, int columns )
*/
$method=|void|insertColumns|int,int

/*
void insertRows ( int index, int rows )
*/
$method=|void|insertRows|int,int

/*
void mergeCells ( int row, int column, int numRows, int numCols )
*/
$method=|void|mergeCells,mergeCells1|int,int,int,int

/*
void mergeCells ( const QTextCursor & cursor )
*/
$method=|void|mergeCells,mergeCells2|const QTextCursor &

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
$method=|void|removeColumns|int,int

/*
void removeRows ( int index, int rows )
*/
$method=|void|removeRows|int,int

/*
void resize ( int rows, int columns )
*/
$method=|void|resize|int,int

/*
QTextCursor rowEnd ( const QTextCursor & cursor ) const
*/
$method=|QTextCursor|rowEnd|const QTextCursor &

/*
QTextCursor rowStart ( const QTextCursor & cursor ) const
*/
$method=|QTextCursor|rowStart|const QTextCursor &

/*
int rows () const
*/
$method=|int|rows|

/*
void setFormat ( const QTextTableFormat & format )
*/
$method=|void|setFormat|const QTextTableFormat &

/*
void splitCell ( int row, int column, int numRows, int numCols )
*/
$method=|void|splitCell|int,int,int,int

#pragma ENDDUMP
