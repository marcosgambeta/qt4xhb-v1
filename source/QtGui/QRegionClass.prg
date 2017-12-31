/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QREGION
#endif

CLASS QRegion

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD contains1
   METHOD contains2
   METHOD contains
   METHOD intersected1
   METHOD intersected2
   METHOD intersected
   METHOD intersects1
   METHOD intersects2
   METHOD intersects
   METHOD isEmpty
   METHOD rectCount
   METHOD rects
   METHOD subtracted
   METHOD swap
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD united1
   METHOD united2
   METHOD united
   METHOD xored

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QRegion
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QRegion>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector>

/*
QRegion ()
*/
HB_FUNC_STATIC( QREGION_NEW1 )
{
  QRegion * o = new QRegion ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QRegion ( int x, int y, int w, int h, RegionType t = Rectangle )
*/
HB_FUNC_STATIC( QREGION_NEW2 )
{
  int par5 = ISNIL(5)? (int) QRegion::Rectangle : hb_parni(5);
  QRegion * o = new QRegion ( PINT(1), PINT(2), PINT(3), PINT(4), (QRegion::RegionType) par5 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QRegion ( const QPolygon & a, Qt::FillRule fillRule = Qt::OddEvenFill )
*/
HB_FUNC_STATIC( QREGION_NEW3 )
{
  int par2 = ISNIL(2)? (int) Qt::OddEvenFill : hb_parni(2);
  QRegion * o = new QRegion ( *PQPOLYGON(1), (Qt::FillRule) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QRegion ( const QRegion & r )
*/
HB_FUNC_STATIC( QREGION_NEW4 )
{
  QRegion * o = new QRegion ( *PQREGION(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QRegion ( const QBitmap & bm )
*/
HB_FUNC_STATIC( QREGION_NEW5 )
{
  QRegion * o = new QRegion ( *PQBITMAP(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QRegion ( const QRect & r, RegionType t = Rectangle )
*/
HB_FUNC_STATIC( QREGION_NEW6 )
{
  int par2 = ISNIL(2)? (int) QRegion::Rectangle : hb_parni(2);
  QRegion * o = new QRegion ( *PQRECT(1), (QRegion::RegionType) par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QRegion ()
//[2]QRegion ( int x, int y, int w, int h, RegionType t = Rectangle )
//[3]QRegion ( const QPolygon & a, Qt::FillRule fillRule = Qt::OddEvenFill )
//[4]QRegion ( const QRegion & r )
//[5]QRegion ( const QBitmap & bm )
//[6]QRegion ( const QRect & r, RegionType t = Rectangle )

HB_FUNC_STATIC( QREGION_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QREGION_NEW1 );
  }
  else if( ISBETWEEN(4,5) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && (ISNUM(5)||ISNIL(5)) )
  {
    HB_FUNC_EXEC( QREGION_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQPOLYGON(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QREGION_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QREGION_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQBITMAP(1) )
  {
    HB_FUNC_EXEC( QREGION_NEW5 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QREGION_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QREGION_DELETE )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
QRect boundingRect () const
*/
HB_FUNC_STATIC( QREGION_BOUNDINGRECT )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
bool contains ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QREGION_CONTAINS1 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQPOINT(1) ) );
  }
}

/*
bool contains ( const QRect & r ) const
*/
HB_FUNC_STATIC( QREGION_CONTAINS2 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->contains ( *PQRECT(1) ) );
  }
}

//[1]bool contains ( const QPoint & p ) const
//[2]bool contains ( const QRect & r ) const

HB_FUNC_STATIC( QREGION_CONTAINS )
{
  if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QREGION_CONTAINS1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QREGION_CONTAINS2 );
  }
}

/*
QRegion intersected ( const QRegion & r ) const
*/
HB_FUNC_STATIC( QREGION_INTERSECTED1 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->intersected ( *PQREGION(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QRegion intersected ( const QRect & rect ) const
*/
HB_FUNC_STATIC( QREGION_INTERSECTED2 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->intersected ( *PQRECT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

//[1]QRegion intersected ( const QRegion & r ) const
//[2]QRegion intersected ( const QRect & rect ) const

HB_FUNC_STATIC( QREGION_INTERSECTED )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QREGION_INTERSECTED1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QREGION_INTERSECTED2 );
  }
}

/*
bool intersects ( const QRegion & region ) const
*/
HB_FUNC_STATIC( QREGION_INTERSECTS1 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->intersects ( *PQREGION(1) ) );
  }
}

/*
bool intersects ( const QRect & rect ) const
*/
HB_FUNC_STATIC( QREGION_INTERSECTS2 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->intersects ( *PQRECT(1) ) );
  }
}

//[1]bool intersects ( const QRegion & region ) const
//[2]bool intersects ( const QRect & rect ) const

HB_FUNC_STATIC( QREGION_INTERSECTS )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QREGION_INTERSECTS1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QREGION_INTERSECTS2 );
  }
}

/*
bool isEmpty () const
*/
HB_FUNC_STATIC( QREGION_ISEMPTY )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isEmpty () );
  }
}

/*
int rectCount () const
*/
HB_FUNC_STATIC( QREGION_RECTCOUNT )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->rectCount () );
  }
}

/*
QVector<QRect> rects () const
*/
HB_FUNC_STATIC( QREGION_RECTS )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector<QRect> list = obj->rects ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QRECT" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
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
        hb_itemPutPtr( pItem, (QRect *) new QRect ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
        hb_itemRelease( pItem );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QRegion subtracted ( const QRegion & r ) const
*/
HB_FUNC_STATIC( QREGION_SUBTRACTED )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->subtracted ( *PQREGION(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
void swap ( QRegion & other )
*/
HB_FUNC_STATIC( QREGION_SWAP )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * par1 = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( int dx, int dy )
*/
HB_FUNC_STATIC( QREGION_TRANSLATE1 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( PINT(1), PINT(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( const QPoint & point )
*/
HB_FUNC_STATIC( QREGION_TRANSLATE2 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( *PQPOINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate ( int dx, int dy )
//[2]void translate ( const QPoint & point )

HB_FUNC_STATIC( QREGION_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QREGION_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QREGION_TRANSLATE2 );
  }
}

/*
QRegion translated ( int dx, int dy ) const
*/
HB_FUNC_STATIC( QREGION_TRANSLATED1 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->translated ( PINT(1), PINT(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QRegion translated ( const QPoint & p ) const
*/
HB_FUNC_STATIC( QREGION_TRANSLATED2 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->translated ( *PQPOINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

//[1]QRegion translated ( int dx, int dy ) const
//[2]QRegion translated ( const QPoint & p ) const

HB_FUNC_STATIC( QREGION_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QREGION_TRANSLATED1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QREGION_TRANSLATED2 );
  }
}

/*
QRegion united ( const QRegion & r ) const
*/
HB_FUNC_STATIC( QREGION_UNITED1 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->united ( *PQREGION(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

/*
QRegion united ( const QRect & rect ) const
*/
HB_FUNC_STATIC( QREGION_UNITED2 )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->united ( *PQRECT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}

//[1]QRegion united ( const QRegion & r ) const
//[2]QRegion united ( const QRect & rect ) const

HB_FUNC_STATIC( QREGION_UNITED )
{
  if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QREGION_UNITED1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QREGION_UNITED2 );
  }
}

/*
QRegion xored ( const QRegion & r ) const
*/
HB_FUNC_STATIC( QREGION_XORED )
{
  QRegion * obj = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * ptr = new QRegion( obj->xored ( *PQREGION(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
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
