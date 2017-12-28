$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECT
REQUEST QPOLYGON
REQUEST QPOINT
#endif

CLASS QPolygon

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new4
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

$destructor

#pragma BEGINDUMP

#include <QPolygon>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QPolygon ()
$internalConstructor=|new1|

$prototype=QPolygon ( int size )
$internalConstructor=|new2|int

$prototype=QPolygon ( const QPolygon & polygon )
$internalConstructor=|new3|const QPolygon &

$prototype=QPolygon ( const QVector<QPoint> & points )
HB_FUNC_STATIC( QPOLYGON_NEW4 )
{
  QVector<QPoint> par1;
  PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
  int i1;
  int nLen1 = hb_arrayLen(aList1);
  for (i1=0;i1<nLen1;i1++)
  {
    par1 << *(QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
  }
  QPolygon * o = new QPolygon ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

$prototype=QPolygon ( const QRect & rectangle, bool closed = false )
$internalConstructor=|new5|const QRect &,bool=false

//[1]QPolygon ()
//[2]QPolygon ( int size )
//[3]QPolygon ( const QPolygon & polygon )
//[4]QPolygon ( const QVector<QPoint> & points )
//[5]QPolygon ( const QRect & rectangle, bool closed = false )

HB_FUNC_STATIC( QPOLYGON_NEW )
{
  if( ISNUMPAR(0) )
  {
    QPolygon_new1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygon_new2();
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    QPolygon_new3();
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW4 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISLOG(2)||ISNIL(2)) )
  {
    QPolygon_new5();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

$prototype=QRect boundingRect () const
$method=|QRect|boundingRect|

$prototype=bool containsPoint ( const QPoint & point, Qt::FillRule fillRule ) const
$method=|bool|containsPoint|const QPoint &,Qt::FillRule

$prototype=QPolygon intersected ( const QPolygon & r ) const
$method=|QPolygon|intersected|const QPolygon &

$prototype=void point ( int index, int * x, int * y ) const
$internalMethod=|void|point,point1|int,int *,int *

$prototype=QPoint point ( int index ) const
$internalMethod=|QPoint|point,point2|int

//[1]void point ( int index, int * x, int * y ) const
//[2]QPoint point ( int index ) const

HB_FUNC_STATIC( QPOLYGON_POINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPolygon_point1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QPolygon_point2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=void putPoints ( int index, int nPoints, int firstx, int firsty, ... )
%% TODO: implementar ?

$prototype=void putPoints ( int index, int nPoints, const QPolygon & fromPolygon, int fromIndex = 0 )
$method=|void|putPoints,putPoints2|int,int,const QPolygon &,int=0

//[1]void putPoints ( int index, int nPoints, int firstx, int firsty, ... )
//[2]void putPoints ( int index, int nPoints, const QPolygon & fromPolygon, int fromIndex = 0 )

HB_FUNC_STATIC( QPOLYGON_PUTPOINTS )
{
  HB_FUNC_EXEC( QPOLYGON_PUTPOINTS2 );
}

$prototype=void setPoint ( int index, int x, int y )
$internalMethod=|void|setPoint,setPoint1|int,int,int

$prototype=void setPoint ( int index, const QPoint & point )
$internalMethod=|void|setPoint,setPoint2|int,const QPoint &

//[1]void setPoint ( int index, int x, int y )
//[2]void setPoint ( int index, const QPoint & point )

HB_FUNC_STATIC( QPOLYGON_SETPOINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    QPolygon_setPoint1();
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    QPolygon_setPoint2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPolygon subtracted ( const QPolygon & r ) const
$method=|QPolygon|subtracted|const QPolygon &

$prototype=void swap ( QPolygon & other )
$method=|void|swap|QPolygon &

$prototype=void translate ( int dx, int dy )
$internalMethod=|void|translate,translate1|int,int

$prototype=void translate ( const QPoint & offset )
$internalMethod=|void|translate,translate2|const QPoint &

//[1]void translate ( int dx, int dy )
//[2]void translate ( const QPoint & offset )

HB_FUNC_STATIC( QPOLYGON_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygon_translate1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPolygon_translate2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPolygon translated ( int dx, int dy ) const
$internalMethod=|QPolygon|translated,translated1|int,int

$prototype=QPolygon translated ( const QPoint & offset ) const
$internalMethod=|QPolygon|translated,translated2|const QPoint &

//[1]QPolygon translated ( int dx, int dy ) const
//[2]QPolygon translated ( const QPoint & offset ) const

HB_FUNC_STATIC( QPOLYGON_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    QPolygon_translated1();
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    QPolygon_translated2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=QPolygon united ( const QPolygon & r ) const
$method=|QPolygon|united|const QPolygon &

$extraMethods

#pragma ENDDUMP
