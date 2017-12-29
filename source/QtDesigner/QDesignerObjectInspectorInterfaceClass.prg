/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerObjectInspectorInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD core
   METHOD setFormWindow

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerObjectInspectorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDesignerObjectInspectorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDesignerFormEditorInterface>

HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_DELETE )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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

/*
virtual QDesignerFormEditorInterface * core () const
*/
HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_CORE )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDesignerFormEditorInterface * ptr = obj->core ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
HB_FUNC_STATIC( QDESIGNEROBJECTINSPECTORINTERFACE_SETFORMWINDOW )
{
  QDesignerObjectInspectorInterface * obj = (QDesignerObjectInspectorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISQDESIGNERFORMWINDOWINTERFACE(1) )
    {
      obj->setFormWindow ( PQDESIGNERFORMWINDOWINTERFACE(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
