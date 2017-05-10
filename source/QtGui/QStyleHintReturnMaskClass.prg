/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QStyleHintReturnMask INHERIT QStyleHintReturn

   DATA class_id INIT Class_Id_QStyleHintReturnMask
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QStyleHintReturnMask
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QStyleHintReturnMask>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QStyleHintReturnMask ()
*/
HB_FUNC_STATIC( QSTYLEHINTRETURNMASK_NEW )
{
  QStyleHintReturnMask * o = NULL;
  o = new QStyleHintReturnMask (  );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QSTYLEHINTRETURNMASK_DELETE )
{
  QStyleHintReturnMask * obj = (QStyleHintReturnMask *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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






#pragma ENDDUMP
