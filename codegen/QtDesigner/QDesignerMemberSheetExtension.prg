$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QDesignerMemberSheetExtension

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD count
   METHOD declaredInClass
   METHOD indexOf
   METHOD inheritedFromWidget
   METHOD isSignal
   METHOD isSlot
   METHOD isVisible
   METHOD memberGroup
   METHOD memberName
   METHOD parameterNames
   METHOD parameterTypes
   METHOD setMemberGroup
   METHOD setVisible
   METHOD signature

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDesignerMemberSheetExtension>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$deleteMethod

/*
virtual int count () const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_COUNT )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->count () );
  }
}

/*
virtual QString declaredInClass ( int index ) const = 0
*/
$virtualMethod=|QString|declaredInClass|int

/*
virtual int indexOf ( const QString & name ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_INDEXOF )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->indexOf ( PQSTRING(1) ) );
  }
}


/*
virtual bool inheritedFromWidget ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_INHERITEDFROMWIDGET )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->inheritedFromWidget ( PINT(1) ) );
  }
}


/*
virtual bool isSignal ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_ISSIGNAL )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSignal ( PINT(1) ) );
  }
}


/*
virtual bool isSlot ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_ISSLOT )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isSlot ( PINT(1) ) );
  }
}


/*
virtual bool isVisible ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_ISVISIBLE )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isVisible ( PINT(1) ) );
  }
}

/*
virtual QString memberGroup ( int index ) const = 0
*/
$virtualMethod=|QString|memberGroup|int

/*
virtual QString memberName ( int index ) const = 0
*/
$virtualMethod=|QString|memberName|int

/*
virtual QList<QByteArray> parameterNames ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_PARAMETERNAMES )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->parameterNames ( PINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual QList<QByteArray> parameterTypes ( int index ) const = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_PARAMETERTYPES )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->parameterTypes ( PINT(1) );
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QBYTEARRAY" );
    #else
    pDynSym = hb_dynsymFindName( "QBYTEARRAY" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QByteArray *) new QByteArray ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
virtual void setMemberGroup ( int index, const QString & group ) = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_SETMEMBERGROUP )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMemberGroup ( PINT(1), PQSTRING(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void setVisible ( int index, bool visible ) = 0
*/
HB_FUNC_STATIC( QDESIGNERMEMBERSHEETEXTENSION_SETVISIBLE )
{
  QDesignerMemberSheetExtension * obj = (QDesignerMemberSheetExtension *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setVisible ( PINT(1), PBOOL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QString signature ( int index ) const = 0
*/
$virtualMethod=|QString|signature|int

$extraMethods

#pragma ENDDUMP
