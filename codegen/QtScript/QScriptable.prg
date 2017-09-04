$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTENGINE
#endif

CLASS QScriptable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD argument
   METHOD argumentCount
   METHOD context
   METHOD engine
   METHOD thisObject
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QScriptable
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QScriptable>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QScriptValue>

HB_FUNC_STATIC( QSCRIPTABLE_DELETE )
{
  QScriptable * obj = (QScriptable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QScriptValue argument ( int index ) const
*/
HB_FUNC_STATIC( QSCRIPTABLE_ARGUMENT )
{
  QScriptable * obj = (QScriptable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->argument ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
int argumentCount () const
*/
HB_FUNC_STATIC( QSCRIPTABLE_ARGUMENTCOUNT )
{
  QScriptable * obj = (QScriptable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->argumentCount () );
  }
}


/*
QScriptContext * context () const
*/
HB_FUNC_STATIC( QSCRIPTABLE_CONTEXT )
{
  QScriptable * obj = (QScriptable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptContext * ptr = obj->context ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTCONTEXT" );
  }
}


/*
QScriptEngine * engine () const
*/
HB_FUNC_STATIC( QSCRIPTABLE_ENGINE )
{
  QScriptable * obj = (QScriptable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptEngine * ptr = obj->engine ();
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTENGINE" );
  }
}


/*
QScriptValue thisObject () const
*/
HB_FUNC_STATIC( QSCRIPTABLE_THISOBJECT )
{
  QScriptable * obj = (QScriptable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->thisObject () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

$extraMethods

#pragma ENDDUMP
