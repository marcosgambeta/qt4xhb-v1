/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR4D
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR2D
REQUEST QVECTOR3D
#endif

CLASS QVector4D

   DATA pointer
   DATA class_id INIT Class_Id_QVector4D
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new
   METHOD delete
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setW
   METHOD setX
   METHOD setY
   METHOD setZ
   METHOD toPoint
   METHOD toPointF
   METHOD toVector2D
   METHOD toVector2DAffine
   METHOD toVector3D
   METHOD toVector3DAffine
   METHOD w
   METHOD x
   METHOD y
   METHOD z
   METHOD dotProduct
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVector4D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVector4D>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector2D>
#include <QVector3D>

/*
QVector4D ()
*/
HB_FUNC_STATIC( QVECTOR4D_NEW1 )
{
  QVector4D * o = NULL;
  o = new QVector4D (  );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector4D ( qreal xpos, qreal ypos, qreal zpos, qreal wpos )
*/
HB_FUNC_STATIC( QVECTOR4D_NEW2 )
{
  QVector4D * o = NULL;
  o = new QVector4D ( PQREAL(1), PQREAL(2), PQREAL(3), PQREAL(4) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector4D ( const QPoint & point )
*/
HB_FUNC_STATIC( QVECTOR4D_NEW3 )
{
  QVector4D * o = NULL;
  QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector4D ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector4D ( const QPointF & point )
*/
HB_FUNC_STATIC( QVECTOR4D_NEW4 )
{
  QVector4D * o = NULL;
  QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector4D ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector4D ( const QVector2D & vector )
*/
HB_FUNC_STATIC( QVECTOR4D_NEW5 )
{
  QVector4D * o = NULL;
  QVector2D * par1 = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector4D ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector4D ( const QVector2D & vector, qreal zpos, qreal wpos )
*/
HB_FUNC_STATIC( QVECTOR4D_NEW6 )
{
  QVector4D * o = NULL;
  QVector2D * par1 = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector4D ( *par1, PQREAL(2), PQREAL(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector4D ( const QVector3D & vector )
*/
HB_FUNC_STATIC( QVECTOR4D_NEW7 )
{
  QVector4D * o = NULL;
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector4D ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QVector4D ( const QVector3D & vector, qreal wpos )
*/
HB_FUNC_STATIC( QVECTOR4D_NEW8 )
{
  QVector4D * o = NULL;
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector4D ( *par1, PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1]QVector4D ()
//[2]QVector4D ( qreal xpos, qreal ypos, qreal zpos, qreal wpos )
//[3]QVector4D ( const QPoint & point )
//[4]QVector4D ( const QPointF & point )
//[5]QVector4D ( const QVector2D & vector )
//[6]QVector4D ( const QVector2D & vector, qreal zpos, qreal wpos )
//[7]QVector4D ( const QVector3D & vector )
//[8]QVector4D ( const QVector3D & vector, qreal wpos )

HB_FUNC_STATIC( QVECTOR4D_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW1 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR2D(1) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW5 );
  }
  else if( ISNUMPAR(3) && ISQVECTOR2D(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW6 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW7 );
  }
  else if( ISNUMPAR(2) && ISQVECTOR3D(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVECTOR4D_NEW8 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVECTOR4D_DELETE )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
bool isNull () const
*/
HB_FUNC_STATIC( QVECTOR4D_ISNULL )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->isNull (  ) );
  }
}


/*
qreal length () const
*/
HB_FUNC_STATIC( QVECTOR4D_LENGTH )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->length (  );
    hb_retnd( r );
  }
}


/*
qreal lengthSquared () const
*/
HB_FUNC_STATIC( QVECTOR4D_LENGTHSQUARED )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->lengthSquared (  );
    hb_retnd( r );
  }
}


/*
void normalize ()
*/
HB_FUNC_STATIC( QVECTOR4D_NORMALIZE )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->normalize (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVector4D normalized () const
*/
HB_FUNC_STATIC( QVECTOR4D_NORMALIZED )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->normalized (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}


/*
void setW ( qreal w )
*/
HB_FUNC_STATIC( QVECTOR4D_SETW )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setW ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setX ( qreal x )
*/
HB_FUNC_STATIC( QVECTOR4D_SETX )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY ( qreal y )
*/
HB_FUNC_STATIC( QVECTOR4D_SETY )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZ ( qreal z )
*/
HB_FUNC_STATIC( QVECTOR4D_SETZ )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setZ ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPoint toPoint () const
*/
HB_FUNC_STATIC( QVECTOR4D_TOPOINT )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QPointF toPointF () const
*/
HB_FUNC_STATIC( QVECTOR4D_TOPOINTF )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QVector2D toVector2D () const
*/
HB_FUNC_STATIC( QVECTOR4D_TOVECTOR2D )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->toVector2D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}


/*
QVector2D toVector2DAffine () const
*/
HB_FUNC_STATIC( QVECTOR4D_TOVECTOR2DAFFINE )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->toVector2DAffine (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}


/*
QVector3D toVector3D () const
*/
HB_FUNC_STATIC( QVECTOR4D_TOVECTOR3D )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->toVector3D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
QVector3D toVector3DAffine () const
*/
HB_FUNC_STATIC( QVECTOR4D_TOVECTOR3DAFFINE )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->toVector3DAffine (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}


/*
qreal w () const
*/
HB_FUNC_STATIC( QVECTOR4D_W )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->w (  );
    hb_retnd( r );
  }
}


/*
qreal x () const
*/
HB_FUNC_STATIC( QVECTOR4D_X )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->x (  );
    hb_retnd( r );
  }
}


/*
qreal y () const
*/
HB_FUNC_STATIC( QVECTOR4D_Y )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->y (  );
    hb_retnd( r );
  }
}


/*
qreal z () const
*/
HB_FUNC_STATIC( QVECTOR4D_Z )
{
  QVector4D * obj = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->z (  );
    hb_retnd( r );
  }
}



/*
qreal dotProduct ( const QVector4D & v1, const QVector4D & v2 )
*/
HB_FUNC_STATIC( QVECTOR4D_DOTPRODUCT )
{
  QVector4D * par1 = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector4D * par2 = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  qreal r = QVector4D::dotProduct ( *par1, *par2 );
  hb_retnd( r );
}




// TODO: implementar função
// bool qFuzzyCompare ( const QVector4D & v1, const QVector4D & v2 )


HB_FUNC_STATIC( QVECTOR4D_NEWFROM )
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

HB_FUNC_STATIC( QVECTOR4D_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVECTOR4D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR4D_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVECTOR4D_NEWFROM );
}

HB_FUNC_STATIC( QVECTOR4D_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVECTOR4D_SETSELFDESTRUCTION )
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
