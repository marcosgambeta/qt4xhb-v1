$header

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

$destructor

#pragma BEGINDUMP

#include <QState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>

/*
QState ( QState * parent = 0 )
*/
$constructor=|new1|QState *=0

/*
QState ( ChildMode childMode, QState * parent = 0 )
*/
$constructor=|new2|QState::ChildMode,QState *=0

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

$deleteMethod

/*
void addTransition ( QAbstractTransition * transition )
*/
$method=|void|addTransition,addTransition1|QAbstractTransition *

/*
QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
*/
$method=|QSignalTransition *|addTransition,addTransition2|QObject *,const char *,QAbstractState *

/*
QAbstractTransition * addTransition ( QAbstractState * target )
*/
$method=|QAbstractTransition *|addTransition,addTransition3|QAbstractState *

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
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void assignProperty ( QObject * object, const char * name, const QVariant & value )
*/
$method=|void|assignProperty|QObject *,const char *,const QVariant &

/*
ChildMode childMode () const
*/
$method=|QState::ChildMode|childMode|

/*
QAbstractState * errorState () const
*/
$method=|QAbstractState *|errorState|

/*
QAbstractState * initialState () const
*/
$method=|QAbstractState *|initialState|

/*
void removeTransition ( QAbstractTransition * transition )
*/
$method=|void|removeTransition|QAbstractTransition *

/*
void setChildMode ( ChildMode mode )
*/
$method=|void|setChildMode|QState::ChildMode

/*
void setErrorState ( QAbstractState * state )
*/
$method=|void|setErrorState|QAbstractState *

/*
void setInitialState ( QAbstractState * state )
*/
$method=|void|setInitialState|QAbstractState *

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
