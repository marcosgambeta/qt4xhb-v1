%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtScript

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QStringList>
#include <QtScript/QScriptEngine>

$deleteMethod

$prototype=QScriptValue activationObject () const
$method=|QScriptValue|activationObject|

$prototype=QScriptValue argument ( int index ) const
$method=|QScriptValue|argument|int

$prototypeV2=int argumentCount() const

$prototype=QScriptValue argumentsObject () const
$method=|QScriptValue|argumentsObject|

$prototype=QStringList backtrace () const
$method=|QStringList|backtrace|

$prototype=QScriptValue callee () const
$method=|QScriptValue|callee|

$prototype=QScriptEngine * engine () const
$method=|QScriptEngine *|engine|

$prototypeV2=bool isCalledAsConstructor() const

$prototype=QScriptContext * parentContext () const
$method=|QScriptContext *|parentContext|

$prototype=void setActivationObject ( const QScriptValue & activation )
$method=|void|setActivationObject|const QScriptValue &

$prototype=void setThisObject ( const QScriptValue & thisObject )
$method=|void|setThisObject|const QScriptValue &

$prototype=ExecutionState state () const
$method=|QScriptContext::ExecutionState|state|

$prototype=QScriptValue thisObject () const
$method=|QScriptValue|thisObject|

$prototype=QScriptValue throwError ( Error error, const QString & text )
$internalMethod=|QScriptValue|throwError,throwError1|QScriptContext::Error,const QString &

$prototype=QScriptValue throwError ( const QString & text )
$internalMethod=|QScriptValue|throwError,throwError2|const QString &

/*
[1]QScriptValue throwError ( Error error, const QString & text )
[2]QScriptValue throwError ( const QString & text )
*/

HB_FUNC_STATIC( QSCRIPTCONTEXT_THROWERROR )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISCHAR(2) )
  {
    QScriptContext_throwError1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QScriptContext_throwError2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=throwError

$prototype=QScriptValue throwValue ( const QScriptValue & value )
$method=|QScriptValue|throwValue|const QScriptValue &

$prototypeV2=QString toString() const

$extraMethods

#pragma ENDDUMP
