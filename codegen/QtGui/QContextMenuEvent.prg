$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QContextMenuEvent INHERIT QInputEvent

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD globalPos
   METHOD globalX
   METHOD globalY
   METHOD pos
   METHOD reason
   METHOD x
   METHOD y

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QContextMenuEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW1 )
{
  int par4 = hb_parni(4);
  QContextMenuEvent * o = new QContextMenuEvent ( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2), *PQPOINT(3), (Qt::KeyboardModifiers) par4 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW2 )
{
  QContextMenuEvent * o = new QContextMenuEvent ( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2), *PQPOINT(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QContextMenuEvent ( Reason reason, const QPoint & pos )
*/
HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW3 )
{
  QContextMenuEvent * o = new QContextMenuEvent ( (QContextMenuEvent::Reason) hb_parni(1), *PQPOINT(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos, Qt::KeyboardModifiers modifiers )
//[2]QContextMenuEvent ( Reason reason, const QPoint & pos, const QPoint & globalPos )
//[3]QContextMenuEvent ( Reason reason, const QPoint & pos )

HB_FUNC_STATIC( QCONTEXTMENUEVENT_NEW )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISQPOINT(2) && ISQPOINT(3) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QCONTEXTMENUEVENT_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
const QPoint & globalPos () const
*/
$method=|const QPoint &|globalPos|

/*
int globalX () const
*/
$method=|int|globalX|

/*
int globalY () const
*/
$method=|int|globalY|

/*
const QPoint & pos () const
*/
$method=|const QPoint &|pos|

/*
Reason reason () const
*/
$method=|QContextMenuEvent::Reason|reason|

/*
int x () const
*/
$method=|int|x|

/*
int y () const
*/
$method=|int|y|

#pragma ENDDUMP
