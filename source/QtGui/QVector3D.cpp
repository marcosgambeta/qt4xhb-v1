/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QVector3D>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QVector2D>
#include <QVector4D>

/*
QVector3D ()
*/
HB_FUNC( QVECTOR3D_NEW1 )
{
  QVector3D * o = NULL;
  o = new QVector3D (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QVector3D ( qreal xpos, qreal ypos, qreal zpos )
*/
HB_FUNC( QVECTOR3D_NEW2 )
{
  QVector3D * o = NULL;
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  o = new QVector3D ( par1, par2, par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QVector3D ( const QPoint & point )
*/
HB_FUNC( QVECTOR3D_NEW3 )
{
  QVector3D * o = NULL;
  QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector3D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QVector3D ( const QPointF & point )
*/
HB_FUNC( QVECTOR3D_NEW4 )
{
  QVector3D * o = NULL;
  QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector3D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QVector3D ( const QVector2D & vector )
*/
HB_FUNC( QVECTOR3D_NEW5 )
{
  QVector3D * o = NULL;
  QVector2D * par1 = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector3D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QVector3D ( const QVector2D & vector, qreal zpos )
*/
HB_FUNC( QVECTOR3D_NEW6 )
{
  QVector3D * o = NULL;
  QVector2D * par1 = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  qreal par2 = hb_parnd(2);
  o = new QVector3D ( *par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QVector3D ( const QVector4D & vector )
*/
HB_FUNC( QVECTOR3D_NEW7 )
{
  QVector3D * o = NULL;
  QVector4D * par1 = (QVector4D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVector3D ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVector3D *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1]QVector3D ()
//[2]QVector3D ( qreal xpos, qreal ypos, qreal zpos )
//[3]QVector3D ( const QPoint & point )
//[4]QVector3D ( const QPointF & point )
//[5]QVector3D ( const QVector2D & vector )
//[6]QVector3D ( const QVector2D & vector, qreal zpos )
//[7]QVector3D ( const QVector4D & vector )

HB_FUNC( QVECTOR3D_NEW )
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

HB_FUNC( QVECTOR3D_DELETE )
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
HB_FUNC( QVECTOR3D_DISTANCETOLINE )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    qreal r = obj->distanceToLine ( *par1, *par2 );
    hb_retnd( r );
  }
}


/*
qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
*/
HB_FUNC( QVECTOR3D_DISTANCETOPLANE1 )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    qreal r = obj->distanceToPlane ( *par1, *par2 );
    hb_retnd( r );
  }
}


/*
qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const
*/
HB_FUNC( QVECTOR3D_DISTANCETOPLANE2 )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    QVector3D * par3 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
    qreal r = obj->distanceToPlane ( *par1, *par2, *par3 );
    hb_retnd( r );
  }
}


//[1]qreal distanceToPlane ( const QVector3D & plane, const QVector3D & normal ) const
//[2]qreal distanceToPlane ( const QVector3D & plane1, const QVector3D & plane2, const QVector3D & plane3 ) const

HB_FUNC( QVECTOR3D_DISTANCETOPLANE )
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
HB_FUNC( QVECTOR3D_ISNULL )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
qreal length () const
*/
HB_FUNC( QVECTOR3D_LENGTH )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->length (  );
    hb_retnd( r );
  }
}


/*
qreal lengthSquared () const
*/
HB_FUNC( QVECTOR3D_LENGTHSQUARED )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->lengthSquared (  );
    hb_retnd( r );
  }
}


/*
void normalize ()
*/
HB_FUNC( QVECTOR3D_NORMALIZE )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->normalize (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QVector3D normalized () const
*/
HB_FUNC( QVECTOR3D_NORMALIZED )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->normalized (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );  }
}


/*
void setX ( qreal x )
*/
HB_FUNC( QVECTOR3D_SETX )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setX ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setY ( qreal y )
*/
HB_FUNC( QVECTOR3D_SETY )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setY ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setZ ( qreal z )
*/
HB_FUNC( QVECTOR3D_SETZ )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    obj->setZ ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPoint toPoint () const
*/
HB_FUNC( QVECTOR3D_TOPOINT )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );  }
}


/*
QPointF toPointF () const
*/
HB_FUNC( QVECTOR3D_TOPOINTF )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );  }
}


/*
QVector2D toVector2D () const
*/
HB_FUNC( QVECTOR3D_TOVECTOR2D )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->toVector2D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR2D" );  }
}


/*
QVector4D toVector4D () const
*/
HB_FUNC( QVECTOR3D_TOVECTOR4D )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->toVector4D (  ) );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );  }
}


/*
qreal x () const
*/
HB_FUNC( QVECTOR3D_X )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->x (  );
    hb_retnd( r );
  }
}


/*
qreal y () const
*/
HB_FUNC( QVECTOR3D_Y )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->y (  );
    hb_retnd( r );
  }
}


/*
qreal z () const
*/
HB_FUNC( QVECTOR3D_Z )
{
  QVector3D * obj = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->z (  );
    hb_retnd( r );
  }
}



/*
QVector3D crossProduct ( const QVector3D & v1, const QVector3D & v2 )
*/
HB_FUNC( QVECTOR3D_CROSSPRODUCT )
{
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * ptr = new QVector3D( QVector3D::crossProduct ( *par1, *par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );}


/*
qreal dotProduct ( const QVector3D & v1, const QVector3D & v2 )
*/
HB_FUNC( QVECTOR3D_DOTPRODUCT )
{
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  qreal r = QVector3D::dotProduct ( *par1, *par2 );
  hb_retnd( r );
}


/*
QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
*/
HB_FUNC( QVECTOR3D_NORMAL1 )
{
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * ptr = new QVector3D( QVector3D::normal ( *par1, *par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );}


/*
QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )
*/
HB_FUNC( QVECTOR3D_NORMAL2 )
{
  QVector3D * par1 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par2 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * par3 = (QVector3D *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVector3D * ptr = new QVector3D( QVector3D::normal ( *par1, *par2, *par3 ) );
  _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );}


//[1]QVector3D normal ( const QVector3D & v1, const QVector3D & v2 )
//[2]QVector3D normal ( const QVector3D & v1, const QVector3D & v2, const QVector3D & v3 )

HB_FUNC( QVECTOR3D_NORMAL )
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
