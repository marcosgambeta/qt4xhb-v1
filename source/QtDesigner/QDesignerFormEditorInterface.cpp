/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDesignerFormEditorInterface>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDesignerFormEditorInterface ( QObject * parent = 0 )
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_NEW )
{
  QDesignerFormEditorInterface * o = NULL;
  QObject * par1 = ISNIL(1)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDesignerFormEditorInterface ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDesignerFormEditorInterface *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QDESIGNERFORMEDITORINTERFACE_DELETE )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QDesignerActionEditorInterface * actionEditor () const
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_ACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerActionEditorInterface * ptr = obj->actionEditor (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERACTIONEDITORINTERFACE" );  }
}


/*
QExtensionManager * extensionManager () const
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_EXTENSIONMANAGER )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QExtensionManager * ptr = obj->extensionManager (  );
    _qt4xhb_createReturnClass ( ptr, "QEXTENSIONMANAGER" );  }
}


/*
QDesignerFormWindowManagerInterface * formWindowManager () const
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_FORMWINDOWMANAGER )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormWindowManagerInterface * ptr = obj->formWindowManager (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWMANAGERINTERFACE" );  }
}


/*
QDesignerObjectInspectorInterface * objectInspector () const
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_OBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerObjectInspectorInterface * ptr = obj->objectInspector (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNEROBJECTINSPECTORINTERFACE" );  }
}


/*
QDesignerPropertyEditorInterface * propertyEditor () const
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_PROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerPropertyEditorInterface * ptr = obj->propertyEditor (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERPROPERTYEDITORINTERFACE" );  }
}


/*
void setActionEditor ( QDesignerActionEditorInterface * actionEditor )
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_SETACTIONEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerActionEditorInterface * par1 = (QDesignerActionEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setActionEditor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setObjectInspector ( QDesignerObjectInspectorInterface * objectInspector )
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_SETOBJECTINSPECTOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerObjectInspectorInterface * par1 = (QDesignerObjectInspectorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setObjectInspector ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPropertyEditor ( QDesignerPropertyEditorInterface * propertyEditor )
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_SETPROPERTYEDITOR )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerPropertyEditorInterface * par1 = (QDesignerPropertyEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPropertyEditor ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setWidgetBox ( QDesignerWidgetBoxInterface * widgetBox )
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_SETWIDGETBOX )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerWidgetBoxInterface * par1 = (QDesignerWidgetBoxInterface *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setWidgetBox ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QWidget * topLevel () const
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_TOPLEVEL )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->topLevel (  );
    _qt4xhb_createReturnClass ( ptr, "QWIDGET" );  }
}


/*
QDesignerWidgetBoxInterface * widgetBox () const
*/
HB_FUNC( QDESIGNERFORMEDITORINTERFACE_WIDGETBOX )
{
  QDesignerFormEditorInterface * obj = (QDesignerFormEditorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerWidgetBoxInterface * ptr = obj->widgetBox (  );
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERWIDGETBOXINTERFACE" );  }
}



