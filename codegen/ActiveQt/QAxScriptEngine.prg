$header

#include "hbclass.ch"

CLASS QAxScriptEngine INHERIT QAxObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD addItem
   METHOD hasIntrospection
   METHOD isValid
   METHOD scriptLanguage
   METHOD setState
   METHOD state

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAxScriptEngine>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAxScriptEngine ( const QString & language, QAxScript * script )
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_NEW )
{
  if( ISNUMPAR(2) && ISCHAR(1) && ISQAXSCRIPT(2) )
  {
    QAxScriptEngine * o = new QAxScriptEngine ( PQSTRING(1), PQAXSCRIPT(2) );
    _qt4xhb_storePointerAndFlag ( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
void addItem ( const QString & name )
*/
$method=|void|addItem|const QString &

/*
bool hasIntrospection () const
*/
$method=|bool|hasIntrospection|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QString scriptLanguage () const
*/
$method=|QString|scriptLanguage|

/*
void setState ( State st )
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_SETSTATE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUM(1) )
    {
      obj->setState ( (QAxScriptEngine::State) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
State state () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_STATE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retni( (int) obj->state () );
  }
}

#pragma ENDDUMP
