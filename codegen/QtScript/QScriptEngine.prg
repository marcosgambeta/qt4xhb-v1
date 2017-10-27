$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSCRIPTENGINEAGENT
REQUEST QSCRIPTCONTEXT
REQUEST QSCRIPTVALUE
REQUEST QSCRIPTSTRING
REQUEST QSCRIPTSYNTAXCHECKRESULT
#endif

CLASS QScriptEngine INHERIT QObject

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD abortEvaluation
   METHOD agent
   METHOD availableExtensions
   METHOD clearExceptions
   METHOD collectGarbage
   METHOD currentContext
   METHOD defaultPrototype
   METHOD evaluate1
   METHOD evaluate2
   METHOD evaluate
   METHOD globalObject
   METHOD hasUncaughtException
   METHOD importExtension
   METHOD importedExtensions
   METHOD installTranslatorFunctions
   METHOD isEvaluating
   METHOD newArray
   METHOD newRegExp1
   METHOD newRegExp2
   METHOD newRegExp
   METHOD newVariant1
   METHOD newVariant2
   METHOD newVariant
   METHOD nullValue
   METHOD popContext
   METHOD processEventsInterval
   METHOD pushContext
   METHOD reportAdditionalMemoryCost
   METHOD setAgent
   METHOD setDefaultPrototype
   METHOD setGlobalObject
   METHOD setProcessEventsInterval
   METHOD toObject
   METHOD toStringHandle
   METHOD uncaughtException
   METHOD uncaughtExceptionBacktrace
   METHOD uncaughtExceptionLineNumber
   METHOD undefinedValue
   METHOD checkSyntax

   METHOD onSignalHandlerException

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QStringList>

/*
QScriptEngine ()
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEW1 )
{
  QScriptEngine * o = new QScriptEngine ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptEngine ( QObject * parent )
*/
HB_FUNC_STATIC( QSCRIPTENGINE_NEW2 )
{
  QScriptEngine * o = new QScriptEngine ( PQOBJECT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QScriptEngine ()
//[2]QScriptEngine ( QObject * parent )

HB_FUNC_STATIC( QSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void abortEvaluation ( const QScriptValue & result = QScriptValue() )
*/
$method=|void|abortEvaluation|const QScriptValue &=QScriptValue()

/*
QScriptEngineAgent * agent () const
*/
$method=|QScriptEngineAgent *|agent|

/*
QStringList availableExtensions () const
*/
$method=|QStringList|availableExtensions|

/*
void clearExceptions ()
*/
$method=|void|clearExceptions|

/*
void collectGarbage ()
*/
$method=|void|collectGarbage|

/*
QScriptContext * currentContext () const
*/
$method=|QScriptContext *|currentContext|

/*
QScriptValue defaultPrototype ( int metaTypeId ) const
*/
$method=|QScriptValue|defaultPrototype|int

/*
QScriptValue evaluate ( const QString & program, const QString & fileName = QString(), int lineNumber = 1 )
*/
$method=|QScriptValue|evaluate,evaluate1|const QString &,const QString &=QString(),int=1

/*
QScriptValue evaluate ( const QScriptProgram & program )
*/
$method=|QScriptValue|evaluate,evaluate2|const QScriptProgram &

//[1]QScriptValue evaluate ( const QString & program, const QString & fileName = QString(), int lineNumber = 1 )
//[2]QScriptValue evaluate ( const QScriptProgram & program )

HB_FUNC_STATIC( QSCRIPTENGINE_EVALUATE )
{
  if( ISBETWEEN(1,3) && ISCHAR(1) && (ISCHAR(2)||ISNIL(2)) && (ISNUM(3)||ISNUM(3)) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_EVALUATE1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTPROGRAM(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_EVALUATE2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue globalObject () const
*/
$method=|QScriptValue|globalObject|

/*
bool hasUncaughtException () const
*/
$method=|bool|hasUncaughtException|

/*
QScriptValue importExtension ( const QString & extension )
*/
$method=|QScriptValue|importExtension|const QString &

/*
QStringList importedExtensions () const
*/
$method=|QStringList|importedExtensions|

/*
void installTranslatorFunctions ( const QScriptValue & object = QScriptValue() )
*/
$method=|void|installTranslatorFunctions|const QScriptValue &=QScriptValue()

/*
bool isEvaluating () const
*/
$method=|bool|isEvaluating|

/*
QScriptValue newArray ( uint length = 0 )
*/
$method=|QScriptValue|newArray|uint=0

/*
QScriptValue newRegExp ( const QRegExp & regexp )
*/
$method=|QScriptValue|newRegExp,newRegExp1|const QRegExp &

/*
QScriptValue newRegExp ( const QString & pattern, const QString & flags )
*/
$method=|QScriptValue|newRegExp,newRegExp2|const QString &,const QString &

//[1]QScriptValue newRegExp ( const QRegExp & regexp )
//[2]QScriptValue newRegExp ( const QString & pattern, const QString & flags )

HB_FUNC_STATIC( QSCRIPTENGINE_NEWREGEXP )
{
  if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWREGEXP1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWREGEXP2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue newVariant ( const QVariant & value )
*/
$method=|QScriptValue|newVariant,newVariant1|const QVariant &

/*
QScriptValue newVariant ( const QScriptValue & object, const QVariant & value )
*/
$method=|QScriptValue|newVariant,newVariant2|const QScriptValue &,const QVariant &

//[1]QScriptValue newVariant ( const QVariant & value )
//[2]QScriptValue newVariant ( const QScriptValue & object, const QVariant & value )

HB_FUNC_STATIC( QSCRIPTENGINE_NEWVARIANT )
{
  if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWVARIANT1 );
  }
  else if( ISNUMPAR(2) && ISQSCRIPTVALUE(1) && ISQVARIANT(2) )
  {
    HB_FUNC_EXEC( QSCRIPTENGINE_NEWVARIANT2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QScriptValue nullValue ()
*/
$method=|QScriptValue|nullValue|

/*
void popContext ()
*/
$method=|void|popContext|

/*
int processEventsInterval () const
*/
$method=|int|processEventsInterval|

/*
QScriptContext * pushContext ()
*/
$method=|QScriptContext *|pushContext|

/*
void reportAdditionalMemoryCost ( int size )
*/
$method=|void|reportAdditionalMemoryCost|int

/*
void setAgent ( QScriptEngineAgent * agent )
*/
$method=|void|setAgent|QScriptEngineAgent *

/*
void setDefaultPrototype ( int metaTypeId, const QScriptValue & prototype )
*/
$method=|void|setDefaultPrototype|int,const QScriptValue &

/*
void setGlobalObject ( const QScriptValue & object )
*/
$method=|void|setGlobalObject|const QScriptValue &

/*
void setProcessEventsInterval ( int interval )
*/
$method=|void|setProcessEventsInterval|int

/*
QScriptValue toObject ( const QScriptValue & value )
*/
$method=|QScriptValue|toObject|const QScriptValue &

/*
QScriptString toStringHandle ( const QString & str )
*/
$method=|QScriptString|toStringHandle|const QString &

/*
QScriptValue uncaughtException () const
*/
$method=|QScriptValue|uncaughtException|

/*
QStringList uncaughtExceptionBacktrace () const
*/
$method=|QStringList|uncaughtExceptionBacktrace|

/*
int uncaughtExceptionLineNumber () const
*/
$method=|int|uncaughtExceptionLineNumber|

/*
QScriptValue undefinedValue ()
*/
$method=|QScriptValue|undefinedValue|

/*
static QScriptSyntaxCheckResult checkSyntax ( const QString & program )
*/
$staticMethod=|QScriptSyntaxCheckResult|checkSyntax|const QString &

#pragma ENDDUMP
