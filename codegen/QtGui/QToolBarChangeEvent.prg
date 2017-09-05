$header

#include "hbclass.ch"

CLASS QToolBarChangeEvent INHERIT QEvent

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD toggle

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QToolBarChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QToolBarChangeEvent(bool t)
*/
HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_NEW )
{
  QToolBarChangeEvent * o = new QToolBarChangeEvent ( PBOOL(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
bool toggle() const
*/
HB_FUNC_STATIC( QTOOLBARCHANGEEVENT_TOGGLE )
{
  QToolBarChangeEvent * obj = (QToolBarChangeEvent *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->toggle () );
  }
}

#pragma ENDDUMP
