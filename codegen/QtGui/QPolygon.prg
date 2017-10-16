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

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD delete
   METHOD boundingRect
   METHOD containsPoint
   METHOD intersected
   METHOD point1
   METHOD point2
   METHOD point
   METHOD putPoints2
   METHOD putPoints
   METHOD setPoint1
   METHOD setPoint2
   METHOD setPoint
   METHOD subtracted
   METHOD swap
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

#include <QPolygon>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPolygon ()
*/
HB_FUNC_STATIC( QPOLYGON_NEW1 )
{
  QPolygon * o = new QPolygon ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygon ( int size )
*/
HB_FUNC_STATIC( QPOLYGON_NEW2 )
{
  QPolygon * o = new QPolygon ( PINT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygon ( const QPolygon & polygon )
*/
HB_FUNC_STATIC( QPOLYGON_NEW3 )
{
  QPolygon * o = new QPolygon ( *PQPOLYGON(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QPolygon ( const QVector<QPoint> & points )
*/
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

/*
QPolygon ( const QRect & rectangle, bool closed = false )
*/
HB_FUNC_STATIC( QPOLYGON_NEW5 )
{
  QPolygon * o = new QPolygon ( *PQRECT(1), OPBOOL(2,false) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QPolygon ()
//[2]QPolygon ( int size )
//[3]QPolygon ( const QPolygon & polygon )
//[4]QPolygon ( const QVector<QPoint> & points )
//[5]QPolygon ( const QRect & rectangle, bool closed = false )

HB_FUNC_STATIC( QPOLYGON_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW3 );
  }
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW4 );
  }
  else if( ISBETWEEN(1,2) && ISQRECT(1) && (ISLOG(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QPOLYGON_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QRect boundingRect () const
*/
$method=|QRect|boundingRect|

/*
bool containsPoint ( const QPoint & point, Qt::FillRule fillRule ) const
*/
$method=|bool|containsPoint|const QPoint &,Qt::FillRule

/*
QPolygon intersected ( const QPolygon & r ) const
*/
$method=|QPolygon|intersected|const QPolygon &

/*
void point ( int index, int * x, int * y ) const
*/
$method=|void|point,point1|int,int *,int *

/*
QPoint point ( int index ) const
*/
$method=|QPoint|point,point2|int

//[1]void point ( int index, int * x, int * y ) const
//[2]QPoint point ( int index ) const

HB_FUNC_STATIC( QPOLYGON_POINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPOLYGON_POINT1 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_POINT2 );
  }
}

/*
void putPoints ( int index, int nPoints, int firstx, int firsty, ... )
*/
%% TODO: implementar ?

/*
void putPoints ( int index, int nPoints, const QPolygon & fromPolygon, int fromIndex = 0 )
*/
$method=|void|putPoints,putPoints2|int,int,const QPolygon &,int=0

//[1]void putPoints ( int index, int nPoints, int firstx, int firsty, ... )
//[2]void putPoints ( int index, int nPoints, const QPolygon & fromPolygon, int fromIndex = 0 )

HB_FUNC_STATIC( QPOLYGON_PUTPOINTS )
{
  HB_FUNC_EXEC( QPOLYGON_PUTPOINTS2 );
}

/*
void setPoint ( int index, int x, int y )
*/
$method=|void|setPoint,setPoint1|int,int,int

/*
void setPoint ( int index, const QPoint & point )
*/
$method=|void|setPoint,setPoint2|int,const QPoint &

//[1]void setPoint ( int index, int x, int y )
//[2]void setPoint ( int index, const QPoint & point )

HB_FUNC_STATIC( QPOLYGON_SETPOINT )
{
  if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QPOLYGON_SETPOINT1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISQPOINT(2) )
  {
    HB_FUNC_EXEC( QPOLYGON_SETPOINT2 );
  }
}

/*
QPolygon subtracted ( const QPolygon & r ) const
*/
$method=|QPolygon|subtracted|const QPolygon &

/*
void swap ( QPolygon & other )
*/
$method=|void|swap|QPolygon &

/*
void translate ( int dx, int dy )
*/
$method=|void|translate,translate1|int,int

/*
void translate ( const QPoint & offset )
*/
$method=|void|translate,translate2|const QPoint &

//[1]void translate ( int dx, int dy )
//[2]void translate ( const QPoint & offset )

HB_FUNC_STATIC( QPOLYGON_TRANSLATE )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOLYGON_TRANSLATE1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_TRANSLATE2 );
  }
}

/*
QPolygon translated ( int dx, int dy ) const
*/
$method=|QPolygon|translated,translated1|int,int

/*
QPolygon translated ( const QPoint & offset ) const
*/
$method=|QPolygon|translated,translated2|const QPoint &

//[1]QPolygon translated ( int dx, int dy ) const
//[2]QPolygon translated ( const QPoint & offset ) const

HB_FUNC_STATIC( QPOLYGON_TRANSLATED )
{
  if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOLYGON_TRANSLATED1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPOLYGON_TRANSLATED2 );
  }
}

/*
QPolygon united ( const QPolygon & r ) const
*/
$method=|QPolygon|united|const QPolygon &

$extraMethods

#pragma ENDDUMP
