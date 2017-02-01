/*

  Qt4xHb - biblioteca de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbapi.h"
#include "hbapiitm.h"
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
#include <QObject>

void _qt4xhb_createReturnClass ( void * ptr, const char * classname )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( classname );
  #else
  pDynSym = hb_dynsymFindName( classname );
  #endif
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
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

void _qt4xhb_createReturnClass ( const void * ptr, const char * classname )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( classname );
  #else
  pDynSym = hb_dynsymFindName( classname );
  #endif
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
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

void _qt4xhb_createReturnClass ( void * ptr, const char * classname, bool destroy )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( classname );
  #else
  pDynSym = hb_dynsymFindName( classname );
  #endif
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
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );

    PHB_ITEM pDestroy = hb_itemNew( NULL );
    hb_itemPutL( pDestroy, destroy );
    hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
    hb_itemRelease( pDestroy );

    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
  }
}

void _qt4xhb_createReturnClass ( const void * ptr, const char * classname, bool destroy )
{
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( classname );
  #else
  pDynSym = hb_dynsymFindName( classname );
  #endif
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
    hb_itemPutPtr( pItem, (void *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemRelease( pItem );

    PHB_ITEM pDestroy = hb_itemNew( NULL );
    hb_itemPutL( pDestroy, destroy );
    hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
    hb_itemRelease( pDestroy );

    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
  }
}

/*
  verifica se o parâmetro <iPar> é do tipo <iClsId>
  retorno: true ou false
*/

bool _qt4xhb_checkclsid ( int iPar, int iClsId )
{
  if( ISOBJECT(iPar) )
  {
    return ( iClsId == hb_itemGetNI( hb_objSendMsg( hb_param(iPar, HB_IT_OBJECT ), "CLASS_ID", 0 ) ) );
  }
  else
  {
    return false;
  }
}

/*
  verifica se o parâmetro <iPar> herda da classe <classname>
  retorno: true ou false
*/

bool _qt4xhb_inherits ( int iPar, const char * classname )
{
  if( ISOBJECT(iPar) )
  {
    if( hb_itemGetNI( hb_objSendMsg( hb_param(iPar, HB_IT_OBJECT ), "CLASS_FLAGS", 0 ) ) != 0 )
    {
      QObject * obj = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(iPar, HB_IT_OBJECT ), "POINTER", 0 ) );
      if( obj )
      {
        return obj->inherits(classname);
      }
      else
      {
        return false;
      }
    }
    else
    {
      return false;
    }
  }
  else
  {
    return false;
  }
}
