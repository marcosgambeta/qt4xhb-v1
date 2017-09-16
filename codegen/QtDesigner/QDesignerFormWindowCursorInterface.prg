$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
REQUEST QDESIGNERFORMWINDOWINTERFACE
#endif

CLASS QDesignerFormWindowCursorInterface

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD current
   METHOD formWindow
   METHOD hasSelection
   METHOD isWidgetSelected
   METHOD movePosition
   METHOD position
   METHOD selectedWidget
   METHOD selectedWidgetCount
   METHOD setPosition
   METHOD widget
   METHOD widgetCount

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerFormWindowCursorInterface>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual QWidget * current () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_CURRENT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->current ();
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual QDesignerFormWindowInterface * formWindow () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_FORMWINDOW )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDesignerFormWindowInterface * ptr = obj->formWindow ();
    _qt4xhb_createReturnClass ( ptr, "QDESIGNERFORMWINDOWINTERFACE" );
  }
}


/*
virtual bool hasSelection () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_HASSELECTION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasSelection () );
  }
}


/*
bool isWidgetSelected ( QWidget * widget ) const
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_ISWIDGETSELECTED )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isWidgetSelected ( PQWIDGET(1) ) );
  }
}


/*
virtual bool movePosition ( MoveOperation operation, MoveMode mode = MoveAnchor ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_MOVEPOSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->movePosition ( (QDesignerFormWindowCursorInterface::MoveOperation) hb_parni(1), ISNIL(2)? QDesignerFormWindowCursorInterface::MoveAnchor : (QDesignerFormWindowCursorInterface::MoveMode) hb_parni(2) ) );
  }
}


/*
virtual int position () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_POSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->position () );
  }
}



/*
virtual QWidget * selectedWidget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELECTEDWIDGET )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->selectedWidget ( PINT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual int selectedWidgetCount () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SELECTEDWIDGETCOUNT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->selectedWidgetCount () );
  }
}


/*
virtual void setPosition ( int position, MoveMode mode = MoveAnchor ) = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_SETPOSITION )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setPosition ( PINT(1), ISNIL(2)? QDesignerFormWindowCursorInterface::MoveAnchor : (QDesignerFormWindowCursorInterface::MoveMode) hb_parni(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}




/*
virtual QWidget * widget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_WIDGET )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ( PINT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}


/*
virtual int widgetCount () const = 0
*/
HB_FUNC_STATIC( QDESIGNERFORMWINDOWCURSORINTERFACE_WIDGETCOUNT )
{
  QDesignerFormWindowCursorInterface * obj = (QDesignerFormWindowCursorInterface *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->widgetCount () );
  }
}

$extraMethods

#pragma ENDDUMP
