/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMetaEnum>

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
QMetaEnum()
*/
HB_FUNC( QMETAENUM_NEW )
{
  QMetaEnum * o = NULL;
  o = new QMetaEnum (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMetaEnum *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QMETAENUM_DELETE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
const char *name() const
*/
HB_FUNC( QMETAENUM_NAME )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->name (  );
    hb_retc( str1 );
  }
}


/*
bool isFlag() const
*/
HB_FUNC( QMETAENUM_ISFLAG )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFlag (  );
    hb_retl( b );
  }
}


/*
int keyCount() const
*/
HB_FUNC( QMETAENUM_KEYCOUNT )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->keyCount (  );
    hb_retni( i );
  }
}


/*
const char *key(int index) const
*/
HB_FUNC( QMETAENUM_KEY )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const char * str1 = obj->key ( par1 );
    hb_retc( str1 );
  }
}


/*
int value(int index) const
*/
HB_FUNC( QMETAENUM_VALUE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int i = obj->value ( par1 );
    hb_retni( i );
  }
}


/*
const char *scope() const
*/
HB_FUNC( QMETAENUM_SCOPE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->scope (  );
    hb_retc( str1 );
  }
}


/*
int keyToValue(const char *key) const
*/
HB_FUNC( QMETAENUM_KEYTOVALUE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->keyToValue (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
const char* valueToKey(int value) const
*/
HB_FUNC( QMETAENUM_VALUETOKEY )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    const char * str1 = obj->valueToKey ( par1 );
    hb_retc( str1 );
  }
}


/*
int keysToValue(const char * keys) const
*/
HB_FUNC( QMETAENUM_KEYSTOVALUE )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * par1 = hb_parc(1);
    int i = obj->keysToValue (  (const char *) par1 );
    hb_retni( i );
  }
}


/*
QByteArray valueToKeys(int value) const
*/
HB_FUNC( QMETAENUM_VALUETOKEYS )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QByteArray * ptr = new QByteArray( obj->valueToKeys ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC( QMETAENUM_ENCLOSINGMETAOBJECT )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );  }
}


/*
bool isValid() const
*/
HB_FUNC( QMETAENUM_ISVALID )
{
  QMetaEnum * obj = (QMetaEnum *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}




