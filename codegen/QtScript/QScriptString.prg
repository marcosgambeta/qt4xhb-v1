$header

#include "hbclass.ch"


CLASS QScriptString

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD isValid
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

#include <QScriptString>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QScriptString ()
*/
HB_FUNC_STATIC( QSCRIPTSTRING_NEW1 )
{
  QScriptString * o = new QScriptString ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QScriptString ( const QScriptString & other )
*/
HB_FUNC_STATIC( QSCRIPTSTRING_NEW2 )
{
  QScriptString * o = new QScriptString ( *PQSCRIPTSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QScriptString ()
//[2]QScriptString ( const QScriptString & other )

HB_FUNC_STATIC( QSCRIPTSTRING_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QSCRIPTSTRING_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQSCRIPTSTRING(1) )
  {
    HB_FUNC_EXEC( QSCRIPTSTRING_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isValid () const
*/
HB_FUNC_STATIC( QSCRIPTSTRING_ISVALID )
{
  QScriptString * obj = (QScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
QString toString () const
*/
$method=|QString|toString|

$extraMethods

#pragma ENDDUMP
