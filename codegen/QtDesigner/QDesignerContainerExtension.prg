$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QDesignerContainerExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addWidget
   METHOD count
   METHOD currentIndex
   METHOD insertWidget
   METHOD remove
   METHOD setCurrentIndex
   METHOD widget
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerContainerExtension>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_DELETE )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual void addWidget ( QWidget * page ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_ADDWIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->addWidget ( PQWIDGET(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_COUNT )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( (int) obj->count () );
  }
}


/*
virtual int currentIndex () const = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_CURRENTINDEX )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( (int) obj->currentIndex () );
  }
}


/*
virtual void insertWidget ( int index, QWidget * page ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_INSERTWIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->insertWidget ( PINT(1), PQWIDGET(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void remove ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_REMOVE )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->remove ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setCurrentIndex ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_SETCURRENTINDEX )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setCurrentIndex ( PINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual QWidget * widget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERCONTAINEREXTENSION_WIDGET )
{
  QDesignerContainerExtension * obj = (QDesignerContainerExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QWidget * ptr = obj->widget ( PINT(1) );
    _qt4xhb_createReturnQWidgetClass ( ptr, "QWIDGET" );
  }
}

$extraMethods

#pragma ENDDUMP
