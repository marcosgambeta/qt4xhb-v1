/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"


CLASS QWindowsVistaStyle INHERIT QWindowsXPStyle

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QWindowsVistaStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QWindowsVistaStyle>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWindowsVistaStyle ()
*/
HB_FUNC_STATIC( QWINDOWSVISTASTYLE_NEW )
{
  QWindowsVistaStyle * o = NULL;
  o = new QWindowsVistaStyle ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QWINDOWSVISTASTYLE_DELETE )
{
  QWindowsVistaStyle * obj = (QWindowsVistaStyle *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
