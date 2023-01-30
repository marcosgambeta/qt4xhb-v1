/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

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

PROCEDURE destroyObject() CLASS QAxScriptManager
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
QAxScriptManager( QObject * parent = 0 )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQOBJECT(1) || HB_ISNIL(1) ) )
  {
    QAxScriptManager * obj = new QAxScriptManager( OPQOBJECT( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_DELETE )
{
  QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_ADDOBJECT )
{
  if( ISNUMPAR(1) && ISQAXBASE(1) )
  {
    /*
    void addObject( QAxBase * object )
    */
    QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->addObject( PQAXBASE(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if( ISNUMPAR(1) && ISQOBJECT(1) )
  {
    /*
    void addObject( QObject * object )
    */
    QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      obj->addObject( PQOBJECT(1) );
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_CALL )
{
  if( ISBETWEEN(1, 9) && HB_ISCHAR(1) && ( ISQVARIANT(2) || HB_ISNIL(2) ) && ( ISQVARIANT(3) || HB_ISNIL(3) ) && ( ISQVARIANT(4) || HB_ISNIL(4) ) && ( ISQVARIANT(5) || HB_ISNIL(5) ) && ( ISQVARIANT(6) || HB_ISNIL(6) ) && ( ISQVARIANT(7) || HB_ISNIL(7) ) && ( ISQVARIANT(8) || HB_ISNIL(8) ) && ( ISQVARIANT(9) || HB_ISNIL(9) ) )
  {
    /*
    QVariant call( const QString & function, const QVariant & var1 = QVariant(), const QVariant & var2 = QVariant(), const QVariant & var3 = QVariant(), const QVariant & var4 = QVariant(), const QVariant & var5 = QVariant(), const QVariant & var6 = QVariant(), const QVariant & var7 = QVariant(), const QVariant & var8 = QVariant() )
    */
    QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QVariant * ptr = new QVariant( obj->call( PQSTRING(1), HB_ISNIL(2) ? QVariant() : *static_cast<QVariant*>( Qt4xHb::itemGetPtr(2) ), HB_ISNIL(3) ? QVariant() : *static_cast<QVariant*>( Qt4xHb::itemGetPtr(3) ), HB_ISNIL(4) ? QVariant() : *static_cast<QVariant*>( Qt4xHb::itemGetPtr(4) ), HB_ISNIL(5) ? QVariant() : *static_cast<QVariant*>( Qt4xHb::itemGetPtr(5) ), HB_ISNIL(6) ? QVariant() : *static_cast<QVariant*>( Qt4xHb::itemGetPtr(6) ), HB_ISNIL(7) ? QVariant() : *static_cast<QVariant*>( Qt4xHb::itemGetPtr(7) ), HB_ISNIL(8) ? QVariant() : *static_cast<QVariant*>( Qt4xHb::itemGetPtr(8) ), HB_ISNIL(9) ? QVariant() : *static_cast<QVariant*>( Qt4xHb::itemGetPtr(9) ) ) );
      Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
    }
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISARRAY(2) )
  {
    /*
    QVariant call( const QString & function, QList<QVariant> & arguments )
    */
    QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QVariant * ptr = new QVariant( obj->call( PQSTRING(1), PQVARIANTLIST(2) ) );
      Qt4xHb::createReturnClass( ptr, "QVARIANT", true );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QStringList functions( QAxScript::FunctionFlags flags = QAxScript::FunctionNames ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_FUNCTIONS )
{
  QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(0, 1) && ( HB_ISNUM(1) || HB_ISNIL(1) ) )
    {
#endif
      RQSTRINGLIST( obj->functions( HB_ISNIL(1) ? ( QAxScript::FunctionFlags ) QAxScript::FunctionNames : ( QAxScript::FunctionFlags ) hb_parni(1) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC( QAXSCRIPTMANAGER_LOAD )
{
  if( ISNUMPAR(3) && HB_ISCHAR(1) && HB_ISCHAR(2) && HB_ISCHAR(3) )
  {
    /*
    QAxScript * load( const QString & code, const QString & name, const QString & language )
    */
    QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAxScript * ptr = obj->load( PQSTRING(1), PQSTRING(2), PQSTRING(3) );
      Qt4xHb::createReturnQObjectClass( ptr, "QAXSCRIPT" );
    }
  }
  else if( ISNUMPAR(2) && HB_ISCHAR(1) && HB_ISCHAR(2) )
  {
    /*
    QAxScript * load( const QString & file, const QString & name )
    */
    QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

    if( obj != NULL )
    {
      QAxScript * ptr = obj->load( PQSTRING(1), PQSTRING(2) );
      Qt4xHb::createReturnQObjectClass( ptr, "QAXSCRIPT" );
    }
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QAxScript * script( const QString & name ) const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPT )
{
  QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISCHAR(1) )
    {
#endif
      QAxScript * ptr = obj->script( PQSTRING(1) );
      Qt4xHb::createReturnQObjectClass( ptr, "QAXSCRIPT" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QStringList scriptNames() const
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTNAMES )
{
  QAxScriptManager * obj = qobject_cast<QAxScriptManager*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRINGLIST( obj->scriptNames() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
static bool registerEngine( const QString & name, const QString & extension, const QString & code = QString() )
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_REGISTERENGINE )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISBETWEEN(2, 3) && HB_ISCHAR(1) && HB_ISCHAR(2) && ( HB_ISCHAR(3) || HB_ISNIL(3) ) )
  {
#endif
    RBOOL( QAxScriptManager::registerEngine( PQSTRING(1), PQSTRING(2), OPQSTRING( 3, QString() ) ) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static QString scriptFileFilter()
*/
HB_FUNC_STATIC( QAXSCRIPTMANAGER_SCRIPTFILEFILTER )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    RQSTRING( QAxScriptManager::scriptFileFilter() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

void QAxScriptManagerSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QAXSCRIPTMANAGER_ONERROR )
{
  QAxScriptManagerSlots_connect_signal( "error(QAxScript*,int,QString,int,QString)", "error(QAxScript*,int,QString,int,QString)" );
}

#pragma ENDDUMP
