/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

CLASS QAxScriptEngine INHERIT QAxObject

   DATA class_id INIT Class_Id_QAxScriptEngine
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

PROCEDURE destroyObject () CLASS QAxScriptEngine
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

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
    QAxScriptEngine * o = NULL;
    QAxScript * par2 = (QAxScript *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    o = new QAxScriptEngine ( PQSTRING(1), par2 );
    _qt4xhb_storePointerAndFlag ( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAXSCRIPTENGINE_DELETE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addItem ( const QString & name )
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_ADDITEM )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISCHAR(1) )
    {
      obj->addItem ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool hasIntrospection () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_HASINTROSPECTION )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->hasIntrospection () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_ISVALID )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    hb_retl( obj->isValid () );
  }
}

/*
QString scriptLanguage () const
*/
HB_FUNC_STATIC( QAXSCRIPTENGINE_SCRIPTLANGUAGE )
{
  QAxScriptEngine * obj = (QAxScriptEngine *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QString str1 = obj->scriptLanguage ();
    hb_retc( RQSTRING(str1) );
  }
}

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
      obj->setState (  (QAxScriptEngine::State) hb_parni(1) );
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
