/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QBitArray

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD at
   METHOD clear
   METHOD clearBit
   METHOD count
   METHOD fill
   METHOD isEmpty
   METHOD isNull
   METHOD resize
   METHOD setBit
   METHOD size
   METHOD testBit
   METHOD toggleBit
   METHOD truncate

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QBitArray
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtCore/QBitArray>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QBitArray()
*/
void QBitArray_new1()
{
  QBitArray * obj = new QBitArray();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QBitArray( int size, bool value = false )
*/
void QBitArray_new2()
{
  QBitArray * obj = new QBitArray( PINT( 1 ), OPBOOL( 2, false ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QBitArray( const QBitArray & other )
*/
void QBitArray_new3()
{
  QBitArray * obj = new QBitArray( *PQBITARRAY( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QBITARRAY_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QBitArray_new1();
  }
  else if( ISBETWEEN( 1, 2 ) && HB_ISNUM( 1 ) && ( HB_ISLOG( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QBitArray_new2();
  }
  else if( ISNUMPAR( 1 ) && ISQBITARRAY( 1 ) )
  {
    QBitArray_new3();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool at( int i ) const
*/
HB_FUNC_STATIC( QBITARRAY_AT )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->at( PINT( 1 ) ) );
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
void clear()
*/
HB_FUNC_STATIC( QBITARRAY_CLEAR )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      obj->clear();
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
void clearBit( int i )
*/
HB_FUNC_STATIC( QBITARRAY_CLEARBIT )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->clearBit( PINT( 1 ) );
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
int count() const
*/
void QBitArray_count1()
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    RINT( obj->count() );
  }
}

/*
int count( bool on ) const
*/
void QBitArray_count2()
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    RINT( obj->count( PBOOL( 1 ) ) );
  }
}

HB_FUNC_STATIC( QBITARRAY_COUNT )
{
  if( ISNUMPAR( 0 ) )
  {
    QBitArray_count1();
  }
  else if( ISNUMPAR( 1 ) && HB_ISLOG( 1 ) )
  {
    QBitArray_count2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool fill( bool value, int size = -1 )
*/
void QBitArray_fill1()
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    RBOOL( obj->fill( PBOOL( 1 ), OPINT( 2, -1 ) ) );
  }
}

/*
void fill( bool value, int begin, int end )
*/
void QBitArray_fill2()
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->fill( PBOOL( 1 ), PINT( 2 ), PINT( 3 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QBITARRAY_FILL )
{
  if( ISBETWEEN( 1, 2 ) && HB_ISLOG( 1 ) && ( HB_ISNUM( 2 ) || HB_ISNIL( 2 ) ) )
  {
    QBitArray_fill1();
  }
  else if( ISNUMPAR( 3 ) && HB_ISLOG( 1 ) && HB_ISNUM( 2 ) && HB_ISNUM( 3 ) )
  {
    QBitArray_fill2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QBITARRAY_ISEMPTY )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RBOOL( obj->isEmpty() );
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
HB_FUNC_STATIC( QBITARRAY_ISNULL )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
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
void resize( int size )
*/
HB_FUNC_STATIC( QBITARRAY_RESIZE )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->resize( PINT( 1 ) );
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
void setBit( int i )
*/
void QBitArray_setBit1()
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->setBit( PINT( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setBit( int i, bool value )
*/
void QBitArray_setBit2()
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->setBit( PINT( 1 ), PBOOL( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QBITARRAY_SETBIT )
{
  if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
  {
    QBitArray_setBit1();
  }
  else if( ISNUMPAR( 2 ) && HB_ISNUM( 1 ) && HB_ISLOG( 2 ) )
  {
    QBitArray_setBit2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int size() const
*/
HB_FUNC_STATIC( QBITARRAY_SIZE )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      RINT( obj->size() );
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
bool testBit( int i ) const
*/
HB_FUNC_STATIC( QBITARRAY_TESTBIT )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->testBit( PINT( 1 ) ) );
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
bool toggleBit( int i )
*/
HB_FUNC_STATIC( QBITARRAY_TOGGLEBIT )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      RBOOL( obj->toggleBit( PINT( 1 ) ) );
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
void truncate( int pos )
*/
HB_FUNC_STATIC( QBITARRAY_TRUNCATE )
{
  QBitArray * obj = static_cast< QBitArray * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && HB_ISNUM( 1 ) )
    {
#endif
      obj->truncate( PINT( 1 ) );
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

HB_FUNC_STATIC( QBITARRAY_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && HB_ISPOINTER( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_param( 1, HB_IT_POINTER ) ) ) );
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

HB_FUNC_STATIC( QBITARRAY_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QBITARRAY_NEWFROM );
}

HB_FUNC_STATIC( QBITARRAY_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QBITARRAY_NEWFROM );
}

HB_FUNC_STATIC( QBITARRAY_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QBITARRAY_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && HB_ISLOG( 1 ) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl( 1 ) );
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
