/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
REQUEST QLINEF
REQUEST QLINE
#endif

CLASS QLineF

   DATA pointer
   DATA class_id INIT Class_Id_QLineF
   DATA class_flags INIT 0
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD p1
   METHOD p2
   METHOD x1
   METHOD x2
   METHOD y1
   METHOD y2
   METHOD angle
   METHOD angleTo
   METHOD dx
   METHOD dy
   METHOD isNull
   METHOD length
   METHOD normalVector
   METHOD pointAt
   METHOD setP1
   METHOD setP2
   METHOD setAngle
   METHOD setLength
   METHOD setLine
   METHOD setPoints
   METHOD toLine
   METHOD translate1
   METHOD translate2
   METHOD translate
   METHOD translated1
   METHOD translated2
   METHOD translated
   METHOD unitVector
   METHOD fromPolar
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QLineF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QLineF>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QLineF()
*/
HB_FUNC_STATIC( QLINEF_NEW1 )
{
  QLineF * o = NULL;
  o = new QLineF ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QLineF(const QPointF & p1, const QPointF & p2)
*/
HB_FUNC_STATIC( QLINEF_NEW2 )
{
  QLineF * o = NULL;
  QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPointF * par2 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLineF ( *par1, *par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QLineF(qreal x1, qreal y1, qreal x2, qreal y2)
*/
HB_FUNC_STATIC( QLINEF_NEW3 )
{
  QLineF * o = NULL;
  o = new QLineF ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QLineF(const QLine & line)
*/
HB_FUNC_STATIC( QLINEF_NEW4 )
{
  QLineF * o = NULL;
  QLine * par1 = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLineF ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}


//[1]QLineF()
//[2]QLineF(const QPointF & p1, const QPointF & p2)
//[3]QLineF(qreal x1, qreal y1, qreal x2, qreal y2)
//[4]QLineF(const QLine & line)

HB_FUNC_STATIC( QLINEF_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QLINEF_NEW1 );
  }
  else if( ISNUMPAR(2) && ISQPOINTF(1) && ISQPOINTF(2) )
  {
    HB_FUNC_EXEC( QLINEF_NEW2 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QLINEF_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    HB_FUNC_EXEC( QLINEF_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QLINEF_DELETE )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QPointF p1() const
*/
HB_FUNC_STATIC( QLINEF_P1 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->p1 () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPointF p2() const
*/
HB_FUNC_STATIC( QLINEF_P2 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->p2 () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
qreal x1() const
*/
HB_FUNC_STATIC( QLINEF_X1 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->x1 ();
    hb_retnd( r );
  }
}


/*
qreal x2() const
*/
HB_FUNC_STATIC( QLINEF_X2 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->x2 ();
    hb_retnd( r );
  }
}


/*
qreal y1() const
*/
HB_FUNC_STATIC( QLINEF_Y1 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->y1 ();
    hb_retnd( r );
  }
}


/*
qreal y2() const
*/
HB_FUNC_STATIC( QLINEF_Y2 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->y2 ();
    hb_retnd( r );
  }
}


/*
qreal angle() const
*/
HB_FUNC_STATIC( QLINEF_ANGLE )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->angle ();
    hb_retnd( r );
  }
}


/*
qreal angleTo(const QLineF & line) const
*/
HB_FUNC_STATIC( QLINEF_ANGLETO )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineF * par1 = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qreal r = obj->angleTo ( *par1 );
    hb_retnd( r );
  }
}


/*
qreal dx() const
*/
HB_FUNC_STATIC( QLINEF_DX )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->dx ();
    hb_retnd( r );
  }
}


/*
qreal dy() const
*/
HB_FUNC_STATIC( QLINEF_DY )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->dy ();
    hb_retnd( r );
  }
}



/*
bool isNull() const
*/
HB_FUNC_STATIC( QLINEF_ISNULL )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull () );
  }
}


/*
qreal length() const
*/
HB_FUNC_STATIC( QLINEF_LENGTH )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->length ();
    hb_retnd( r );
  }
}


/*
QLineF normalVector() const
*/
HB_FUNC_STATIC( QLINEF_NORMALVECTOR )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineF * ptr = new QLineF( obj->normalVector () );
    _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}


/*
QPointF pointAt(qreal t) const
*/
HB_FUNC_STATIC( QLINEF_POINTAT )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->pointAt ( PQREAL(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
void setP1(const QPointF & p1)
*/
HB_FUNC_STATIC( QLINEF_SETP1 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setP1 ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setP2(const QPointF & p2)
*/
HB_FUNC_STATIC( QLINEF_SETP2 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setP2 ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setAngle(qreal angle)
*/
HB_FUNC_STATIC( QLINEF_SETANGLE )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setAngle ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLength(qreal length)
*/
HB_FUNC_STATIC( QLINEF_SETLENGTH )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLength ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setLine(qreal x1, qreal y1, qreal x2, qreal y2)
*/
HB_FUNC_STATIC( QLINEF_SETLINE )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setLine ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setPoints(const QPointF & p1, const QPointF & p2)
*/
HB_FUNC_STATIC( QLINEF_SETPOINTS )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * par2 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setPoints ( *par1, *par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QLine toLine() const
*/
HB_FUNC_STATIC( QLINEF_TOLINE )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLine * ptr = new QLine( obj->toLine () );
    _qt4xhb_createReturnClass ( ptr, "QLINE", true );
  }
}


/*
void translate(const QPointF & offset)
*/
HB_FUNC_STATIC( QLINEF_TRANSLATE1 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate(qreal dx, qreal dy)
*/
HB_FUNC_STATIC( QLINEF_TRANSLATE2 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->translate ( PQREAL(1), PQREAL(2) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void translate(const QPointF & offset)
//[2]void translate(qreal dx, qreal dy)

HB_FUNC_STATIC( QLINEF_TRANSLATE )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QLINEF_TRANSLATE1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINEF_TRANSLATE2 );
  }
}

/*
QLineF translated(const QPointF & offset) const
*/
HB_FUNC_STATIC( QLINEF_TRANSLATED1 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QLineF * ptr = new QLineF( obj->translated ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}


/*
QLineF translated(qreal dx, qreal dy) const
*/
HB_FUNC_STATIC( QLINEF_TRANSLATED2 )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineF * ptr = new QLineF( obj->translated ( PQREAL(1), PQREAL(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}


//[1]QLineF translated(const QPointF & offset) const
//[2]QLineF translated(qreal dx, qreal dy) const

HB_FUNC_STATIC( QLINEF_TRANSLATED )
{
  if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QLINEF_TRANSLATED1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLINEF_TRANSLATED2 );
  }
}

/*
QLineF unitVector() const
*/
HB_FUNC_STATIC( QLINEF_UNITVECTOR )
{
  QLineF * obj = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineF * ptr = new QLineF( obj->unitVector () );
    _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}



/*
QLineF fromPolar(qreal length, qreal angle)
*/
HB_FUNC_STATIC( QLINEF_FROMPOLAR )
{
  QLineF * ptr = new QLineF( QLineF::fromPolar ( PQREAL(1), PQREAL(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
}


HB_FUNC_STATIC( QLINEF_NEWFROM )
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

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QLINEF_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QLINEF_NEWFROM );
}

HB_FUNC_STATIC( QLINEF_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QLINEF_NEWFROM );
}

HB_FUNC_STATIC( QLINEF_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QLINEF_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }

  hb_itemReturn( self );
}


#pragma ENDDUMP
