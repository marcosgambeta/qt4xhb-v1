$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QPOLYGONF
REQUEST QPOLYGON
#endif

CLASS QPolygonF

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
   METHOD containsPoint
   METHOD intersected
   METHOD isClosed
   METHOD subtracted
   METHOD swap
   METHOD toPolygon
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD united

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPolygonF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPolygonF ()
*/
HB_FUNC_STATIC( QPOLYGONF_NEW1 )
{
  QPolygonF * o = new QPolygonF ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( int size )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW2 )
{
  QPolygonF * o = new QPolygonF ( PINT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( const QPolygonF & polygon )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW3 )
{
  QPolygonF * o = new QPolygonF ( *PQPOLYGONF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( const QVector<QPointF> & points )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW4 )
{
QVector<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QPolygonF * o = new QPolygonF ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( const QRectF & rectangle )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW5 )
{
  QPolygonF * o = new QPolygonF ( *PQRECTF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygonF ( const QPolygon & polygon )
*/
HB_FUNC_STATIC( QPOLYGONF_NEW6 )
{
  QPolygonF * o = new QPolygonF ( *PQPOLYGON(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QPolygonF ()
//[2]QPolygonF ( int size )
//[3]QPolygonF ( const QPolygonF & polygon )
//[4]QPolygonF ( const QVector<QPointF> & points )
//[5]QPolygonF ( const QRectF & rectangle )
//[6]QPolygonF ( const QPolygon & polygon )

HB_FUNC_STATIC( QPOLYGONF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW3 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRectF boundingRect () const
*/
HB_FUNC_STATIC( QPOLYGONF_BOUNDINGRECT )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
bool containsPoint ( const QPointF & point, Qt::FillRule fillRule ) const
*/
HB_FUNC_STATIC( QPOLYGONF_CONTAINSPOINT )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par2 = hb_parni(2);
    RBOOL( obj->containsPoint ( *PQPOINTF(1), (Qt::FillRule) par2 ) );
  }
}

/*
QPolygonF intersected ( const QPolygonF & r ) const
*/
HB_FUNC_STATIC( QPOLYGONF_INTERSECTED )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->intersected ( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
bool isClosed () const
*/
HB_FUNC_STATIC( QPOLYGONF_ISCLOSED )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isClosed () );
  }
}

/*
QPolygonF subtracted ( const QPolygonF & r ) const
*/
HB_FUNC_STATIC( QPOLYGONF_SUBTRACTED )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->subtracted ( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
void swap ( QPolygonF & other )
*/
HB_FUNC_STATIC( QPOLYGONF_SWAP )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->swap ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPolygon toPolygon () const
*/
HB_FUNC_STATIC( QPOLYGONF_TOPOLYGON )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->toPolygon () );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}

/*
void translate ( const QPointF & offset )
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATE1 )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( *PQPOINTF(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void translate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATE2 )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

//[1]void translate ( const QPointF & offset )
//[2]void translate ( qreal dx, qreal dy )

HB_FUNC_STATIC( QPOLYGONF_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_TRANSLATE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOLYGONF_TRANSLATE2 );
  }
}

/*
QPolygonF translated ( const QPointF & offset ) const
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATED1 )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->translated ( *PQPOINTF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

/*
QPolygonF translated ( qreal dx, qreal dy ) const
*/
HB_FUNC_STATIC( QPOLYGONF_TRANSLATED2 )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->translated ( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

//[1]QPolygonF translated ( const QPointF & offset ) const
//[2]QPolygonF translated ( qreal dx, qreal dy ) const

HB_FUNC_STATIC( QPOLYGONF_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QPOLYGONF_TRANSLATED1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOLYGONF_TRANSLATED2 );
  }
}

/*
QPolygonF united ( const QPolygonF & r ) const
*/
HB_FUNC_STATIC( QPOLYGONF_UNITED )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * ptr = new QPolygonF( obj->united ( *PQPOLYGONF(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}

$extraMethods

#pragma ENDDUMP
