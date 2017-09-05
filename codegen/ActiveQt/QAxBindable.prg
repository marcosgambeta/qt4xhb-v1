$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QAXAGGREGATED
#endif

CLASS QAxBindable

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD createAggregate
   METHOD readData
   METHOD reportError
   METHOD writeData

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QAxBindable>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QAxBindable ()
*/
HB_FUNC_STATIC( QAXBINDABLE_NEW )
{
  QAxBindable * o = new QAxBindable ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

$deleteMethod

/*
virtual QAxAggregated * createAggregate ()
*/
HB_FUNC_STATIC( QAXBINDABLE_CREATEAGGREGATE )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    QAxAggregated * ptr = obj->createAggregate ();
    _qt4xhb_createReturnClass ( ptr, "QAXAGGREGATED" );
  }
}

/*
virtual bool readData ( QIODevice * source, const QString & format )
*/
HB_FUNC_STATIC( QAXBINDABLE_READDATA )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISQIODEVICE(1) && ISCHAR(2) )
    {
      RBOOL( obj->readData ( PQIODEVICE(1), PQSTRING(2) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
void reportError ( int code, const QString & src, const QString & desc, const QString & context = QString() )
*/
HB_FUNC_STATIC( QAXBINDABLE_REPORTERROR )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUM(1) && ISCHAR(2) && ISCHAR(3) && (ISCHAR(4)||ISNIL(4)) )
    {
      obj->reportError ( PINT(1), PQSTRING(2), PQSTRING(3), OPQSTRING(4,QString()) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual bool writeData ( QIODevice * sink )
*/
HB_FUNC_STATIC( QAXBINDABLE_WRITEDATA )
{
  QAxBindable * obj = (QAxBindable *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISQIODEVICE(1) )
    {
      RBOOL( obj->writeData ( PQIODEVICE(1) ) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

$extraMethods

#pragma ENDDUMP
