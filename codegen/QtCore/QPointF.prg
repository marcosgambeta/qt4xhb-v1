$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
#endif

CLASS QPointF

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD manhattanLength
   METHOD setX
   METHOD setY
   METHOD toPoint
   METHOD x
   METHOD y
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QPointF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QPointF()
*/
HB_FUNC_STATIC( QPOINTF_NEW1 )
{
  QPointF * o = new QPointF ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QPointF(const QPoint & point)
*/
HB_FUNC_STATIC( QPOINTF_NEW2 )
{
  QPointF * o = new QPointF ( *PQPOINT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QPointF(qreal xpos, qreal ypos)
*/
HB_FUNC_STATIC( QPOINTF_NEW3 )
{
  QPointF * o = new QPointF ( PQREAL(1), PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QPointF()
//[2]QPointF(const QPoint & point)
//[3]QPointF(qreal xpos, qreal ypos)

HB_FUNC_STATIC( QPOINTF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QPOINTF_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QPOINTF_NEW2 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QPOINTF_NEW3 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool isNull() const
*/
HB_FUNC_STATIC( QPOINTF_ISNULL )
{
  QPointF * obj = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
qreal manhattanLength() const
*/
HB_FUNC_STATIC( QPOINTF_MANHATTANLENGTH )
{
  QPointF * obj = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->manhattanLength () );
  }
}




/*
void setX(qreal x)
*/
HB_FUNC_STATIC( QPOINTF_SETX )
{
  QPointF * obj = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY(qreal y)
*/
HB_FUNC_STATIC( QPOINTF_SETY )
{
  QPointF * obj = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPoint toPoint() const
*/
HB_FUNC_STATIC( QPOINTF_TOPOINT )
{
  QPointF * obj = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
qreal x() const
*/
HB_FUNC_STATIC( QPOINTF_X )
{
  QPointF * obj = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->x () );
  }
}


/*
qreal y() const
*/
HB_FUNC_STATIC( QPOINTF_Y )
{
  QPointF * obj = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->y () );
  }
}

$extraMethods

#pragma ENDDUMP
