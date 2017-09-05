$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QMETAOBJECT
#endif

CLASS QMetaMethod

   DATA pointer
   DATA self_destruction INIT .F.

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

$destructor

#pragma BEGINDUMP

#include <QMetaMethod>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMetaMethod()
*/
HB_FUNC_STATIC( QMETAMETHOD_NEW )
{
  QMetaMethod * o = new QMetaMethod ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
const char *signature() const
*/
HB_FUNC_STATIC( QMETAMETHOD_SIGNATURE )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->signature ();
    hb_retc( str1 );
  }
}


/*
const char *typeName() const
*/
HB_FUNC_STATIC( QMETAMETHOD_TYPENAME )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->typeName ();
    hb_retc( str1 );
  }
}


/*
QList<QByteArray> parameterTypes() const
*/
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERTYPES )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->parameterTypes ();
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
HB_FUNC_STATIC( QMETAMETHOD_PARAMETERNAMES )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QByteArray> list = obj->parameterNames ();
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
HB_FUNC_STATIC( QMETAMETHOD_TAG )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->tag ();
    hb_retc( str1 );
  }
}


/*
Access access() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ACCESS )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->access () );
  }
}


/*
MethodType methodType() const
*/
HB_FUNC_STATIC( QMETAMETHOD_METHODTYPE )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->methodType () );
  }
}


/*
int attributes() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ATTRIBUTES )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->attributes () );
  }
}


/*
int methodIndex() const
*/
HB_FUNC_STATIC( QMETAMETHOD_METHODINDEX )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->methodIndex () );
  }
}


/*
int revision() const
*/
HB_FUNC_STATIC( QMETAMETHOD_REVISION )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->revision () );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAMETHOD_ENCLOSINGMETAOBJECT )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject ();
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
HB_FUNC_STATIC( QMETAMETHOD_INVOKE1 )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
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
    RBOOL( obj->invoke ( PQOBJECT(1), (Qt::ConnectionType) hb_parni(2), *par3, par4, par5, par6, par7, par8, par9, par10, par11, par12, par13 ) );
  }
}


/*
bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
HB_FUNC_STATIC( QMETAMETHOD_INVOKE2 )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
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
    RBOOL( obj->invoke ( PQOBJECT(1), *par2, par3, par4, par5, par6, par7, par8, par9, par10, par11, par12 ) );
  }
}


/*
bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
HB_FUNC_STATIC( QMETAMETHOD_INVOKE3 )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
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
    RBOOL( obj->invoke ( PQOBJECT(1), (Qt::ConnectionType) hb_parni(2), par3, par4, par5, par6, par7, par8, par9, par10, par11, par12 ) );
  }
}


/*
bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
*/
HB_FUNC_STATIC( QMETAMETHOD_INVOKE4 )
{
  QMetaMethod * obj = (QMetaMethod *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
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
    RBOOL( obj->invoke ( PQOBJECT(1), par2, par3, par4, par5, par6, par7, par8, par9, par10, par11 ) );
  }
}


//[1]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[2]bool invoke(QObject *object,QGenericReturnArgument returnValue,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[3]bool invoke(QObject *object,Qt::ConnectionType connectionType,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const
//[4]bool invoke(QObject *object,QGenericArgument val0 = QGenericArgument(0),QGenericArgument val1 = QGenericArgument(),QGenericArgument val2 = QGenericArgument(),QGenericArgument val3 = QGenericArgument(),QGenericArgument val4 = QGenericArgument(),QGenericArgument val5 = QGenericArgument(),QGenericArgument val6 = QGenericArgument(),QGenericArgument val7 = QGenericArgument(),QGenericArgument val8 = QGenericArgument(),QGenericArgument val9 = QGenericArgument()) const

HB_FUNC_STATIC( QMETAMETHOD_INVOKE )
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

$extraMethods

#pragma ENDDUMP
