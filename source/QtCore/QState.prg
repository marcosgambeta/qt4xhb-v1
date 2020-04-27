/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QABSTRACTSTATE
REQUEST QABSTRACTTRANSITION
REQUEST QSIGNALTRANSITION
#endif

CLASS QState INHERIT QAbstractState

   METHOD new
   METHOD delete
   METHOD addTransition
   METHOD assignProperty
   METHOD childMode
   METHOD errorState
   METHOD initialState
   METHOD removeTransition
   METHOD setChildMode
   METHOD setErrorState
   METHOD setInitialState
   METHOD transitions

   METHOD onFinished
   METHOD onPropertiesAssigned

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

#include <QtCore/QVariant>
#include <QtCore/QSignalTransition>
#include <QtCore/QAbstractTransition>

/*
QState ( QState * parent = 0 )
*/
void QState_new1()
{
  QState * obj = new QState( OPQSTATE(1,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
QState ( ChildMode childMode, QState * parent = 0 )
*/
void QState_new2()
{
  QState * obj = new QState( (QState::ChildMode) hb_parni(1), OPQSTATE(2,0) );
  Qt4xHb::returnNewObject( obj, false );
}

/*
[1]QState ( QState * parent = 0 )
[2]QState ( ChildMode childMode, QState * parent = 0 )
*/

HB_FUNC_STATIC( QSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    QState_new1();
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    QState_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATE_DELETE )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    Events_disconnect_all_events( obj, true );
    Signals_disconnect_all_signals( obj, true );
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
void addTransition ( QAbstractTransition * transition )
*/
void QState_addTransition1()
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->addTransition( PQABSTRACTTRANSITION(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
*/
void QState_addTransition2()
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QSignalTransition * ptr = obj->addTransition( PQOBJECT(1), PCONSTCHAR(2), PQABSTRACTSTATE(3) );
    Qt4xHb::createReturnQObjectClass( ptr, "QSIGNALTRANSITION" );
  }
}

/*
QAbstractTransition * addTransition ( QAbstractState * target )
*/
void QState_addTransition3()
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QAbstractTransition * ptr = obj->addTransition( PQABSTRACTSTATE(1) );
    Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTTRANSITION" );
  }
}

/*
[1]void addTransition ( QAbstractTransition * transition )
[2]QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
[3]QAbstractTransition * addTransition ( QAbstractState * target )
*/

HB_FUNC_STATIC( QSTATE_ADDTRANSITION )
{
  if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
  {
    QState_addTransition1();
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQABSTRACTSTATE(3) )
  {
    QState_addTransition2();
  }
  else if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
  {
    QState_addTransition3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void assignProperty ( QObject * object, const char * name, const QVariant & value )
*/
HB_FUNC_STATIC( QSTATE_ASSIGNPROPERTY )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQVARIANT(3) )
    {
#endif
      obj->assignProperty( PQOBJECT(1), PCONSTCHAR(2), *PQVARIANT(3) );
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
ChildMode childMode () const
*/
HB_FUNC_STATIC( QSTATE_CHILDMODE )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->childMode() );
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
QAbstractState * errorState () const
*/
HB_FUNC_STATIC( QSTATE_ERRORSTATE )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractState * ptr = obj->errorState();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTSTATE" );
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
QAbstractState * initialState () const
*/
HB_FUNC_STATIC( QSTATE_INITIALSTATE )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QAbstractState * ptr = obj->initialState();
      Qt4xHb::createReturnQObjectClass( ptr, "QABSTRACTSTATE" );
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
void removeTransition ( QAbstractTransition * transition )
*/
HB_FUNC_STATIC( QSTATE_REMOVETRANSITION )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
    {
#endif
      obj->removeTransition( PQABSTRACTTRANSITION(1) );
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
void setChildMode ( ChildMode mode )
*/
HB_FUNC_STATIC( QSTATE_SETCHILDMODE )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISNUM(1) )
    {
#endif
      obj->setChildMode( (QState::ChildMode) hb_parni(1) );
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
void setErrorState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETERRORSTATE )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
    {
#endif
      obj->setErrorState( PQABSTRACTSTATE(1) );
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
void setInitialState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETINITIALSTATE )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
    {
#endif
      obj->setInitialState( PQABSTRACTSTATE(1) );
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
QList<QAbstractTransition *> transitions () const
*/
HB_FUNC_STATIC( QSTATE_TRANSITIONS )
{
  QState * obj = (QState *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QList<QAbstractTransition *> list = obj->transitions();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTTRANSITION" );
      PHB_ITEM pArray = hb_itemArrayNew(0);
      if( pDynSym )
      {
        for( int i = 0; i < list.count(); i++ )
        {
          hb_vmPushDynSym( pDynSym );
          hb_vmPushNil();
          hb_vmDo( 0 );
          PHB_ITEM pObject = hb_itemNew( NULL );
          hb_itemCopy( pObject, hb_stackReturnItem() );
          PHB_ITEM pItem = hb_itemNew( NULL );
          hb_itemPutPtr( pItem, (QAbstractTransition *) list[i] );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QABSTRACTTRANSITION", HB_ERR_ARGS_BASEPARAMS );
      }
      hb_itemReturnRelease(pArray);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

void QStateSlots_connect_signal( const QString & signal, const QString & slot );

HB_FUNC_STATIC( QSTATE_ONFINISHED )
{
  QStateSlots_connect_signal( "finished()", "finished()" );
}

HB_FUNC_STATIC( QSTATE_ONPROPERTIESASSIGNED )
{
  QStateSlots_connect_signal( "propertiesAssigned()", "propertiesAssigned()" );
}

#pragma ENDDUMP
