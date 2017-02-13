/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QMETACLASSINFO
REQUEST QMETAMETHOD
REQUEST QMETAENUM
REQUEST QOBJECT
REQUEST QMETAPROPERTY
REQUEST QMETAOBJECT
REQUEST QBYTEARRAY

CLASS QMetaObject

   DATA pointer
   DATA class_id INIT Class_Id_QMetaObject
   DATA self_destruction INIT .f.

   METHOD delete
   METHOD classInfo
   METHOD classInfoCount
   METHOD classInfoOffset
   METHOD className
   METHOD constructor
   METHOD constructorCount
   METHOD enumerator
   METHOD enumeratorCount
   METHOD enumeratorOffset
   METHOD indexOfClassInfo
   METHOD indexOfConstructor
   METHOD indexOfEnumerator
   METHOD indexOfMethod
   METHOD indexOfProperty
   METHOD indexOfSignal
   METHOD indexOfSlot
   METHOD method
   METHOD methodCount
   METHOD methodOffset
   METHOD newInstance
   METHOD property
   METHOD propertyCount
   METHOD propertyOffset
   METHOD superClass
   METHOD userProperty
   METHOD checkConnectArgs
   METHOD connectSlotsByName
   METHOD invokeMethod1
   METHOD invokeMethod2
   METHOD invokeMethod3
   METHOD invokeMethod4
   METHOD invokeMethod
   METHOD normalizedSignature
   METHOD normalizedType
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QMetaObject
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QMetaObject
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QMetaObject
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QMetaObject
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QMetaObject
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QMetaObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMetaObject>

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

#include <QMetaClassInfo>
#include <QMetaMethod>
#include <QMetaEnum>
#include <QMetaProperty>
#include <QByteArray>


HB_FUNC_STATIC( QMETAOBJECT_DELETE )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QMetaClassInfo classInfo ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSINFO )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QMetaClassInfo * ptr = new QMetaClassInfo( obj->classInfo ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMETACLASSINFO" );
  }
}


/*
int classInfoCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSINFOCOUNT )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->classInfoCount (  );
    hb_retni( i );
  }
}


/*
int classInfoOffset () const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSINFOOFFSET )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->classInfoOffset (  );
    hb_retni( i );
  }
}


/*
const char * className () const
*/
HB_FUNC_STATIC( QMETAOBJECT_CLASSNAME )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->className (  );
    hb_retc( str1 );
  }
}


/*
QMetaMethod constructor ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_CONSTRUCTOR )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QMetaMethod * ptr = new QMetaMethod( obj->constructor ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
int constructorCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_CONSTRUCTORCOUNT )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->constructorCount (  );
    hb_retni( i );
  }
}


/*
QMetaEnum enumerator ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_ENUMERATOR )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QMetaEnum * ptr = new QMetaEnum( obj->enumerator ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAENUM" );
  }
}


/*
int enumeratorCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_ENUMERATORCOUNT )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->enumeratorCount (  );
    hb_retni( i );
  }
}


/*
int enumeratorOffset () const
*/
HB_FUNC_STATIC( QMETAOBJECT_ENUMERATOROFFSET )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->enumeratorOffset (  );
    hb_retni( i );
  }
}


/*
int indexOfClassInfo ( const char * name ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFCLASSINFO )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->indexOfClassInfo (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
int indexOfConstructor ( const char * constructor ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFCONSTRUCTOR )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->indexOfConstructor (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
int indexOfEnumerator ( const char * name ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFENUMERATOR )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->indexOfEnumerator (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
int indexOfMethod ( const char * method ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFMETHOD )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->indexOfMethod (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
int indexOfProperty ( const char * name ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFPROPERTY )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->indexOfProperty (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
int indexOfSignal ( const char * signal ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFSIGNAL )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->indexOfSignal (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
int indexOfSlot ( const char * slot ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_INDEXOFSLOT )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->indexOfSlot (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
QMetaMethod method ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_METHOD )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QMetaMethod * ptr = new QMetaMethod( obj->method ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD" );
  }
}


/*
int methodCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_METHODCOUNT )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->methodCount (  );
    hb_retni( i );
  }
}


/*
int methodOffset () const
*/
HB_FUNC_STATIC( QMETAOBJECT_METHODOFFSET )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->methodOffset (  );
    hb_retni( i );
  }
}


/*
QObject * newInstance ( QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_NEWINSTANCE )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QGenericArgument par1 = ISNIL(1)? QGenericArgument(0) : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par2 = ISNIL(2)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par3 = ISNIL(3)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par4 = ISNIL(4)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par5 = ISNIL(5)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par6 = ISNIL(6)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par7 = ISNIL(7)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par8 = ISNIL(8)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par9 = ISNIL(9)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
    QGenericArgument par10 = ISNIL(10)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(10, HB_IT_OBJECT ), "POINTER", 0 ) );
    QObject * ptr = obj->newInstance ( par1, par2, par3, par4, par5, par6, par7, par8, par9, par10 );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QMetaProperty property ( int index ) const
*/
HB_FUNC_STATIC( QMETAOBJECT_PROPERTY )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QMetaProperty * ptr = new QMetaProperty( obj->property ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
  }
}


/*
int propertyCount () const
*/
HB_FUNC_STATIC( QMETAOBJECT_PROPERTYCOUNT )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->propertyCount (  );
    hb_retni( i );
  }
}


/*
int propertyOffset () const
*/
HB_FUNC_STATIC( QMETAOBJECT_PROPERTYOFFSET )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->propertyOffset (  );
    hb_retni( i );
  }
}


/*
const QMetaObject * superClass () const
*/
HB_FUNC_STATIC( QMETAOBJECT_SUPERCLASS )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->superClass (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
QMetaProperty userProperty () const
*/
HB_FUNC_STATIC( QMETAOBJECT_USERPROPERTY )
{
  QMetaObject * obj = (QMetaObject *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaProperty * ptr = new QMetaProperty( obj->userProperty (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAPROPERTY" );
  }
}



/*
bool checkConnectArgs ( const char * signal, const char * method )
*/
HB_FUNC_STATIC( QMETAOBJECT_CHECKCONNECTARGS )
{
  const char * par1 = hb_parc(1);
  const char * par2 = hb_parc(2);
  bool b = QMetaObject::checkConnectArgs (  (const char *) par1,  (const char *) par2 );
  hb_retl( b );
}


/*
void connectSlotsByName ( QObject * object )
*/
HB_FUNC_STATIC( QMETAOBJECT_CONNECTSLOTSBYNAME )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QMetaObject::connectSlotsByName ( par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD1 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par2 = hb_parc(2);
  int par3 = hb_parni(3);
  QGenericReturnArgument * par4 = (QGenericReturnArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par5 = ISNIL(5)? QGenericArgument(0) : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(5, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par6 = ISNIL(6)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(6, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par7 = ISNIL(7)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(7, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par8 = ISNIL(8)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(8, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par9 = ISNIL(9)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(9, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par10 = ISNIL(10)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(10, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par11 = ISNIL(11)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(11, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par12 = ISNIL(12)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(12, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par13 = ISNIL(13)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(13, HB_IT_OBJECT ), "POINTER", 0 ) );
  QGenericArgument par14 = ISNIL(14)? QGenericArgument() : *(QGenericArgument *) hb_itemGetPtr( hb_objSendMsg( hb_param(14, HB_IT_OBJECT ), "POINTER", 0 ) );
  bool b = QMetaObject::invokeMethod ( par1,  (const char *) par2,  (Qt::ConnectionType) par3, *par4, par5, par6, par7, par8, par9, par10, par11, par12, par13, par14 );
  hb_retl( b );
}


/*
bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD2 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par2 = hb_parc(2);
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
  bool b = QMetaObject::invokeMethod ( par1,  (const char *) par2, *par3, par4, par5, par6, par7, par8, par9, par10, par11, par12, par13 );
  hb_retl( b );
}


/*
bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD3 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par2 = hb_parc(2);
  int par3 = hb_parni(3);
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
  bool b = QMetaObject::invokeMethod ( par1,  (const char *) par2,  (Qt::ConnectionType) par3, par4, par5, par6, par7, par8, par9, par10, par11, par12, par13 );
  hb_retl( b );
}


/*
bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
*/
HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD4 )
{
  QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  const char * par2 = hb_parc(2);
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
  bool b = QMetaObject::invokeMethod ( par1,  (const char *) par2, par3, par4, par5, par6, par7, par8, par9, par10, par11, par12 );
  hb_retl( b );
}


//[1]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[2]bool invokeMethod ( QObject * obj, const char * member, QGenericReturnArgument ret, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[3]bool invokeMethod ( QObject * obj, const char * member, Qt::ConnectionType type, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )
//[4]bool invokeMethod ( QObject * obj, const char * member, QGenericArgument val0 = QGenericArgument( 0 ), QGenericArgument val1 = QGenericArgument(), QGenericArgument val2 = QGenericArgument(), QGenericArgument val3 = QGenericArgument(), QGenericArgument val4 = QGenericArgument(), QGenericArgument val5 = QGenericArgument(), QGenericArgument val6 = QGenericArgument(), QGenericArgument val7 = QGenericArgument(), QGenericArgument val8 = QGenericArgument(), QGenericArgument val9 = QGenericArgument() )

HB_FUNC_STATIC( QMETAOBJECT_INVOKEMETHOD )
{
  if( ISBETWEEN(4,14) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && ISOBJECT(4) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) && (ISOBJECT(14)||ISNIL(14)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD1 );
  }
  else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISOBJECT(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD2 );
  }
  else if( ISBETWEEN(3,13) && ISQOBJECT(1) && ISCHAR(2) && ISNUM(3) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) && (ISOBJECT(13)||ISNIL(13)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD3 );
  }
  else if( ISBETWEEN(3,12) && ISQOBJECT(1) && ISCHAR(2) && (ISOBJECT(3)||ISNIL(3)) && (ISOBJECT(4)||ISNIL(4)) && (ISOBJECT(5)||ISNIL(5)) && (ISOBJECT(6)||ISNIL(6)) && (ISOBJECT(7)||ISNIL(7)) && (ISOBJECT(8)||ISNIL(8)) && (ISOBJECT(9)||ISNIL(9)) && (ISOBJECT(10)||ISNIL(10)) && (ISOBJECT(11)||ISNIL(11)) && (ISOBJECT(12)||ISNIL(12)) )
  {
    HB_FUNC_EXEC( QMETAOBJECT_INVOKEMETHOD4 );
  }
}

/*
QByteArray normalizedSignature ( const char * method )
*/
HB_FUNC_STATIC( QMETAOBJECT_NORMALIZEDSIGNATURE )
{
  const char * par1 = hb_parc(1);
  QByteArray * ptr = new QByteArray( QMetaObject::normalizedSignature (  (const char *) par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}


/*
QByteArray normalizedType ( const char * type )
*/
HB_FUNC_STATIC( QMETAOBJECT_NORMALIZEDTYPE )
{
  const char * par1 = hb_parc(1);
  QByteArray * ptr = new QByteArray( QMetaObject::normalizedType (  (const char *) par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
}




#pragma ENDDUMP
