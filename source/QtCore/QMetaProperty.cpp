/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QMetaProperty>

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
QMetaProperty()
*/
HB_FUNC( QMETAPROPERTY_NEW )
{
  QMetaProperty * o = NULL;
  o = new QMetaProperty (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QMetaProperty *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC( QMETAPROPERTY_DELETE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
HB_FUNC( QMETAPROPERTY_NAME )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->name (  );
    hb_retc( str1 );
  }
}


/*
const char *typeName() const
*/
HB_FUNC( QMETAPROPERTY_TYPENAME )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->typeName (  );
    hb_retc( str1 );
  }
}


/*
QVariant::Type type() const
*/
HB_FUNC( QMETAPROPERTY_TYPE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}


/*
int userType() const
*/
HB_FUNC( QMETAPROPERTY_USERTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->userType (  );
    hb_retni( i );
  }
}


/*
int propertyIndex() const
*/
HB_FUNC( QMETAPROPERTY_PROPERTYINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->propertyIndex (  );
    hb_retni( i );
  }
}


/*
bool isReadable() const
*/
HB_FUNC( QMETAPROPERTY_ISREADABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isReadable (  );
    hb_retl( b );
  }
}


/*
bool isWritable() const
*/
HB_FUNC( QMETAPROPERTY_ISWRITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isWritable (  );
    hb_retl( b );
  }
}


/*
bool isResettable() const
*/
HB_FUNC( QMETAPROPERTY_ISRESETTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isResettable (  );
    hb_retl( b );
  }
}


/*
bool isDesignable(const QObject *obj = 0) const
*/
HB_FUNC( QMETAPROPERTY_ISDESIGNABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->isDesignable ( par1 );
    hb_retl( b );
  }
}


/*
bool isScriptable(const QObject *obj = 0) const
*/
HB_FUNC( QMETAPROPERTY_ISSCRIPTABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->isScriptable ( par1 );
    hb_retl( b );
  }
}


/*
bool isStored(const QObject *obj = 0) const
*/
HB_FUNC( QMETAPROPERTY_ISSTORED )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->isStored ( par1 );
    hb_retl( b );
  }
}


/*
bool isEditable(const QObject *obj = 0) const
*/
HB_FUNC( QMETAPROPERTY_ISEDITABLE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->isEditable ( par1 );
    hb_retl( b );
  }
}


/*
bool isUser(const QObject *obj = 0) const
*/
HB_FUNC( QMETAPROPERTY_ISUSER )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = ISNIL(1)? 0 : (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->isUser ( par1 );
    hb_retl( b );
  }
}


/*
bool isConstant() const
*/
HB_FUNC( QMETAPROPERTY_ISCONSTANT )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isConstant (  );
    hb_retl( b );
  }
}


/*
bool isFinal() const
*/
HB_FUNC( QMETAPROPERTY_ISFINAL )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFinal (  );
    hb_retl( b );
  }
}


/*
bool isFlagType() const
*/
HB_FUNC( QMETAPROPERTY_ISFLAGTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isFlagType (  );
    hb_retl( b );
  }
}


/*
bool isEnumType() const
*/
HB_FUNC( QMETAPROPERTY_ISENUMTYPE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isEnumType (  );
    hb_retl( b );
  }
}


/*
QMetaEnum enumerator() const
*/
HB_FUNC( QMETAPROPERTY_ENUMERATOR )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaEnum * ptr = new QMetaEnum( obj->enumerator (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAENUM" );  }
}


/*
bool hasNotifySignal() const
*/
HB_FUNC( QMETAPROPERTY_HASNOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasNotifySignal (  );
    hb_retl( b );
  }
}


/*
QMetaMethod notifySignal() const
*/
HB_FUNC( QMETAPROPERTY_NOTIFYSIGNAL )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QMetaMethod * ptr = new QMetaMethod( obj->notifySignal (  ) );
    _qt4xhb_createReturnClass ( ptr, "QMETAMETHOD" );  }
}


/*
int notifySignalIndex() const
*/
HB_FUNC( QMETAPROPERTY_NOTIFYSIGNALINDEX )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->notifySignalIndex (  );
    hb_retni( i );
  }
}


/*
int revision() const
*/
HB_FUNC( QMETAPROPERTY_REVISION )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->revision (  );
    hb_retni( i );
  }
}


/*
QVariant read(const QObject *obj) const
*/
HB_FUNC( QMETAPROPERTY_READ )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QObject * par1 = (const QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->read ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );  }
}


/*
bool write(QObject *obj, const QVariant &value) const
*/
HB_FUNC( QMETAPROPERTY_WRITE )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * par2 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->write ( par1, *par2 );
    hb_retl( b );
  }
}


/*
bool reset(QObject *obj) const
*/
HB_FUNC( QMETAPROPERTY_RESET )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    bool b = obj->reset ( par1 );
    hb_retl( b );
  }
}


/*
bool hasStdCppSet() const
*/
HB_FUNC( QMETAPROPERTY_HASSTDCPPSET )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->hasStdCppSet (  );
    hb_retl( b );
  }
}


/*
bool isValid() const
*/
HB_FUNC( QMETAPROPERTY_ISVALID )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
const QMetaObject *enclosingMetaObject() const
*/
HB_FUNC( QMETAPROPERTY_ENCLOSINGMETAOBJECT )
{
  QMetaProperty * obj = (QMetaProperty *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QMetaObject * ptr = obj->enclosingMetaObject (  );
    _qt4xhb_createReturnClass ( ptr, "QMETAOBJECT" );  }
}




