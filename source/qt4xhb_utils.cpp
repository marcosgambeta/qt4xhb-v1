/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"

#include <QObject>
#include <QWidget>
#include <QStringList>

void _qt4xhb_createReturnClass ( void * ptr, const char * classname )
{
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
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
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
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
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
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
  PHB_DYNS pDynSym = hb_dynsymFindName( classname );

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
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
  cria um objeto (QObject) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void _qt4xhb_createReturnQObjectClass ( QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }
  else
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QObject *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

/*
  cria um objeto (QObject) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void _qt4xhb_createReturnQObjectClass ( const QObject * ptr, const char * classname )
{
  PHB_DYNS pDynSym;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }
  else
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QObject *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

/*
  cria um objeto (QWidget) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void _qt4xhb_createReturnQWidgetClass ( QWidget * ptr, const char * classname )
{
  PHB_DYNS pDynSym;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }
  else
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QWidget *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
  }
}

/*
  cria um objeto (QWidget) da classe correspondente ou 'classname' para objetos nulos, com o ponteiro 'ptr'
*/
void _qt4xhb_createReturnQWidgetClass ( const QWidget * ptr, const char * classname )
{
  PHB_DYNS pDynSym;

  if( ptr )
  {
    pDynSym = hb_dynsymFindName( (const char *) ptr->metaObject()->className() );
  }
  else
  {
    pDynSym = hb_dynsymFindName( classname );
  }

  if( pDynSym )
  {
    hb_vmPushDynSym( pDynSym );
    hb_vmPushNil();
    hb_vmDo( 0 );
    PHB_ITEM pObject = hb_itemNew( NULL );
    hb_itemCopy( pObject, hb_stackReturnItem() );
    PHB_ITEM pItem = hb_itemNew( NULL );
    hb_itemPutPtr( pItem, (QWidget *) ptr );
    hb_objSendMsg( pObject, "_POINTER", 1, pItem );
    hb_itemReturn( pObject );
    hb_itemRelease( pObject );
    hb_itemRelease( pItem );
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

/*
  converte um objeto QStringList (QList<QString>) em uma array do [x]Harbour
*/
void _qt4xhb_convert_qstringlist_to_array ( const QStringList list )
{
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    PHB_ITEM pItem = hb_itemPutC( NULL, QSTRINGTOSTRING( list[i] ) );
    hb_arrayAddForward( pArray, pItem );
    hb_itemRelease(pItem);
  }
  hb_itemReturnRelease(pArray);
}

/*
  obtém e retorna o valor da propriedade POINTER de um objeto [x]Harbour (tipo O)
*/
void * _qt4xhb_itemGetPtr( int numpar )
{
  return ( (void *) hb_itemGetPtr( hb_objSendMsg( hb_param( numpar, HB_IT_OBJECT ), "POINTER", 0 ) ) );
}

/*
  obtém e retorna o valor da propriedade POINTER do objeto hb_stackSelfItem()
*/
void * _qt4xhb_itemGetPtrStackSelfItem ()
{
  return ( (void *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) ) );
}
