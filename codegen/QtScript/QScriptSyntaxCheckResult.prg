$header

#include "hbclass.ch"


CLASS QScriptSyntaxCheckResult

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD errorColumnNumber
   METHOD errorLineNumber
   METHOD errorMessage
   METHOD state
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QScriptSyntaxCheckResult>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScriptSyntaxCheckResult ( const QScriptSyntaxCheckResult & other )
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_NEW )
{
  QScriptSyntaxCheckResult * o = new QScriptSyntaxCheckResult ( *PQSCRIPTSYNTAXCHECKRESULT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
int errorColumnNumber () const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_ERRORCOLUMNNUMBER )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->errorColumnNumber () );
  }
}


/*
int errorLineNumber () const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_ERRORLINENUMBER )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->errorLineNumber () );
  }
}


/*
QString errorMessage () const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_ERRORMESSAGE )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->errorMessage () );
  }
}


/*
State state () const
*/
HB_FUNC_STATIC( QSCRIPTSYNTAXCHECKRESULT_STATE )
{
  QScriptSyntaxCheckResult * obj = (QScriptSyntaxCheckResult *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}

$extraMethods

#pragma ENDDUMP
