/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QVARIANT
REQUEST QOBJECT
#endif

CLASS QDeclarativeExpression INHERIT QObject

   METHOD new
   METHOD delete
   METHOD clearError
   METHOD context
   METHOD engine
   METHOD error
   METHOD evaluate
   METHOD expression
   METHOD hasError
   METHOD lineNumber
   METHOD notifyOnValueChanged
   METHOD scopeObject
   METHOD setExpression
   METHOD setNotifyOnValueChanged
   METHOD setSourceLocation
   METHOD sourceFile

   METHOD onValueChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeExpression
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeExpression>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDeclarativeContext>
#include <QDeclarativeEngine>

/*
QDeclarativeExpression ()
*/
void QDeclarativeExpression_new1 ()
{
  QDeclarativeExpression * o = new QDeclarativeExpression ();
  _qt4xhb_storePointerAndFlag( o, false );
}

/*
QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )
*/
void QDeclarativeExpression_new2 ()
{
  QDeclarativeExpression * o = new QDeclarativeExpression ( PQDECLARATIVECONTEXT(1), PQOBJECT(2), PQSTRING(3), OPQOBJECT(4,0) );
  _qt4xhb_storePointerAndFlag( o, false );
}

//[1]QDeclarativeExpression ()
//[2]QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QDeclarativeExpression_new1();
  }
  else if( ISBETWEEN(3,4) && ISQDECLARATIVECONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    QDeclarativeExpression_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_DELETE )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
void clearError ()
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_CLEARERROR )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      obj->clearError ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDeclarativeContext * context () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_CONTEXT )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDeclarativeContext * ptr = obj->context ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QDECLARATIVECONTEXT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDeclarativeEngine * engine () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_ENGINE )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDeclarativeEngine * ptr = obj->engine ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QDECLARATIVEENGINE" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QDeclarativeError error () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_ERROR )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QDeclarativeError * ptr = new QDeclarativeError( obj->error () );
      _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEERROR", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QVariant evaluate ( bool * valueIsUndefined = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_EVALUATE )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISBETWEEN(0,1) && ISOPTLOG(1) )
    {
      bool par1;
      QVariant * ptr = new QVariant( obj->evaluate ( &par1 ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
      hb_storl( par1, 1 );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QString expression () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_EXPRESSION )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->expression () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool hasError () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_HASERROR )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->hasError () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
int lineNumber () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_LINENUMBER )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RINT( obj->lineNumber () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
bool notifyOnValueChanged () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NOTIFYONVALUECHANGED )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->notifyOnValueChanged () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QObject * scopeObject () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SCOPEOBJECT )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      QObject * ptr = obj->scopeObject ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void setExpression ( const QString & expression )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETEXPRESSION )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
      obj->setExpression ( PQSTRING(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNotifyOnValueChanged ( bool notifyOnChange )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETNOTIFYONVALUECHANGED )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setNotifyOnValueChanged ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSourceLocation ( const QString & url, int line )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETSOURCELOCATION )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
    {
      obj->setSourceLocation ( PQSTRING(1), PINT(2) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString sourceFile () const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SOURCEFILE )
{
  QDeclarativeExpression * obj = (QDeclarativeExpression *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->sourceFile () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
