/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAXSCRIPT
REQUEST QVARIANT
#endif

CLASS QAxScriptManager INHERIT QObject

   METHOD new
   METHOD delete
   METHOD addObject
   METHOD call
   METHOD functions
   METHOD load
   METHOD script
   METHOD scriptNames
   METHOD registerEngine
   METHOD scriptFileFilter

   METHOD onError

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QAxScriptManager
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <ActiveQt/QAxScriptManager>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QStringList>

/*
QAxScriptManager ( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_NEW )
{
  if( ISBETWEEN(0,1) && (ISQOBJECT(1)||ISNIL(1)) )
  {
    QAxScriptManager * o = new QAxScriptManager ( OPQOBJECT(1,0) );
    _qt4xhb_returnNewObject( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_DELETE )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    Events_disconnect_all_events (obj, true);
    Signals_disconnect_all_signals (obj, true);
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
void addObject ( QAxBase * object )
*/
void QAxScriptManager_addObject1 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addObject ( PQAXBASE(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void addObject ( QObject * object )
*/
void QAxScriptManager_addObject2 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      obj->addObject ( PQOBJECT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void addObject ( QAxBase * object )
//[2]void addObject ( QObject * object )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_ADDOBJECT )
{
  if( ISNUMPAR(1) && ISQAXBASE(1) )
  {
    QAxScriptManager_addObject1();
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    QAxScriptManager_addObject2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
*/
void QAxScriptManager_call1 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QVariant * ptr = new QVariant( obj->call ( PQSTRING(1), ISNIL(2)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(2), ISNIL(3)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(3), ISNIL(4)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(4), ISNIL(5)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(5), ISNIL(6)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(6), ISNIL(7)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(7), ISNIL(8)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(8), ISNIL(9)? QVariant() : *(QVariant *) _qt4xhb_itemGetPtr(9) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

/*
QVariant call ( const QString & function, QList<QVariant> & arguments )
*/
void QAxScriptManager_call2 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QVariant * ptr = new QVariant( obj->call ( PQSTRING(1), PQVARIANTLIST(2) ) );
      _qt4xhb_createReturnClass ( ptr, "QVARIANT", true );
  }
}

//[1]QVariant call ( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
//[2]QVariant call ( const QString & function, QList<QVariant> & arguments )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_CALL )
{
  if( ISBETWEEN(1,9) && ISCHAR(1) && (ISQVARIANT(2)||ISNIL(2)) && (ISQVARIANT(3)||ISNIL(3)) && (ISQVARIANT(4)||ISNIL(4)) && (ISQVARIANT(5)||ISNIL(5)) && (ISQVARIANT(6)||ISNIL(6)) && (ISQVARIANT(7)||ISNIL(7)) && (ISQVARIANT(8)||ISNIL(8)) && (ISQVARIANT(9)||ISNIL(9)) )
  {
    QAxScriptManager_call1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISARRAY(2) )
  {
    QAxScriptManager_call2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QStringList functions ( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_FUNCTIONS )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0,1) && ISOPTNUM(1) )
    {
#endif
      RQSTRINGLIST( obj->functions ( ISNIL(1)? (QAxScript::FunctionFlags) QAxScript::FunctionNames : (QAxScript::FunctionFlags) hb_parni(1) ) );
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
QAxScript * load ( const QString & code, const QString & name, const QString & language )
*/
void QAxScriptManager_load1 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QAxScript * ptr = obj->load ( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QAXSCRIPT" );
  }
}

/*
QAxScript * load ( const QString & file, const QString & name )
*/
void QAxScriptManager_load2 ()
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
      QAxScript * ptr = obj->load ( PQSTRING(1), PQSTRING(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QAXSCRIPT" );
  }
}

//[1]QAxScript * load ( const QString & code, const QString & name, const QString & language )
//[2]QAxScript * load ( const QString & file, const QString & name )

HB_FUNC_STATIC( QAXSCRIPTMANAGER_LOAD )
{
  if( ISNUMPAR(3) && ISCHAR(1) && ISCHAR(2) && ISCHAR(3) )
  {
    QAxScriptManager_load1();
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    QAxScriptManager_load2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QAxScript * script ( const QString & name ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPT )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISCHAR(1) )
    {
#endif
      QAxScript * ptr = obj->script ( PQSTRING(1) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QAXSCRIPT" );
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
QStringList scriptNames () const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTNAMES )
{
  QAxScriptManager * obj = (QAxScriptManager *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->scriptNames () );
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
static bool registerEngine ( const QString & name, const QString & extension, const QString & code = QString() )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_REGISTERENGINE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(2,3) && ISCHAR(1) && ISCHAR(2) && ISOPTCHAR(3) )
  {
#endif
      RBOOL( QAxScriptManager::registerEngine ( PQSTRING(1), PQSTRING(2), OPQSTRING(3,QString()) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QString scriptFileFilter ()
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTFILEFILTER )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
  {
#endif
      RQSTRING( QAxScriptManager::scriptFileFilter () );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

void QAxScriptManagerSlots_connect_signal ( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAXSCRIPTMANAGER_ONERROR )
{
  QAxScriptManagerSlots_connect_signal( "error(QAxScript*,int,QString,int,QString)", "error(QAxScript*,int,QString,int,QString)" );
}

#pragma ENDDUMP