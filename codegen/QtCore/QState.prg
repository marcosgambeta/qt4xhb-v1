$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIGNALTRANSITION
REQUEST QABSTRACTTRANSITION
REQUEST QABSTRACTSTATE
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

$destructor

#pragma BEGINDUMP

#include <QState>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVariant>
#include <QSignalTransition>
#include <QAbstractTransition>

$prototype=QState ( QState * parent = 0 )
$internalConstructor=|new1|QState *=0

$prototype=QState ( ChildMode childMode, QState * parent = 0 )
$internalConstructor=|new2|QState::ChildMode,QState *=0

//[1]QState ( QState * parent = 0 )
//[2]QState ( ChildMode childMode, QState * parent = 0 )

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

$deleteMethod

$prototype=void addTransition ( QAbstractTransition * transition )
$internalMethod=|void|addTransition,addTransition1|QAbstractTransition *

$prototype=QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
$internalMethod=|QSignalTransition *|addTransition,addTransition2|QObject *,const char *,QAbstractState *

$prototype=QAbstractTransition * addTransition ( QAbstractState * target )
$internalMethod=|QAbstractTransition *|addTransition,addTransition3|QAbstractState *

//[1]void addTransition ( QAbstractTransition * transition )
//[2]QSignalTransition * addTransition ( QObject * sender, const char * signal, QAbstractState * target )
//[3]QAbstractTransition * addTransition ( QAbstractState * target )

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

$prototype=void assignProperty ( QObject * object, const char * name, const QVariant & value )
$method=|void|assignProperty|QObject *,const char *,const QVariant &

$prototype=ChildMode childMode () const
$method=|QState::ChildMode|childMode|

$prototype=QAbstractState * errorState () const
$method=|QAbstractState *|errorState|

$prototype=QAbstractState * initialState () const
$method=|QAbstractState *|initialState|

$prototype=void removeTransition ( QAbstractTransition * transition )
$method=|void|removeTransition|QAbstractTransition *

$prototype=void setChildMode ( ChildMode mode )
$method=|void|setChildMode|QState::ChildMode

$prototype=void setErrorState ( QAbstractState * state )
$method=|void|setErrorState|QAbstractState *

$prototype=void setInitialState ( QAbstractState * state )
$method=|void|setInitialState|QAbstractState *

$prototype=QList<QAbstractTransition *> transitions () const
HB_FUNC_STATIC( QSTATE_TRANSITIONS )
{
  QState * obj = (QState *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QList<QAbstractTransition *> list = obj->transitions ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QABSTRACTTRANSITION" );
    PHB_ITEM pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
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
