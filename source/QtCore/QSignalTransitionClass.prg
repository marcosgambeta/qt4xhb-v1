/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
REQUEST QBYTEARRAY
#endif

CLASS QSignalTransition INHERIT QAbstractTransition

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD senderObject
   METHOD setSenderObject
   METHOD signal
   METHOD setSignal
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QSignalTransition
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QSignalTransition>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QSignalTransition(QState *sourceState = 0)
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_NEW1 )
{
  QSignalTransition * o = new QSignalTransition ( OPQSTATE(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QSignalTransition(QObject *sender, const char *signal,QState *sourceState = 0)
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_NEW2 )
{
  QSignalTransition * o = new QSignalTransition ( PQOBJECT(1), (const char *) hb_parc(2), OPQSTATE(3,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QSignalTransition(QState *sourceState = 0)
//[2]QSignalTransition(QObject *sender, const char *signal,QState *sourceState = 0)

HB_FUNC_STATIC( QSIGNALTRANSITION_NEW )
{
  if( ISBETWEEN(0,1) && (ISQSTATE(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QSIGNALTRANSITION_NEW1 );
  }
  else if( ISBETWEEN(2,3) && ISQOBJECT(1) && ISCHAR(2) && (ISQSTATE(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QSIGNALTRANSITION_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QSIGNALTRANSITION_DELETE )
{
  QSignalTransition * obj = (QSignalTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QObject *senderObject() const
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SENDEROBJECT )
{
  QSignalTransition * obj = (QSignalTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QObject * ptr = obj->senderObject ();
    _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
  }
}

/*
void setSenderObject(QObject *sender)
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SETSENDEROBJECT )
{
  QSignalTransition * obj = (QSignalTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSenderObject ( PQOBJECT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QByteArray signal() const
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SIGNAL )
{
  QSignalTransition * obj = (QSignalTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->signal () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
void setSignal(const QByteArray &signal)
*/
HB_FUNC_STATIC( QSIGNALTRANSITION_SETSIGNAL )
{
  QSignalTransition * obj = (QSignalTransition *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSignal ( *PQBYTEARRAY(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

#pragma ENDDUMP
