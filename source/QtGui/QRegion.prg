/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
#endif

CLASS QRegion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD contains
   METHOD intersected
   METHOD intersects
   METHOD isEmpty
   METHOD rectCount
   METHOD rects
   METHOD subtracted
   METHOD swap
   METHOD translate
   METHOD translated
   METHOD united
   METHOD xored

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QRegion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QRegion>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QtCore/QVector>

/*
QRegion ()
*/
void QRegion_new1()
{
  QRegion * obj = new QRegion();
  Qt4xHb::returnNewObject( obj, true );
}

/*
QRegion ( int x, int y, int w, int h, RegionType t = Rectangle )
*/
void QRegion_new2()
{
  QRegion * obj = new QRegion( PINT(1), PINT(2), PINT(3), PINT(4), ISNIL(5)? (QRegion::RegionType) QRegion::Rectangle : (QRegion::RegionType) hb_parni(5) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QRegion ( const QPolygon & a, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
void QRegion_new3()
{
  QRegion * obj = new QRegion( *PQPOLYGON(1), ISNIL(2)? (Qt::FillRule) Qt::OddEvenFill : (Qt::FillRule) hb_parni(2) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QRegion ( const QRegion & r )
*/
void QRegion_new4()
{
  QRegion * obj = new QRegion( *PQREGION(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QRegion ( const QBitmap & bm )
*/
void QRegion_new5()
{
  QRegion * obj = new QRegion( *PQBITMAP(1) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
QRegion ( const QRect & r, RegionType t = Rectangle )
*/
void QRegion_new6()
{
  QRegion * obj = new QRegion( *PQRECT(1), ISNIL(2)? (QRegion::RegionType) QRegion::Rectangle : (QRegion::RegionType) hb_parni(2) );
  Qt4xHb::returnNewObject( obj, true );
}

/*
[1]QRegion ()
[2]QRegion ( int x, int y, int w, int h, RegionType t = Rectangle )
[3]QRegion ( const QPolygon & a, Qt::FillRule fillRule = Qt::OddEvenFill )
[4]QRegion ( const QRegion & r )
[5]QRegion ( const QBitmap & bm )
[6]QRegion ( const QRect & r, RegionType t = Rectangle )
*/

HB_FUNC_STATIC( QREGION_NEW )
{
  if( ISNUMPAR(0) )
  {
    QRegion_new1();
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    QRegion_new2();
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QRegion_new3();
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_new4();
  }
  else if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    QRegion_new5();
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    QRegion_new6();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGION_DELETE )
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

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
HB_FUNC_STATIC( QREGION_BOUNDINGRECT )
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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
bool contains ( const QPoint & p ) const
*/
void QRegion_contains1()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains( *PQPOINT(1) ) );
  }
}

/*
bool contains ( const QRect & r ) const
*/
void QRegion_contains2()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->contains( *PQRECT(1) ) );
  }
}

/*
[1]bool contains ( const QPoint & p ) const
[2]bool contains ( const QRect & r ) const
*/

HB_FUNC_STATIC( QREGION_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_contains1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_contains2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion intersected ( const QRegion & r ) const
*/
void QRegion_intersected1()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->intersected( *PQREGION(1) ) );
    Qt4xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
QRegion intersected ( const QRect & rect ) const
*/
void QRegion_intersected2()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->intersected( *PQRECT(1) ) );
    Qt4xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
[1]QRegion intersected ( const QRegion & r ) const
[2]QRegion intersected ( const QRect & rect ) const
*/

HB_FUNC_STATIC( QREGION_INTERSECTED )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_intersected1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_intersected2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool intersects ( const QRegion & region ) const
*/
void QRegion_intersects1()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->intersects( *PQREGION(1) ) );
  }
}

/*
bool intersects ( const QRect & rect ) const
*/
void QRegion_intersects2()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    RBOOL( obj->intersects( *PQRECT(1) ) );
  }
}

/*
[1]bool intersects ( const QRegion & region ) const
[2]bool intersects ( const QRect & rect ) const
*/

HB_FUNC_STATIC( QREGION_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_intersects1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_intersects2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
bool isEmpty() const
*/
HB_FUNC_STATIC( QREGION_ISEMPTY )
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
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
int rectCount() const
*/
HB_FUNC_STATIC( QREGION_RECTCOUNT )
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RINT( obj->rectCount() );
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
QVector<QRect> rects () const
*/
HB_FUNC_STATIC( QREGION_RECTS )
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QVector<QRect> list = obj->rects();
      PHB_DYNS pDynSym = hb_dynsymFindName( "QRECT" );
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
          hb_itemPutPtr( pItem, (QRect *) new QRect( list[i] ) );
          hb_objSendMsg( pObject, "_POINTER", 1, pItem );
          hb_itemRelease( pItem );
          PHB_ITEM pDestroy = hb_itemNew( NULL );
          hb_itemPutL( pDestroy, true );
          hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
          hb_itemRelease( pDestroy );
          hb_arrayAddForward( pArray, pObject );
          hb_itemRelease( pObject );
        }
      }
      else
      {
        hb_errRT_BASE( EG_NOFUNC, 1001, NULL, "QRECT", HB_ERR_ARGS_BASEPARAMS );
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

/*
QRegion subtracted ( const QRegion & r ) const
*/
HB_FUNC_STATIC( QREGION_SUBTRACTED )
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      QRegion * ptr = new QRegion( obj->subtracted( *PQREGION(1) ) );
      Qt4xHb::createReturnClass( ptr, "QREGION", true );
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
void swap ( QRegion & other )
*/
HB_FUNC_STATIC( QREGION_SWAP )
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      obj->swap( *PQREGION(1) );
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
void translate ( int dx, int dy )
*/
void QRegion_translate1()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate( PINT(1), PINT(2) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPoint & point )
*/
void QRegion_translate2()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    obj->translate( *PQPOINT(1) );
  }

  hb_itemReturn( hb_stackSelfItem() );
}

/*
[1]void translate ( int dx, int dy )
[2]void translate ( const QPoint & point )
*/

HB_FUNC_STATIC( QREGION_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRegion_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion translated ( int dx, int dy ) const
*/
void QRegion_translated1()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->translated( PINT(1), PINT(2) ) );
    Qt4xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
QRegion translated ( const QPoint & p ) const
*/
void QRegion_translated2()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->translated( *PQPOINT(1) ) );
    Qt4xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
[1]QRegion translated ( int dx, int dy ) const
[2]QRegion translated ( const QPoint & p ) const
*/

HB_FUNC_STATIC( QREGION_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QRegion_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QRegion_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion united ( const QRegion & r ) const
*/
void QRegion_united1()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->united( *PQREGION(1) ) );
    Qt4xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
QRegion united ( const QRect & rect ) const
*/
void QRegion_united2()
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
    QRegion * ptr = new QRegion( obj->united( *PQRECT(1) ) );
    Qt4xHb::createReturnClass( ptr, "QREGION", true );
  }
}

/*
[1]QRegion united ( const QRegion & r ) const
[2]QRegion united ( const QRect & rect ) const
*/

HB_FUNC_STATIC( QREGION_UNITED )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    QRegion_united1();
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    QRegion_united2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QRegion xored ( const QRegion & r ) const
*/
HB_FUNC_STATIC( QREGION_XORED )
{
  QRegion * obj = (QRegion *) Qt4xHb::itemGetPtrStackSelfItem();

  if( obj )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQREGION(1) )
    {
#endif
      QRegion * ptr = new QRegion( obj->xored( *PQREGION(1) ) );
      Qt4xHb::createReturnClass( ptr, "QREGION", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
#endif
  }
}

HB_FUNC_STATIC( QREGION_NEWFROM )
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

HB_FUNC_STATIC( QREGION_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QREGION_NEWFROM );
}

HB_FUNC_STATIC( QREGION_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QREGION_NEWFROM );
}

HB_FUNC_STATIC( QREGION_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QREGION_SETSELFDESTRUCTION )
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
