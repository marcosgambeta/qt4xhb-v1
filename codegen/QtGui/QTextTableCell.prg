$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTEXTCURSOR
REQUEST QTEXTCHARFORMAT
#endif

CLASS QTextTableCell

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD column
   METHOD columnSpan
   METHOD firstCursorPosition
   METHOD format
   METHOD isValid
   METHOD lastCursorPosition
   METHOD row
   METHOD rowSpan
   METHOD setFormat
   METHOD tableCellFormatIndex

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTextTableCell>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QTextCursor>

/*
QTextTableCell ()
*/
$internalConstructor=|new1|

/*
QTextTableCell ( const QTextTableCell & other )
*/
$internalConstructor=|new2|const QTextTableCell &

//[1]QTextTableCell ()
//[2]QTextTableCell ( const QTextTableCell & other )

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

$deleteMethod

/*
int column () const
*/
$method=|int|column|

/*
int columnSpan () const
*/
$method=|int|columnSpan|

/*
QTextCursor firstCursorPosition () const
*/
$method=|QTextCursor|firstCursorPosition|

/*
QTextCharFormat format () const
*/
$method=|QTextCharFormat|format|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QTextCursor lastCursorPosition () const
*/
$method=|QTextCursor|lastCursorPosition|

/*
int row () const
*/
$method=|int|row|

/*
int rowSpan () const
*/
$method=|int|rowSpan|

/*
void setFormat ( const QTextCharFormat & format )
*/
$method=|void|setFormat|const QTextCharFormat &

/*
int tableCellFormatIndex () const
*/
$method=|int|tableCellFormatIndex|

$extraMethods

#pragma ENDDUMP
