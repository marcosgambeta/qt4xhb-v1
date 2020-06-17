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

#include <QtGui/QTextCursor>

$prototype=QTextTableCell ()
$internalConstructor=|new1|

$prototype=QTextTableCell ( const QTextTableCell & other )
$internalConstructor=|new2|const QTextTableCell &

/*
[1]QTextTableCell ()
[2]QTextTableCell ( const QTextTableCell & other )
*/

HB_FUNC_STATIC( QTEXTTABLECELL_NEW )
{
  if( ISNUMPAR(0) )
  {
    QTextTableCell_new1();
  }
  else if( ISNUMPAR(1) && ISQTEXTTABLECELL(1) )
  {
    QTextTableCell_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=int column() const

$prototypeV2=int columnSpan() const

$prototypeV2=QTextCursor firstCursorPosition() const

$prototypeV2=QTextCharFormat format() const

$prototypeV2=bool isValid() const

$prototypeV2=QTextCursor lastCursorPosition() const

$prototypeV2=int row() const

$prototypeV2=int rowSpan() const

$prototype=void setFormat ( const QTextCharFormat & format )
$method=|void|setFormat|const QTextCharFormat &

$prototypeV2=int tableCellFormatIndex() const

$extraMethods

#pragma ENDDUMP
