/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QOBJECT
#endif

CLASS QDeclarativeScriptString

   DATA pointer
   DATA class_id INIT Class_Id_QDeclarativeScriptString
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

PROCEDURE destroyObject () CLASS QDeclarativeScriptString
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeScriptString>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeScriptString ()
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW1 )
{
  QDeclarativeScriptString * o = NULL;
  o = new QDeclarativeScriptString ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDeclarativeScriptString ( const QDeclarativeScriptString & other )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEW2 )
{
  QDeclarativeScriptString * o = NULL;
  QDeclarativeScriptString * par1 = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeScriptString ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


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
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_CONTEXT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeContext * ptr = obj->context ();
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
  }
}


/*
QObject * scopeObject () const
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SCOPEOBJECT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->scopeObject ();
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
  }
}


/*
QString script () const
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SCRIPT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->script ();
    hb_retc( RQSTRING(str1) );
  }
}


/*
void setContext ( QDeclarativeContext * context )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETCONTEXT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeContext * par1 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setContext ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScopeObject ( QObject * object )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETSCOPEOBJECT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * par1 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setScopeObject ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setScript ( const QString & script )
*/
HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETSCRIPT )
{
  QDeclarativeScriptString * obj = (QDeclarativeScriptString *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setScript ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QDECLARATIVESCRIPTSTRING_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QDECLARATIVESCRIPTSTRING_NEWFROM );
}

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QDECLARATIVESCRIPTSTRING_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}



#pragma ENDDUMP
