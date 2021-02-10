/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2021 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QRECT
#endif

CLASS QPolygon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD containsPoint
   METHOD intersected
   METHOD point
   METHOD putPoints2
   METHOD putPoints
   METHOD setPoint
   METHOD subtracted
   METHOD swap
   METHOD translate
   METHOD translated
   METHOD united

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QPolygon
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QPolygon>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPolygon()
*/
void QPolygon_new1()
{
  QPolygon * obj = new QPolygon();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPolygon( int size )
*/
void QPolygon_new2()
{
  QPolygon * obj = new QPolygon( PINT( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPolygon( const QPolygon & polygon )
*/
void QPolygon_new3()
{
  QPolygon * obj = new QPolygon( *PQPOLYGON( 1 ) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPolygon( const QVector<QPoint> & points )
*/
void QPolygon_new4()
{
  QVector<QPoint> par1;
  PHB_ITEM aList1 = hb_param( 1, HB_IT_ARRAY );
  int nLen1 = hb_arrayLen( aList1 );
  for( int i1 = 0; i1 < nLen1; i1++ )
  {
    par1 << *static_cast< QPoint * >( hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) ) );
  }
  QPolygon * obj = new QPolygon( par1 );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QPolygon( const QRect & rectangle, bool closed = false )
*/
void QPolygon_new5()
{
  QPolygon * obj = new QPolygon( *PQRECT( 1 ), OPBOOL( 2, false ) );
  Qt4xHb::returnNewObject( obj, true );
}

HB_FUNC_STATIC( QPOLYGON_NEW )
{
  if( ISNUMPAR( 0 ) )
  {
    QPolygon_new1();
  }
  else if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QPolygon_new2();
  }
  else if( ISNUMPAR( 1 ) && ISQPOLYGON( 1 ) )
  {
    QPolygon_new3();
  }
  else if( ISNUMPAR( 1 ) && ISARRAY( 1 ) )
  {
    QPolygon_new4();
  }
  else if( ISBETWEEN( 1, 2 ) && ISQRECT( 1 ) && ( ISLOG( 2 ) || ISNIL( 2 ) ) )
  {
    QPolygon_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QPOLYGON_DELETE )
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

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
QRect boundingRect() const
*/
HB_FUNC_STATIC( QPOLYGON_BOUNDINGRECT )
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 0 ) )
    {
#endif
      QRect * ptr = new QRect( obj->boundingRect() );
      Qt4xHb::createReturnClass( ptr, "QRECT", true );
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
bool containsPoint( const QPoint & point, Qt::FillRule fillRule ) const
*/
HB_FUNC_STATIC( QPOLYGON_CONTAINSPOINT )
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 2 ) && ISQPOINT( 1 ) && ISNUM( 2 ) )
    {
#endif
      RBOOL( obj->containsPoint( *PQPOINT( 1 ), ( Qt::FillRule ) hb_parni( 2 ) ) );
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
QPolygon intersected( const QPolygon & r ) const
*/
HB_FUNC_STATIC( QPOLYGON_INTERSECTED )
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPOLYGON( 1 ) )
    {
#endif
      QPolygon * ptr = new QPolygon( obj->intersected( *PQPOLYGON( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QPOLYGON", true );
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
void point( int index, int * x, int * y ) const
*/
void QPolygon_point1()
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    int par2;
    int par3;
    obj->point( PINT( 1 ), &par2, &par3 );
    hb_storni( par2, 2 );
    hb_storni( par3, 3 );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint point( int index ) const
*/
void QPolygon_point2()
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QPoint * ptr = new QPoint( obj->point( PINT( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QPOINT", true );
  }
}

HB_FUNC_STATIC( QPOLYGON_POINT )
{
  if( ISNUMPAR( 3 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) )
  {
    QPolygon_point1();
  }
  else if( ISNUMPAR( 1 ) && ISNUM( 1 ) )
  {
    QPolygon_point2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void putPoints( int index, int nPoints, const QPolygon & fromPolygon, int fromIndex = 0 )
*/
HB_FUNC_STATIC( QPOLYGON_PUTPOINTS2 )
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN( 3, 4 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISQPOLYGON( 3 ) && ( ISNUM( 4 ) || ISNIL( 4 ) ) )
    {
#endif
      obj->putPoints( PINT( 1 ), PINT( 2 ), *PQPOLYGON( 3 ), OPINT( 4, 0 ) );
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

HB_FUNC_STATIC( QPOLYGON_PUTPOINTS )
{
  HB_FUNC_EXEC( QPOLYGON_PUTPOINTS2 );
}

/*
void setPoint( int index, int x, int y )
*/
void QPolygon_setPoint1()
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->setPoint( PINT( 1 ), PINT( 2 ), PINT( 3 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setPoint( int index, const QPoint & point )
*/
void QPolygon_setPoint2()
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->setPoint( PINT( 1 ), *PQPOINT( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QPOLYGON_SETPOINT )
{
  if( ISNUMPAR( 3 ) && ISNUM( 1 ) && ISNUM( 2 ) && ISNUM( 3 ) )
  {
    QPolygon_setPoint1();
  }
  else if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISQPOINT( 2 ) )
  {
    QPolygon_setPoint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon subtracted( const QPolygon & r ) const
*/
HB_FUNC_STATIC( QPOLYGON_SUBTRACTED )
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPOLYGON( 1 ) )
    {
#endif
      QPolygon * ptr = new QPolygon( obj->subtracted( *PQPOLYGON( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QPOLYGON", true );
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
void swap( QPolygon & other )
*/
HB_FUNC_STATIC( QPOLYGON_SWAP )
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPOLYGON( 1 ) )
    {
#endif
      obj->swap( *PQPOLYGON( 1 ) );
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
void translate( int dx, int dy )
*/
void QPolygon_translate1()
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->translate( PINT( 1 ), PINT( 2 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate( const QPoint & offset )
*/
void QPolygon_translate2()
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    obj->translate( *PQPOINT( 1 ) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

HB_FUNC_STATIC( QPOLYGON_TRANSLATE )
{
  if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
  {
    QPolygon_translate1();
  }
  else if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
  {
    QPolygon_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon translated( int dx, int dy ) const
*/
void QPolygon_translated1()
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->translated( PINT( 1 ), PINT( 2 ) ) );
    Qt4xHb::createReturnClass( ptr, "QPOLYGON", true );
  }
}

/*
QPolygon translated( const QPoint & offset ) const
*/
void QPolygon_translated2()
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->translated( *PQPOINT( 1 ) ) );
    Qt4xHb::createReturnClass( ptr, "QPOLYGON", true );
  }
}

HB_FUNC_STATIC( QPOLYGON_TRANSLATED )
{
  if( ISNUMPAR( 2 ) && ISNUM( 1 ) && ISNUM( 2 ) )
  {
    QPolygon_translated1();
  }
  else if( ISNUMPAR( 1 ) && ISQPOINT( 1 ) )
  {
    QPolygon_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QPolygon united( const QPolygon & r ) const
*/
HB_FUNC_STATIC( QPOLYGON_UNITED )
{
  QPolygon * obj = static_cast< QPolygon * >( Qt4xHb::itemGetPtrStackSelfItem() );

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR( 1 ) && ISQPOLYGON( 1 ) )
    {
#endif
      QPolygon * ptr = new QPolygon( obj->united( *PQPOLYGON( 1 ) ) );
      Qt4xHb::createReturnClass( ptr, "QPOLYGON", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QPOLYGON_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT( 1 ) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, static_cast< void * >( hb_itemGetPtr( hb_objSendMsg( hb_param( 1, HB_IT_OBJECT ), "POINTER", 0 ) ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER( 1 ) )
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

HB_FUNC_STATIC( QPOLYGON_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QPOLYGON_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGON_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QPOLYGON_NEWFROM );
}

HB_FUNC_STATIC( QPOLYGON_SELFDESTRUCTION )
{
  hb_retl( ( bool ) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QPOLYGON_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG( 1 ) )
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
