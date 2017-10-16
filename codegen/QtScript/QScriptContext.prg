$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTENGINE
REQUEST QSCRIPTCONTEXT
#endif

CLASS QScriptContext

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD delete
   METHOD activationObject
   METHOD argument
   METHOD argumentCount
   METHOD argumentsObject
   METHOD backtrace
   METHOD callee
   METHOD engine
   METHOD isCalledAsConstructor
   METHOD parentContext
   METHOD setActivationObject
   METHOD setThisObject
   METHOD state
   METHOD thisObject
   METHOD throwError1
   METHOD throwError2
   METHOD throwError
   METHOD throwValue
   METHOD toString

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptContext>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

$deleteMethod

/*
QScriptValue activationObject () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_ACTIVATIONOBJECT )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * ptr = new QScriptValue( obj->activationObject () );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}

/*
QScriptValue argument ( int index ) const
*/
$method=|QScriptValue|argument|int

/*
int argumentCount () const
*/
$method=|int|argumentCount|

/*
QScriptValue argumentsObject () const
*/
$method=|QScriptValue|argumentsObject|

/*
QStringList backtrace () const
*/
$method=|QStringList|backtrace|

/*
QScriptValue callee () const
*/
$method=|QScriptValue|callee|

/*
QScriptEngine * engine () const
*/
$method=|QScriptEngine *|engine|

/*
bool isCalledAsConstructor () const
*/
$method=|bool|isCalledAsConstructor|

/*
QScriptContext * parentContext () const
*/
$method=|QScriptContext *|parentContext|

/*
void setActivationObject ( const QScriptValue & activation )
*/
$method=|void|setActivationObject|const QScriptValue &

/*
void setThisObject ( const QScriptValue & thisObject )
*/
$method=|void|setThisObject|const QScriptValue &

/*
ExecutionState state () const
*/
HB_FUNC_STATIC( QSCRIPTCONTEXT_STATE )
{
  QScriptContext * obj = (QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}

/*
QScriptValue thisObject () const
*/
$method=|QScriptValue|thisObject|

/*
QScriptValue throwError ( Error error, const QString & text )
*/
$method=|QScriptValue|throwError,throwError1|QScriptContext::Error,const QString &

/*
QScriptValue throwError ( const QString & text )
*/
$method=|QScriptValue|throwError,throwError2|const QString &

//[1]QScriptValue throwError ( Error error, const QString & text )
//[2]QScriptValue throwError ( const QString & text )

HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXT_THROWERROR1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXT_THROWERROR2 );
  }
}

/*
QScriptValue throwValue ( const QScriptValue & value )
*/
$method=|QScriptValue|throwValue|const QScriptValue &

/*
QString toString () const
*/
$method=|QString|toString|

$extraMethods

#pragma ENDDUMP
