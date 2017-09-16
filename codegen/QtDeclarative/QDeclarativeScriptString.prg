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
$constructor=|new1|

/*
QDeclarativeScriptString ( const QDeclarativeScriptString & other )
*/
$constructor=|new2|const QDeclarativeScriptString &

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
$method=|QDeclarativeContext *|context|

/*
QObject * scopeObject () const
*/
$method=|QObject *|scopeObject|

/*
QString script () const
*/
$method=|QString|script|

/*
void setContext ( QDeclarativeContext * context )
*/
$method=|void|setContext|QDeclarativeContext *

/*
void setScopeObject ( QObject * object )
*/
$method=|void|setScopeObject|QObject *

/*
void setScript ( const QString & script )
*/
$method=|void|setScript|const QString &

$extraMethods

#pragma ENDDUMP
