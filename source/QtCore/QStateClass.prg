/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIGNALTRANSITION
REQUEST QABSTRACTTRANSITION
REQUEST QABSTRACTSTATE
#endif

CLASS QState INHERIT QAbstractState

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addTransition1
   METHOD addTransition2
   METHOD addTransition3
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

PROCEDURE destroyObject () CLASS QState
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QState ( QState * parent = 0 )
*/
HB_FUNC_STATIC( QSTATE_NEW1 )
{
  QState * o = new QState ( OPQSTATE(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QState ( ChildMode childMode, QState * parent = 0 )
*/
HB_FUNC_STATIC( QSTATE_NEW2 )
{
  QState * o = new QState ( (QState::ChildMode) hb_parni(1), OPQSTATE(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QState ( QState * parent = 0 )
//[2]QState ( ChildMode childMode, QState * parent = 0 )

HB_FUNC_STATIC( QSTATE_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSTATE_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISNUM(1) && (ISQSTATE(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QSTATE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSTATE_DELETE )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
void addTransition ( QAbstractTransition * transition )
*/
HB_FUNC_STATIC( QSTATE_ADDTRANSITION1 )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractTransition * par1 = (QAbstractTransition *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->addTransition ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
*/
HB_FUNC_STATIC( QSTATE_ADDTRANSITION2 )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractState * par3 = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    QSignalTransition * ptr = obj->addTransition ( PQOBJECT(1), (const char *) hb_parc(2), par3 );
    _qt4xhb_createReturnClass ( ptr, "QSIGNALTRANSITION" );
  }
}

/*
QAbstractTransition * addTransition ( QAbstractState * target )
*/
HB_FUNC_STATIC( QSTATE_ADDTRANSITION3 )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QAbstractTransition * ptr = obj->addTransition ( par1 );
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTTRANSITION" );
  }
}

//[1]void addTransition ( QAbstractTransition * transition )
//[2]QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
//[3]QAbstractTransition * addTransition ( QAbstractState * target )

HB_FUNC_STATIC( QSTATE_ADDTRANSITION )
{
  if( ISNUMPAR(1) && ISQABSTRACTTRANSITION(1) )
  {
    HB_FUNC_EXEC( QSTATE_ADDTRANSITION1 );
  }
  else if( ISNUMPAR(3) && ISQOBJECT(1) && ISCHAR(2) && ISQABSTRACTSTATE(3) )
  {
    HB_FUNC_EXEC( QSTATE_ADDTRANSITION2 );
  }
  else if( ISNUMPAR(1) && ISQABSTRACTSTATE(1) )
  {
    HB_FUNC_EXEC( QSTATE_ADDTRANSITION3 );
  }
}

/*
void assignProperty ( QObject * object, const char * name, const QVariant & value )
*/
HB_FUNC_STATIC( QSTATE_ASSIGNPROPERTY )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->assignProperty ( PQOBJECT(1), (const char *) hb_parc(2), *PQVARIANT(3) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
ChildMode childMode () const
*/
HB_FUNC_STATIC( QSTATE_CHILDMODE )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->childMode () );
  }
}

/*
QAbstractState * errorState () const
*/
HB_FUNC_STATIC( QSTATE_ERRORSTATE )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractState * ptr = obj->errorState ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}

/*
QAbstractState * initialState () const
*/
HB_FUNC_STATIC( QSTATE_INITIALSTATE )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractState * ptr = obj->initialState ();
    _qt4xhb_createReturnClass ( ptr, "QABSTRACTSTATE" );
  }
}

/*
void removeTransition ( QAbstractTransition * transition )
*/
HB_FUNC_STATIC( QSTATE_REMOVETRANSITION )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractTransition * par1 = (QAbstractTransition *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->removeTransition ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setChildMode ( ChildMode mode )
*/
HB_FUNC_STATIC( QSTATE_SETCHILDMODE )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setChildMode ( (QState::ChildMode) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setErrorState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETERRORSTATE )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setErrorState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setInitialState ( QAbstractState * state )
*/
HB_FUNC_STATIC( QSTATE_SETINITIALSTATE )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QAbstractState * par1 = (QAbstractState *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setInitialState ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QList<QAbstractTransition *> transitions () const
*/
HB_FUNC_STATIC( QSTATE_TRANSITIONS )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QAbstractTransition *> list = obj->transitions ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QABSTRACTTRANSITION" );
    #else
    pDynSym = hb_dynsymFindName( "QABSTRACTTRANSITION" );
    #endif
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        #ifdef __XHARBOUR__
        hb_vmPushSymbol( pDynSym->pSymbol );
        #else
        hb_vmPushDynSym( pDynSym );
        #endif
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QAbstractTransition *) list[i] );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

#pragma ENDDUMP
