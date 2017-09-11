$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
REQUEST QMETAOBJECT
#endif

CLASS QMetaEnum

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD name
   METHOD isFlag
   METHOD keyCount
   METHOD key
   METHOD value
   METHOD scope
   METHOD keyToValue
   METHOD valueToKey
   METHOD keysToValue
   METHOD valueToKeys
   METHOD enclosingMetaObject
   METHOD isValid

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QMetaEnum>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QMetaEnum()
*/
HB_FUNC_STATIC( QMETAENUM_NEW )
{
  QMetaEnum * o = new QMetaEnum ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
const char *name() const
*/
HB_FUNC_STATIC( QMETAENUM_NAME )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->name ();
    hb_retc( str1 );
  }
}


/*
bool isFlag() const
*/
HB_FUNC_STATIC( QMETAENUM_ISFLAG )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isFlag () );
  }
}


/*
int keyCount() const
*/
HB_FUNC_STATIC( QMETAENUM_KEYCOUNT )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->keyCount () );
  }
}


/*
const char *key(int index) const
*/
HB_FUNC_STATIC( QMETAENUM_KEY )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->key ( PINT(1) );
    hb_retc( str1 );
  }
}


/*
int value(int index) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->value ( PINT(1) ) );
  }
}


/*
const char *scope() const
*/
HB_FUNC_STATIC( QMETAENUM_SCOPE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->scope ();
    hb_retc( str1 );
  }
}


/*
int keyToValue(const char *key) const
*/
HB_FUNC_STATIC( QMETAENUM_KEYTOVALUE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->keyToValue ( (const char *) hb_parc(1) ) );
  }
}


/*
const char* valueToKey(int value) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUETOKEY )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->valueToKey ( PINT(1) );
    hb_retc( str1 );
  }
}


/*
int keysToValue(const char * keys) const
*/
HB_FUNC_STATIC( QMETAENUM_KEYSTOVALUE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->keysToValue ( (const char *) hb_parc(1) ) );
  }
}


/*
QByteArray valueToKeys(int value) const
*/
HB_FUNC_STATIC( QMETAENUM_VALUETOKEYS )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->valueToKeys ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC_STATIC( QMETAENUM_ENCLOSINGMETAOBJECT )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject ();
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );
  }
}


/*
bool isValid() const
*/
HB_FUNC_STATIC( QMETAENUM_ISVALID )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

$extraMethods

#pragma ENDDUMP
