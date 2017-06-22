/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR3D
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR2D
REQUEST QVECTOR4D
#endif

CLASS QVector3D

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new
   METHOD delete
   METHOD distanceToLine
   METHOD distanceToPlane1
   METHOD distanceToPlane2
   METHOD distanceToPlane
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD toPoint
   METHOD toPointF
   METHOD toVector2D
   METHOD toVector4D
   METHOD x
   METHOD y
   METHOD z
   METHOD crossProduct
   METHOD dotProduct
   METHOD normal1
   METHOD normal2
   METHOD normal
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVector3D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVector3D>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector2D>
#include <QVector4D>

/*
QVector3D ()
*/
HB_FUNC_STATIC( QVECTOR3D_NEW1 )
{
  QVector3D * o = new QVector3D ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector3D ( qreal xpos, qreal ypos, qreal zpos )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW2 )
{
  QVector3D * o = new QVector3D ( PQREAL(1), PQREAL(2), PQREAL(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector3D ( const QPoint & point )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW3 )
{
  QVector3D * o = new QVector3D ( *PQPOINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector3D ( const QPointF & point )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW4 )
{
  QVector3D * o = new QVector3D ( *PQPOINTF(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector3D ( const QVector2D & vector )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW5 )
{
  QVector3D * o = new QVector3D ( *PQVECTOR2D(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector3D ( const QVector2D & vector, qreal zpos )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW6 )
{
  QVector3D * o = new QVector3D ( *PQVECTOR2D(1), PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector3D ( const QVector4D & vector )
*/
HB_FUNC_STATIC( QVECTOR3D_NEW7 )
{
  QVector3D * o = new QVector3D ( *PQVECTOR4D(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QVector3D ()
//[2]QVector3D ( qreal xpos, qreal ypos, qreal zpos )
//[3]QVector3D ( const QPoint & point )
//[4]QVector3D ( const QPointF & point )
//[5]QVector3D ( const QVector2D & vector )
//[6]QVector3D ( const QVector2D & vector, qreal zpos )
//[7]QVector3D ( const QVector4D & vector )

HB_FUNC_STATIC( QVECTOR3D_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW5 );
  }
  else if( ISNUMPAR(2) && ISQVECTOR2D(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NEW7 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVECTOR3D_DELETE )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal distanceToLine ( const QVector3D & point, const QVector3D & direction ) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOLINE )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQREAL( obj->distanceToLine ( *par1, *par2 ) );
  }
}


/*
qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE1 )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQREAL( obj->distanceToPlane ( *par1, *par2 ) );
  }
}


/*
qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const
*/
HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE2 )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par3 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQREAL( obj->distanceToPlane ( *par1, *par2, *par3 ) );
  }
}


//[1]qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
//[2]qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const

HB_FUNC_STATIC( QVECTOR3D_DISTANCETOPLANE )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    HB_FUNC_EXEC( QVECTOR3D_DISTANCETOPLANE1 );
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    HB_FUNC_EXEC( QVECTOR3D_DISTANCETOPLANE2 );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QVECTOR3D_ISNULL )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
qreal length () const
*/
HB_FUNC_STATIC( QVECTOR3D_LENGTH )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->length () );
  }
}


/*
qreal lengthSquared () const
*/
HB_FUNC_STATIC( QVECTOR3D_LENGTHSQUARED )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->lengthSquared () );
  }
}


/*
void normalize ()
*/
HB_FUNC_STATIC( QVECTOR3D_NORMALIZE )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->normalize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVector3D normalized () const
*/
HB_FUNC_STATIC( QVECTOR3D_NORMALIZED )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->normalized () );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
void setX ( qreal x )
*/
HB_FUNC_STATIC( QVECTOR3D_SETX )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY ( qreal y )
*/
HB_FUNC_STATIC( QVECTOR3D_SETY )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZ ( qreal z )
*/
HB_FUNC_STATIC( QVECTOR3D_SETZ )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setZ ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPoint toPoint () const
*/
HB_FUNC_STATIC( QVECTOR3D_TOPOINT )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPointF toPointF () const
*/
HB_FUNC_STATIC( QVECTOR3D_TOPOINTF )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QVector2D toVector2D () const
*/
HB_FUNC_STATIC( QVECTOR3D_TOVECTOR2D )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->toVector2D () );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}


/*
QVector4D toVector4D () const
*/
HB_FUNC_STATIC( QVECTOR3D_TOVECTOR4D )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->toVector4D () );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}


/*
qreal x () const
*/
HB_FUNC_STATIC( QVECTOR3D_X )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->x () );
  }
}


/*
qreal y () const
*/
HB_FUNC_STATIC( QVECTOR3D_Y )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->y () );
  }
}


/*
qreal z () const
*/
HB_FUNC_STATIC( QVECTOR3D_Z )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->z () );
  }
}



/*
QVector3D crossProduct ( const QVector3D & v1, const QVector3D & v2 )
*/
HB_FUNC_STATIC( QVECTOR3D_CROSSPRODUCT )
{
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * ptr = new QVector3D( QVector3D::crossProduct ( *par1, *par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
}


/*
qreal dotProduct ( const QVector3D & v1, const QVector3D & v2 )
*/
HB_FUNC_STATIC( QVECTOR3D_DOTPRODUCT )
{
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  RQREAL( QVector3D::dotProduct ( *par1, *par2 ) );
}


/*
QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
*/
HB_FUNC_STATIC( QVECTOR3D_NORMAL1 )
{
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * ptr = new QVector3D( QVector3D::normal ( *par1, *par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
}


/*
QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )
*/
HB_FUNC_STATIC( QVECTOR3D_NORMAL2 )
{
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par3 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * ptr = new QVector3D( QVector3D::normal ( *par1, *par2, *par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
}


//[1]QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
//[2]QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )

HB_FUNC_STATIC( QVECTOR3D_NORMAL )
{
  if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISQVECTOR3D(2) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NORMAL1 );
  }
  else if( ISNUMPAR(3) && ISQVECTOR3D(1) && ISQVECTOR3D(2) && ISQVECTOR3D(3) )
  {
    HB_FUNC_EXEC( QVECTOR3D_NORMAL2 );
  }
}



// TODO: implementar função
// bool qFuzzyCompare ( const QVector3D & v1, const QVector3D & v2 )


HB_FUNC_STATIC( QVECTOR3D_NEWFROM )
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

HB_FUNC_STATIC( QVECTOR3D_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVECTOR3D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR3D_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVECTOR3D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR3D_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVECTOR3D_SETSELFDESTRUCTION )
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
