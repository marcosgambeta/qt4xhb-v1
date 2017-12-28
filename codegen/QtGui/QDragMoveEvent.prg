$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QDragMoveEvent INHERIT QDropEvent

   METHOD new
   METHOD delete
   METHOD accept1
   METHOD accept2
   METHOD accept
   METHOD answerRect
   METHOD ignore1
   METHOD ignore2
   METHOD ignore

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDragMoveEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QDragMoveEvent ( const QPoint & pos, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers, Type type = DragMove )
HB_FUNC_STATIC( QDRAGMOVEEVENT_NEW )
{
  int par2 = hb_parni(2);
  const QMimeData * par3 = (const QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  int par6 = ISNIL(6)? (int) QDragMoveEvent::DragMove : hb_parni(6);
  QDragMoveEvent * o = new QDragMoveEvent ( *PQPOINT(1), (Qt::DropActions) par2, par3, (Qt::MouseButtons) par4, (Qt::KeyboardModifiers) par5, (QDragMoveEvent::Type) par6 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

$prototype=void accept ( const QRect & rectangle )
$method=|void|accept,accept1|const QRect &

$prototype=void accept ()
$method=|void|accept,accept2|

//[1]void accept ( const QRect & rectangle )
//[2]void accept ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_ACCEPT )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_ACCEPT1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_ACCEPT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QRect answerRect () const
$method=|QRect|answerRect|

$prototype=void ignore ( const QRect & rectangle )
$method=|void|ignore,ignore1|const QRect &

$prototype=void ignore ()
$method=|void|ignore,ignore2|

//[1]void ignore ( const QRect & rectangle )
//[2]void ignore ()

HB_FUNC_STATIC( QDRAGMOVEEVENT_IGNORE )
{
  if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_IGNORE1 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDRAGMOVEEVENT_IGNORE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

#pragma ENDDUMP
