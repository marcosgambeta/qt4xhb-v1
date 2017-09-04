$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTVALUE
#endif

CLASS QScriptClassPropertyIterator

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD flags
   METHOD hasNext
   METHOD hasPrevious
   METHOD id
   METHOD name
   METHOD next
   METHOD object
   METHOD previous
   METHOD toBack
   METHOD toFront
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptClassPropertyIterator>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QScriptString>

HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_DELETE )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
virtual QScriptValue::PropertyFlags flags () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_FLAGS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->flags () );
  }
}


/*
virtual bool hasNext () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_HASNEXT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasNext () );
  }
}


/*
virtual bool hasPrevious () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_HASPREVIOUS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->hasPrevious () );
  }
}


/*
virtual uint id () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_ID )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->id () );
  }
}


/*
virtual QScriptString name () const = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NAME )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptString * ptr = new QScriptString( obj->name () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTSTRING" );
  }
}


/*
virtual void next () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_NEXT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->next ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QScriptValue object () const
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_OBJECT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->object () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
virtual void previous () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_PREVIOUS )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->previous ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void toBack () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_TOBACK )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toBack ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
virtual void toFront () = 0
*/
HB_FUNC_STATIC( QSCRIPTCLASSPROPERTYITERATOR_TOFRONT )
{
  QScriptClassPropertyIterator * obj = (QScriptClassPropertyIterator *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->toFront ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
