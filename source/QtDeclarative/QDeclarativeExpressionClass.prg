/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVECONTEXT
REQUEST QDECLARATIVEENGINE
REQUEST QDECLARATIVEERROR
REQUEST QVARIANT
REQUEST QOBJECT
#endif

CLASS QDeclarativeExpression INHERIT QObject

   DATA class_id INIT Class_Id_QDeclarativeExpression
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
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

/*
QDeclarativeExpression ()
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW1 )
{
  QDeclarativeExpression * o = NULL;
  o = new QDeclarativeExpression (  );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW2 )
{
  QDeclarativeExpression * o = NULL;
  QDeclarativeContext * par1 = (QDeclarativeContext *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par2 = (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QObject * par4 = ISNIL(4)? 0 : (QObject *) hb_itemGetPtr( hb_objSendMsg( hb_param(4, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeExpression ( par1, par2, PQSTRING(3), par4 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QDeclarativeExpression ()
//[2]QDeclarativeExpression ( QDeclarativeContext * ctxt, QObject * scope, const QString & expression, QObject * parent = 0 )

HB_FUNC_STATIC( QDECLARATIVEEXPRESSION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDECLARATIVEEXPRESSION_NEW1 );
  }
  else if( ISBETWEEN(3,4) && ISQDECLARATIVECONTEXT(1) && ISQOBJECT(2) && ISCHAR(3) && (ISQOBJECT(4)||ISNIL(4)) )
  {
    HB_FUNC_EXEC( QDECLARATIVEEXPRESSION_NEW2 );
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
    obj->clearError (  );
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
    QDeclarativeContext * ptr = obj->context (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVECONTEXT" );
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
    QDeclarativeEngine * ptr = obj->engine (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEENGINE" );
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
    QDeclarativeError * ptr = new QDeclarativeError( obj->error (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEERROR" );
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
    bool par1;
    QVariant * ptr = new QVariant( obj->evaluate ( &par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
    hb_storl( par1, 1 );
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
    QString str1 = obj->expression (  );
    hb_retc( RQSTRING(str1) );
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
    hb_retl( obj->hasError (  ) );
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
    hb_retni( obj->lineNumber (  ) );
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
    hb_retl( obj->notifyOnValueChanged (  ) );
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
    QObject * ptr = obj->scopeObject (  );
    _qt4xhb_createReturnClass ( ptr, "QOBJECT" );
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
    obj->setExpression ( PQSTRING(1) );
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
    obj->setNotifyOnValueChanged ( PBOOL(1) );
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
    obj->setSourceLocation ( PQSTRING(1), PINT(2) );
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
    QString str1 = obj->sourceFile (  );
    hb_retc( RQSTRING(str1) );
  }
}






#pragma ENDDUMP
