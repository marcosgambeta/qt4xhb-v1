/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QOBJECT
REQUEST QVARIANT
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

PROCEDURE destroyObject() CLASS QDeclarativeExpression
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDeclarative/QDeclarativeExpression>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtDeclarative/QDeclarativeContext>
#include <QtDeclarative/QDeclarativeEngine>

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    /*
    QDeclarativeExpression()
    */
    QDeclarativeExpression * obj = new QDeclarativeExpression();
    Qt4xHb::returnNewObject( obj, false );
  }
  else if( ISBETWEEN( 3, 4 ) && ISQDECLARATIVECONTEXT( 1 ) && ISQOBJECT( 2 ) && HB_ISCHAR( 3 ) && ( ISQOBJECT( 4 ) || HB_ISNIL( 4 ) ) )
  {
    /*
    QDeclarativeExpression( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )
    */
    QDeclarativeExpression * obj = new QDeclarativeExpression( PQDECLARATIVECONTEXT( 1 ), PQOBJECT( 2 ), PQSTRING( 3 ), OPQOBJECT( 4, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_DELETE )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
    Qt4xHb::Events_disconnect_all_events( obj, true );
    Qt4xHb::Signals_disconnect_all_signals( obj, true );
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
void clearError()
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_CLEARERROR )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->clearError();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QDeclarativeContext * context() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_CONTEXT )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDeclarativeContext * ptr = obj->context();
      Qt4xHb::createReturnQObjectClass( ptr, "QDECLARATIVECONTEXT" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDeclarativeEngine * engine() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_ENGINE )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDeclarativeEngine * ptr = obj->engine();
      Qt4xHb::createReturnQObjectClass( ptr, "QDECLARATIVEENGINE" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QDeclarativeError error() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_ERROR )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QDeclarativeError * ptr = new QDeclarativeError( obj->error() );
      Qt4xHb::createReturnClass( ptr, "QDECLARATIVEERROR", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QVariant evaluate( bool * valueIsUndefined = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_EVALUATE )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 0, 1 ) && ( HB_ISLOG( 1 ) || HB_ISNIL( 1 ) ) )
    {
#endif
      bool par1;
      QVariant * ptr = new QVariant( obj->evaluate( &par1 ) );
      Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
      hb_storl( par1, 1 );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QString expression() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_EXPRESSION )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->expression() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool hasError() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_HASERROR )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->hasError() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
int lineNumber() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_LINENUMBER )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->lineNumber() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
bool notifyOnValueChanged() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NOTIFYONVALUECHANGED )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->notifyOnValueChanged() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
QObject * scopeObject() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SCOPEOBJECT )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QObject * ptr = obj->scopeObject();
      Qt4xHb::createReturnQObjectClass( ptr, "QOBJECT" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

/*
void setExpression( const QString & expression )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETEXPRESSION )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISCHAR( 1 ) )
    {
#endif
      obj->setExpression( PQSTRING( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setNotifyOnValueChanged( bool notifyOnChange )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETNOTIFYONVALUECHANGED )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
    {
#endif
      obj->setNotifyOnValueChanged( PBOOL( 1 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSourceLocation( const QString & url, int line )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SETSOURCELOCATION )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && HB_ISCHAR( 1 ) && HB_ISNUM( 2 ) )
    {
#endif
      obj->setSourceLocation( PQSTRING( 1 ), PINT( 2 ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString sourceFile() const
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_SOURCEFILE )
{
  QDeclarativeExpression * obj = qobject_cast< QDeclarativeExpression * >( Qt4xHb::getQObjectPointerFromSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RQSTRING( obj->sourceFile() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QDeclarativeExpressionSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_ONVALUECHANGED )
{
  QDeclarativeExpressionSlots_connect_signal( "valueChanged()", "valueChanged()" );
}

#pragma ENDDUMP
