/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


CLASS QDesignerDynamicPropertySheetExtension

   DATA pointer
   DATA class_id INIT Class_Id_QDesignerDynamicPropertySheetExtension
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QDesignerDynamicPropertySheetExtension
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QDesignerDynamicPropertySheetExtension
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QDesignerDynamicPropertySheetExtension
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QDesignerDynamicPropertySheetExtension
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QDesignerDynamicPropertySheetExtension
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QDesignerDynamicPropertySheetExtension
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDesignerDynamicPropertySheetExtension>

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

HB_FUNC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DELETE )
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
HB_FUNC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->addDynamicProperty ( par1, *par2 );
    hb_retni( i );
  }
}


/*
virtual bool canAddDynamicProperty ( const QString & propertyName ) const = 0
*/
HB_FUNC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_CANADDDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool b = obj->canAddDynamicProperty ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool dynamicPropertiesAllowed () const = 0
*/
HB_FUNC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_DYNAMICPROPERTIESALLOWED )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->dynamicPropertiesAllowed (  );
    hb_retl( b );
  }
}


/*
virtual bool isDynamicProperty ( int index ) const = 0
*/
HB_FUNC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_ISDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->isDynamicProperty ( par1 );
    hb_retl( b );
  }
}


/*
virtual bool removeDynamicProperty ( int index ) = 0
*/
HB_FUNC( QDESIGNERDYNAMICPROPERTYSHEETEXTENSION_REMOVEDYNAMICPROPERTY )
{
  QDesignerDynamicPropertySheetExtension * obj = (QDesignerDynamicPropertySheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    bool b = obj->removeDynamicProperty ( par1 );
    hb_retl( b );
  }
}




#pragma ENDDUMP
