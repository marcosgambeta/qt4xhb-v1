$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBITMAP
REQUEST QPOINT
REQUEST QPIXMAP
#endif

CLASS QCursor

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD bitmap
   METHOD hotSpot
   METHOD mask
   METHOD pixmap
   METHOD setShape
   METHOD shape
   METHOD pos
   METHOD setPos1
   METHOD setPos2
   METHOD setPos

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QCursor>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QPixmap>

/*
QCursor ()
*/
HB_FUNC_STATIC( QCURSOR_NEW1 )
{
  QCursor * o = new QCursor ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QCursor ( Qt::CursorShape shape )
*/
HB_FUNC_STATIC( QCURSOR_NEW2 )
{
  QCursor * o = new QCursor ( (Qt::CursorShape) hb_parni(1));
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
*/
HB_FUNC_STATIC( QCURSOR_NEW3 )
{
  QCursor * o = new QCursor ( *PQBITMAP(1), *PQBITMAP(2), OPINT(3,-1), OPINT(4,-1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
*/
HB_FUNC_STATIC( QCURSOR_NEW4 )
{
  QCursor * o = new QCursor ( *PQPIXMAP(1), OPINT(2,-1), OPINT(3,-1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QCursor ( const QCursor & c )
*/
HB_FUNC_STATIC( QCURSOR_NEW5 )
{
  QCursor * o = new QCursor ( *PQCURSOR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QCursor ()
//[2]QCursor ( Qt::CursorShape shape )
//[3]QCursor ( const QBitmap & bitmap, const QBitmap & mask, int hotX = -1, int hotY = -1 )
//[4]QCursor ( const QPixmap & pixmap, int hotX = -1, int hotY = -1 )
//[5]QCursor ( const QCursor & c )
//[6]QCursor ( HCURSOR cursor )
//[7]QCursor ( Qt::HANDLE handle )

HB_FUNC_STATIC( QCURSOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW2 );
  }
  else if( ISBETWEEN(2,4) && ISQBITMAP(1) && ISQBITMAP(2) && (ISNUM(3)||ISNIL(3)) && (ISNUM(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW3 );
  }
  else if( ISBETWEEN(1,3) && ISQPIXMAP(1) && (ISNUM(2)||ISNIL(2)) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQCURSOR(1) )
  {
    HB_FUNC_EXEC( QCURSOR_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QBitmap * bitmap () const
*/
$method=|const QBitmap *|bitmap|

/*
QPoint hotSpot () const
*/
$method=|QPoint|hotSpot|

/*
const QBitmap * mask () const
*/
$method=|const QBitmap *|mask|

/*
QPixmap pixmap () const
*/
$method=|QPixmap|pixmap|

/*
void setShape ( Qt::CursorShape shape )
*/
$method=|void|setShape|Qt::CursorShape

/*
Qt::CursorShape shape () const
*/
$method=|Qt::CursorShape|shape|

/*
static QPoint pos ()
*/
$staticMethod=|QPoint|pos|

/*
static void setPos ( int x, int y )
*/
$staticMethod=|void|setPos,setPos1|int,int

/*
static void setPos ( const QPoint & p )
*/
$staticMethod=|void|setPos,setPos2|const QPoint &

//[1]void setPos ( int x, int y )
//[2]void setPos ( const QPoint & p )

HB_FUNC_STATIC( QCURSOR_SETPOS )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QCURSOR_SETPOS1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QCURSOR_SETPOS2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
