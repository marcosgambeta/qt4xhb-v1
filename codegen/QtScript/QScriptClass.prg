$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTENGINE
REQUEST QVARIANT
REQUEST QSCRIPTCLASSPROPERTYITERATOR
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptClass

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD engine
   METHOD extension
   METHOD name
   METHOD newIterator
   METHOD property
   METHOD propertyFlags
   METHOD prototype
   METHOD queryProperty
   METHOD setProperty
   METHOD supportsExtension
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptClass>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScriptClass ( QScriptEngine * engine )
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NEW )
{
  QScriptClass * o = new QScriptClass ( PQSCRIPTENGINE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


HB_FUNC_STATIC( QSCRIPTCLASS_DELETE )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptEngine * engine () const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_ENGINE )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngine * ptr = obj->engine ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
virtual QVariant extension ( Extension extension, const QVariant & argument = QVariant() )
*/
HB_FUNC_STATIC( QSCRIPTCLASS_EXTENSION )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVariant par2 = ISNIL(2)? QVariant() : *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVariant * ptr = new QVariant( obj->extension ( (QScriptClass::Extension) hb_parni(1), par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}


/*
virtual QString name () const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NAME )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->name () );
  }
}


/*
virtual QScriptClassPropertyIterator * newIterator ( const QScriptValue & object )
*/
HB_FUNC_STATIC( QSCRIPTCLASS_NEWITERATOR )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptClassPropertyIterator * ptr = obj->newIterator ( *PQSCRIPTVALUE(1) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCLASSPROPERTYITERATOR" );
  }
}


/*
virtual QScriptValue property ( const QScriptValue & object, const QScriptString & name, uint id )
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROPERTY )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->property ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), PUINT(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual QScriptValue::PropertyFlags propertyFlags ( const QScriptValue & object, const QScriptString & name, uint id )
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROPERTYFLAGS )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->propertyFlags ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), PUINT(3) ) );
  }
}


/*
virtual QScriptValue prototype () const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_PROTOTYPE )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->prototype () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual QueryFlags queryProperty ( const QScriptValue & object, const QScriptString & name, QueryFlags flags, uint * id )
*/
HB_FUNC_STATIC( QSCRIPTCLASS_QUERYPROPERTY ) // TODO: revisar e corrigir implementacao
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint * par4 = (uint *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) ); // TODO: corrigir
    hb_retni( (int) obj->queryProperty ( *PQSCRIPTVALUE(1), *PQSCRIPTSTRING(2), (QScriptClass::QueryFlags) hb_parni(3), par4 ) );
  }
}


/*
virtual void setProperty ( QScriptValue & object, const QScriptString & name, uint id, const QScriptValue & value )
*/
HB_FUNC_STATIC( QSCRIPTCLASS_SETPROPERTY )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setProperty ( *par1, *PQSCRIPTSTRING(2), PUINT(3), *PQSCRIPTVALUE(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual bool supportsExtension ( Extension extension ) const
*/
HB_FUNC_STATIC( QSCRIPTCLASS_SUPPORTSEXTENSION )
{
  QScriptClass * obj = (QScriptClass *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->supportsExtension ( (QScriptClass::Extension) hb_parni(1) ) );
  }
}

$extraMethods

#pragma ENDDUMP
