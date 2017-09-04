$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QOBJECT
#endif

CLASS QDeclarativeScriptString

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD context
   METHOD scopeObject
   METHOD script
   METHOD setContext
   METHOD setScopeObject
   METHOD setScript
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDeclarativeScriptString>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeScriptString ()
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW1 )
{
  QDeclarativeScriptString * o = new QDeclarativeScriptString ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDeclarativeScriptString ( const QDeclarativeScriptString & other )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW2 )
{
  QDeclarativeScriptString * o = new QDeclarativeScriptString ( *PQDECLARATIVESCRIPTSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QDeclarativeScriptString ()
//[2]QDeclarativeScriptString ( const QDeclarativeScriptString & other )

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVESCRIPTSTRING_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDECLARATIVESCRIPTSTRING(1) )
  {
    HB_FUNC_EXEC( QDECLARATIVESCRIPTSTRING_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}



/*
QDeclarativeContext * context () const
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_CONTEXT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeContext * ptr = obj->context ();
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}


/*
QObject * scopeObject () const
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SCOPEOBJECT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->scopeObject ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}


/*
QString script () const
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SCRIPT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->script () );
  }
}


/*
void setContext ( QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETCONTEXT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeContext * par1 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setContext ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScopeObject ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETSCOPEOBJECT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScopeObject ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScript ( const QString & script )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETSCRIPT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScript ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

$extraMethods

#pragma ENDDUMP
