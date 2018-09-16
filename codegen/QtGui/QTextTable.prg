%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QTextFrame

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QTextCursor>

$deleteMethod

$prototype=void appendColumns ( int count )
$method=|void|appendColumns|int

$prototype=void appendRows ( int count )
$method=|void|appendRows|int

$prototype=QTextTableCell cellAt ( int row, int column ) const
$internalMethod=|QTextTableCell|cellAt,cellAt1|int,int

$prototype=QTextTableCell cellAt ( int position ) const
$internalMethod=|QTextTableCell|cellAt,cellAt2|int

$prototype=QTextTableCell cellAt ( const QTextCursor & cursor ) const
$internalMethod=|QTextTableCell|cellAt,cellAt3|const QTextCursor &

//[1]QTextTableCell cellAt ( int row, int column ) const
//[2]QTextTableCell cellAt ( int position ) const
//[3]QTextTableCell cellAt ( const QTextCursor & cursor ) const

HB_FUNC_STATIC( QTEXTTABLE_CELLAT )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QTextTable_cellAt1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QTextTable_cellAt2();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextTable_cellAt3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=cellAt

$prototype=int columns () const
$method=|int|columns|

$prototype=QTextTableFormat format () const
$method=|QTextTableFormat|format|

$prototype=void insertColumns ( int index, int columns )
$method=|void|insertColumns|int,int

$prototype=void insertRows ( int index, int rows )
$method=|void|insertRows|int,int

$prototype=void mergeCells ( int row, int column, int numRows, int numCols )
$internalMethod=|void|mergeCells,mergeCells1|int,int,int,int

$prototype=void mergeCells ( const QTextCursor & cursor )
$internalMethod=|void|mergeCells,mergeCells2|const QTextCursor &

//[1]void mergeCells ( int row, int column, int numRows, int numCols )
//[2]void mergeCells ( const QTextCursor & cursor )

HB_FUNC_STATIC( QTEXTTABLE_MERGECELLS )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    QTextTable_mergeCells1();
  }
  else if( ISNUMPAR(1) && ISQTEXTCURSOR(1) )
  {
    QTextTable_mergeCells2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=mergeCells

$prototype=void removeColumns ( int index, int columns )
$method=|void|removeColumns|int,int

$prototype=void removeRows ( int index, int rows )
$method=|void|removeRows|int,int

$prototype=void resize ( int rows, int columns )
$method=|void|resize|int,int

$prototype=QTextCursor rowEnd ( const QTextCursor & cursor ) const
$method=|QTextCursor|rowEnd|const QTextCursor &

$prototype=QTextCursor rowStart ( const QTextCursor & cursor ) const
$method=|QTextCursor|rowStart|const QTextCursor &

$prototype=int rows () const
$method=|int|rows|

$prototype=void setFormat ( const QTextTableFormat & format )
$method=|void|setFormat|const QTextTableFormat &

$prototype=void splitCell ( int row, int column, int numRows, int numCols )
$method=|void|splitCell|int,int,int,int

#pragma ENDDUMP
