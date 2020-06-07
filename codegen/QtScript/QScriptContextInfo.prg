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

$prototype=QScriptContextInfo ( const QScriptContext * context )
$internalConstructor=|new1|const QScriptContext *

$prototype=QScriptContextInfo ( const QScriptContextInfo & other )
$internalConstructor=|new2|const QScriptContextInfo &

$prototype=QScriptContextInfo ()
$internalConstructor=|new3|

/*
[1]QScriptContextInfo ( const QScriptContext * context )
[2]QScriptContextInfo ( const QScriptContextInfo & other )
[3]QScriptContextInfo ()
*/

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQSCRIPTCONTEXT(1) )
  {
    QScriptContextInfo_new1();
  }
  else if( ISNUMPAR(1) && ISQSCRIPTCONTEXTINFO(1) )
  {
    QScriptContextInfo_new2();
  }
  else if( ISNUMPAR(0) )
  {
    QScriptContextInfo_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototype=QString fileName () const
$method=|QString|fileName|

$prototypeV2=int functionEndLineNumber() const

$prototypeV2=int functionMetaIndex() const

$prototype=QString functionName () const
$method=|QString|functionName|

$prototype=QStringList functionParameterNames () const
$method=|QStringList|functionParameterNames|

$prototypeV2=int functionStartLineNumber() const

$prototype=FunctionType functionType () const
$method=|QScriptContextInfo::FunctionType|functionType|

$prototypeV2=bool isNull() const

$prototypeV2=int lineNumber() const

$prototype=qint64 scriptId () const
$method=|qint64|scriptId|

$extraMethods

#pragma ENDDUMP
