$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDESIGNERFORMEDITORINTERFACE
#endif

CLASS QDesignerActionEditorInterface INHERIT QWidget

   DATA self_destruction INIT .F.

   METHOD delete
   METHOD core
   METHOD manageAction
   METHOD setFormWindow
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDesignerActionEditorInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDesignerActionEditorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"


HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_DELETE )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_CORE )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormEditorInterface * ptr = obj->core ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMEDITORINTERFACE" );
  }
}


/*
virtual void manageAction ( QAction * action ) = 0
*/
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_MANAGEACTION )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->manageAction ( PQACTION(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setFormWindow ( QDesignerFormWindowInterface * formWindow ) = 0
*/
HB_FUNC_STATIC( QDESIGNERACTIONEDITORINTERFACE_SETFORMWINDOW )
{
  QDesignerActionEditorInterface * obj = (QDesignerActionEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormWindowInterface * par1 = (QDesignerFormWindowInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setFormWindow ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




#pragma ENDDUMP
