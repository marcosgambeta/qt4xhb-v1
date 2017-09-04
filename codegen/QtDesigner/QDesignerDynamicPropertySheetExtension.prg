$header

#include "hbclass.ch"


CLASS QDesignerDynamicPropertySheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD addDynamicProperty
   METHOD canAddDynamicProperty
   METHOD dynamicPropertiesAllowed
   METHOD isDynamicProperty
   METHOD removeDynamicProperty
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerDynamicPropertySheetExtension>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DELETE )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual int addDynamicProperty ( const QString & propertyName, const QVariant & value ) = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->addDynamicProperty ( PQSTRING(1), *PQVARIANT(2) ) );
  }
}


/*
virtual bool canAddDynamicProperty ( const QString & propertyName ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_CANADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canAddDynamicProperty ( PQSTRING(1) ) );
  }
}


/*
virtual bool dynamicPropertiesAllowed () const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DYNAMICPROPERTIESALLOWED )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->dynamicPropertiesAllowed () );
  }
}


/*
virtual bool isDynamicProperty ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ISDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isDynamicProperty ( PINT(1) ) );
  }
}


/*
virtual bool removeDynamicProperty ( int index ) = 0
*/
HB_FUNC_STATIC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_REMOVEDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->removeDynamicProperty ( PINT(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
