/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBYTEARRAY
#endif

CLASS QUuid

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD toString
   METHOD toByteArray
   METHOD toRfc4122
   METHOD isNull
   METHOD variant
   METHOD version
   METHOD fromRfc4122
   METHOD createUuid

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QUuid
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QUuid>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QUuid()
*/
HB_FUNC_STATIC( QUUID_NEW1 )
{
  QUuid * obj = new QUuid();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QUuid(uint l, ushort w1, ushort w2, uchar b1, uchar b2, uchar b3, uchar b4, uchar b5, uchar b6, uchar b7, uchar b8)
*/
HB_FUNC_STATIC( QUUID_NEW2 )
{
  QUuid * obj = new QUuid( PUINT(1), PUSHORT(2), PUSHORT(3), PUCHAR(4), PUCHAR(5), PUCHAR(6), PUCHAR(7), PUCHAR(8), PUCHAR(9), PUCHAR(10), PUCHAR(11) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QUuid(const QString &)
*/
HB_FUNC_STATIC( QUUID_NEW3 )
{
  QUuid * obj = new QUuid( PQSTRING(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QUuid(const char *)
*/
HB_FUNC_STATIC( QUUID_NEW4 )
{
  QUuid * obj = new QUuid( PCONSTCHAR(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QUuid(const QByteArray &)
*/
HB_FUNC_STATIC( QUUID_NEW5 )
{
  QUuid * obj = new QUuid( *PQBYTEARRAY(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QUuid(const GUID &guid)
*/

/*
[1]QUuid()
[2]QUuid(uint l, ushort w1, ushort w2, uchar b1, uchar b2, uchar b3, uchar b4, uchar b5, uchar b6, uchar b7, uchar b8)
[3]QUuid(const QString &)
[4]QUuid(const char *)
[5]QUuid(const QByteArray &)
[6]QUuid(const GUID &guid)
*/

HB_FUNC_STATIC( QUUID_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QUUID_NEW1 );
  }
  else if( ISNUMPAR(11) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && ISNUM(9) && ISNUM(10) && ISNUM(11) )
  {
    HB_FUNC_EXEC( QUUID_NEW2 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QUUID_NEW3 );
    //HB_FUNC_EXEC( QUUID_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QUUID_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QUUID_DELETE )
{
  QUuid * obj = (QUuid *) Qt4xHb::itemGetPtrStackSelfItem();

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
QString toString() const
*/
HB_FUNC_STATIC( QUUID_TOSTRING )
{
  QUuid * obj = (QUuid *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQSTRING( obj->toString() );
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
QByteArray toByteArray() const
*/
HB_FUNC_STATIC( QUUID_TOBYTEARRAY )
{
  QUuid * obj = (QUuid *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toByteArray() );
      Qt4xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
QByteArray toRfc4122() const
*/
HB_FUNC_STATIC( QUUID_TORFC4122 )
{
  QUuid * obj = (QUuid *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QByteArray * ptr = new QByteArray( obj->toRfc4122() );
      Qt4xHb::createReturnClass( ptr, "QBYTEARRAY", true );
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
bool isNull() const
*/
HB_FUNC_STATIC( QUUID_ISNULL )
{
  QUuid * obj = (QUuid *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->isNull() );
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
QUuid::Variant variant() const
*/
HB_FUNC_STATIC( QUUID_VARIANT )
{
  QUuid * obj = (QUuid *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->variant() );
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
QUuid::Version version() const
*/
HB_FUNC_STATIC( QUUID_VERSION )
{
  QUuid * obj = (QUuid *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->version() );
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
static QUuid fromRfc4122( const QByteArray & )
*/
HB_FUNC_STATIC( QUUID_FROMRFC4122 )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
#endif
    QUuid * ptr = new QUuid( QUuid::fromRfc4122( *PQBYTEARRAY(1) ) );
    Qt4xHb::createReturnClass( ptr, "QUUID", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

/*
static QUuid createUuid()
*/
HB_FUNC_STATIC( QUUID_CREATEUUID )
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if( ISNUMPAR(0) )
  {
#endif
    QUuid * ptr = new QUuid( QUuid::createUuid() );
    Qt4xHb::createReturnClass( ptr, "QUUID", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
#endif
}

HB_FUNC_STATIC( QUUID_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QUUID_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QUUID_NEWFROM );
}

HB_FUNC_STATIC( QUUID_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QUUID_NEWFROM );
}

HB_FUNC_STATIC( QUUID_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QUUID_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
