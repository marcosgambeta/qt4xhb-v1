$header

#include "hbclass.ch"

CLASS QDragEnterEvent INHERIT QDragMoveEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDragEnterEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDragEnterEvent ( const QPoint & point, Qt::DropActions actions, const QMimeData * data, Qt::MouseButtons buttons, Qt::KeyboardModifiers modifiers )
*/
HB_FUNC_STATIC( QDRAGENTEREVENT_NEW )
{
  int par2 = hb_parni(2);
  const QMimeData * par3 = (const QMimeData *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par4 = hb_parni(4);
  int par5 = hb_parni(5);
  QDragEnterEvent * o = new QDragEnterEvent ( *PQPOINT(1), (Qt::DropActions) par2, par3, (Qt::MouseButtons) par4, (Qt::KeyboardModifiers) par5 );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

#pragma ENDDUMP
