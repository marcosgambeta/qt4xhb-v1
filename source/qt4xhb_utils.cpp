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
#include <QStringList>

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

/*
*/
bool _qt4xhb_isClassDerivedFrom ( const char * className1, const char * className2 )
{
  HB_USHORT uiClass = hb_clsFindClass( className1, NULL );
  return hb_clsIsParent( uiClass, className2 );
}

/*
*/
bool _qt4xhb_isObjectDerivedFrom ( int numpar, const QString className )
{
  PHB_ITEM pItem = hb_param( numpar, HB_IT_OBJECT );

  if( pItem )
  {
    return hb_clsIsParent( hb_objGetClass( pItem ), (const char *) className.toUpper().toLatin1().data() );
  }
  else
  {
    return false;
  }
}

/*
  converte parametro 'n' de array (Harbour) para QStrinList (Qt)
*/
QStringList _qt4xhb_convert_array_parameter_to_qstringlist ( int numpar )
{
  QStringList list;

  PHB_ITEM pArray = hb_param(numpar, HB_IT_ARRAY);

  if( pArray )
  {
    int i;
    int nLen = hb_arrayLen(pArray);
    for (i=0; i<nLen; i++)
    {
      QString temp = hb_arrayGetCPtr(pArray, i+1);
      list << temp;
    }
  }

  return list;
}

/*
  armazena o ponteiro e a flag de destruição no objeto (função
  utilizada nos métodos construtores new)
*/
void _qt4xhb_storePointerAndFlag (void * pointer, bool flag)
{
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) pointer );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, flag );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}
