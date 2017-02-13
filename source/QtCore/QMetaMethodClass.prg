/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QBYTEARRAY
REQUEST QMETAOBJECT

CLASS QMetaMethod

   DATA pointer
   DATA class_id INIT Class_Id_QMetaMethod
   DATA self_destruction INIT .f.

   METHOD new
   METHOD delete
   METHOD signature
   METHOD typeName
   METHOD parameterTypes
   METHOD parameterNames
   METHOD tag
   METHOD access
   METHOD methodType
   METHOD attributes
   METHOD methodIndex
   METHOD revision
   METHOD enclosingMetaObject
   METHOD invoke1
   METHOD invoke2
   METHOD invoke3
   METHOD invoke4
   METHOD invoke
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QMetaMethod
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QMetaMethod
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QMetaMethod
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QMetaMethod
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QMetaMethod
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QMetaMethod
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMetaMethod>

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
QMetaMethod()
*/
HB_FUNC( QMETAMETHOD_NEW )
{
  QMetaMethod * o = NULL;
  o = new QMetaMethod (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMetaMethod *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QMETAMETHOD_DELETE )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const char *signature() const
*/
HB_FUNC( QMETAMETHOD_SIGNATURE )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->signature (  );
    hb_retc( str1 );
  }
}


/*
const char *typeName() const
*/
HB_FUNC( QMETAMETHOD_TYPENAME )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->typeName (  );
    hb_retc( str1 );
  }
}


/*
QList<QByteArray> parameterTypes() const
*/
HB_FUNC( QMETAMETHOD_PARAMETERTYPES )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->parameterTypes (  );
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
QList<QByteArray> parameterNames() const
*/
HB_FUNC( QMETAMETHOD_PARAMETERNAMES )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->parameterNames (  );
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
const char *tag() const
*/
HB_FUNC( QMETAMETHOD_TAG )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->tag (  );
    hb_retc( str1 );
  }
}


/*
Access access() const
*/
HB_FUNC( QMETAMETHOD_ACCESS )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->access (  );
    hb_retni( i );
  }
}


/*
MethodType methodType() const
*/
HB_FUNC( QMETAMETHOD_METHODTYPE )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->methodType (  );
    hb_retni( i );
  }
}


/*
int attributes() const
*/
HB_FUNC( QMETAMETHOD_ATTRIBUTES )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->attributes (  );
    hb_retni( i );
  }
}


/*
int methodIndex() const
*/
HB_FUNC( QMETAMETHOD_METHODINDEX )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->methodIndex (  );
    hb_retni( i );
  }
}


/*
int revision() const
*/
HB_FUNC( QMETAMETHOD_REVISION )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->revision (  );
    hb_retni( i );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC( QMETAMETHOD_ENCLOSINGMETAOBJECT )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );  }
}


/*
bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
HB_FUNC( QMETAMETHOD_INVOKE1 )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QGenericReturnArgument * par3 = (QGenericReturnArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par4 = ISNIL(4)? QGenericArgument(0) : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par5 = ISNIL(5)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par6 = ISNIL(6)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par7 = ISNIL(7)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par8 = ISNIL(8)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par9 = ISNIL(9)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par10 = ISNIL(10)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(10, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par11 = ISNIL(11)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(11, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par12 = ISNIL(12)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(12, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par13 = ISNIL(13)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(13, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->invoke ( par1,  (Qt::ConnectionType) par2, *par3, par4, par5, par6, par7, par8, par9, par10, par11, par12, par13 );
    hb_retl( b );
  }
}


/*
bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
HB_FUNC( QMETAMETHOD_INVOKE2 )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericReturnArgument * par2 = (QGenericReturnArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par3 = ISNIL(3)? QGenericArgument(0) : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par4 = ISNIL(4)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par5 = ISNIL(5)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par6 = ISNIL(6)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par7 = ISNIL(7)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par8 = ISNIL(8)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par9 = ISNIL(9)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par10 = ISNIL(10)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(10, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par11 = ISNIL(11)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(11, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par12 = ISNIL(12)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(12, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->invoke ( par1, *par2, par3, par4, par5, par6, par7, par8, par9, par10, par11, par12 );
    hb_retl( b );
  }
}


/*
bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
HB_FUNC( QMETAMETHOD_INVOKE3 )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    QGenericArgument par3 = ISNIL(3)? QGenericArgument(0) : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par4 = ISNIL(4)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par5 = ISNIL(5)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par6 = ISNIL(6)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par7 = ISNIL(7)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par8 = ISNIL(8)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par9 = ISNIL(9)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par10 = ISNIL(10)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(10, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par11 = ISNIL(11)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(11, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par12 = ISNIL(12)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(12, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->invoke ( par1,  (Qt::ConnectionType) par2, par3, par4, par5, par6, par7, par8, par9, par10, par11, par12 );
    hb_retl( b );
  }
}


/*
bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
HB_FUNC( QMETAMETHOD_INVOKE4 )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par2 = ISNIL(2)? QGenericArgument(0) : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par3 = ISNIL(3)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par4 = ISNIL(4)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par5 = ISNIL(5)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par6 = ISNIL(6)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par7 = ISNIL(7)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par8 = ISNIL(8)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par9 = ISNIL(9)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par10 = ISNIL(10)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(10, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par11 = ISNIL(11)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(11, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->invoke ( par1, par2, par3, par4, par5, par6, par7, par8, par9, par10, par11 );
    hb_retl( b );
  }
}


//[1]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[2]bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[3]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[4]bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const

HB_FUNC( QMETAMETHOD_INVOKE )
{
  if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISNUM(1) && ISOBJECT(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    HB_FUNC_EXEC( QMETAMETHOD_INVOKE1 );
  }
  else if( ISBETWEEN(2,12) && ISQOBJECT(1) && ISOBJECT(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
  {
    HB_FUNC_EXEC( QMETAMETHOD_INVOKE2 );
  }
  else if( ISBETWEEN(2,12) && ISQOBJECT(1) && ISNUM(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
  {
    HB_FUNC_EXEC( QMETAMETHOD_INVOKE3 );
  }
  else if( ISBETWEEN(1,11) && ISQOBJECT(1) && (ISOBJECT(2)||ISNIL(2)) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) )
  {
    HB_FUNC_EXEC( QMETAMETHOD_INVOKE4 );
  }
}




#pragma ENDDUMP
