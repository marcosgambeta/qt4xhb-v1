$header

#include "hbclass.ch"

CLASS QScriptContextInfo

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD fileName
   METHOD functionEndLineNumber
   METHOD functionMetaIndex
   METHOD functionName
   METHOD functionParameterNames
   METHOD functionStartLineNumber
   METHOD functionType
   METHOD isNull
   METHOD lineNumber
   METHOD scriptId

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptContextInfo>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScriptContextInfo ( const QScriptContext * context )
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW1 )
{
  const QScriptContext * par1 = (const QScriptContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QScriptContextInfo * o = new QScriptContextInfo ( par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptContextInfo ( const QScriptContextInfo & other )
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW2 )
{
  QScriptContextInfo * o = new QScriptContextInfo ( *PQSCRIPTCONTEXTINFO(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptContextInfo ()
*/
HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW3 )
{
  QScriptContextInfo * o = new QScriptContextInfo ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QScriptContextInfo ( const QScriptContext * context )
//[2]QScriptContextInfo ( const QScriptContextInfo & other )
//[3]QScriptContextInfo ()

HB_FUNC_STATIC( QSCRIPTCONTEXTINFO_NEW )
{
  if( ISNUMPAR(1) && ISQSCRIPTCONTEXT(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTCONTEXTINFO(1) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW2 );
  }
  else if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTCONTEXTINFO_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QString fileName () const
*/
$method=|QString|fileName|

/*
int functionEndLineNumber () const
*/
$method=|int|functionEndLineNumber|

/*
int functionMetaIndex () const
*/
$method=|int|functionMetaIndex|

/*
QString functionName () const
*/
$method=|QString|functionName|

/*
QStringList functionParameterNames () const
*/
$method=|QStringList|functionParameterNames|

/*
int functionStartLineNumber () const
*/
$method=|int|functionStartLineNumber|

/*
FunctionType functionType () const
*/
$method=|QScriptContextInfo::FunctionType|functionType|

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
int lineNumber () const
*/
$method=|int|lineNumber|

/*
qint64 scriptId () const
*/
$method=|qint64|scriptId|

$extraMethods

#pragma ENDDUMP
