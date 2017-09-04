$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR2D
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QVECTOR3D
REQUEST QVECTOR4D
#endif

CLASS QVector2D

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
   METHOD isNull
   METHOD length
   METHOD lengthSquared
   METHOD normalize
   METHOD normalized
   METHOD setX
   METHOD setY
   METHOD toPoint
   METHOD toPointF
   METHOD toVector3D
   METHOD toVector4D
   METHOD x
   METHOD y
   METHOD dotProduct

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVector2D
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVector2D>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QVector3D>
#include <QVector4D>

/*
QVector2D ()
*/
HB_FUNC_STATIC( QVECTOR2D_NEW1 )
{
  QVector2D * o = new QVector2D ();
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector2D ( qreal xpos, qreal ypos )
*/
HB_FUNC_STATIC( QVECTOR2D_NEW2 )
{
  QVector2D * o = new QVector2D ( PQREAL(1), PQREAL(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector2D ( const QPoint & point )
*/
HB_FUNC_STATIC( QVECTOR2D_NEW3 )
{
  QVector2D * o = new QVector2D ( *PQPOINT(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector2D ( const QPointF & point )
*/
HB_FUNC_STATIC( QVECTOR2D_NEW4 )
{
  QVector2D * o = new QVector2D ( *PQPOINTF(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector2D ( const QVector3D & vector )
*/
HB_FUNC_STATIC( QVECTOR2D_NEW5 )
{
  QVector2D * o = new QVector2D ( *PQVECTOR3D(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QVector2D ( const QVector4D & vector )
*/
HB_FUNC_STATIC( QVECTOR2D_NEW6 )
{
  QVector2D * o = new QVector2D ( *PQVECTOR4D(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QVector2D ()
//[2]QVector2D ( qreal xpos, qreal ypos )
//[3]QVector2D ( const QPoint & point )
//[4]QVector2D ( const QPointF & point )
//[5]QVector2D ( const QVector3D & vector )
//[6]QVector2D ( const QVector4D & vector )

HB_FUNC_STATIC( QVECTOR2D_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR3D(1) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW5 );
  }
  else if( ISNUMPAR(1) && ISQVECTOR4D(1) )
  {
    HB_FUNC_EXEC( QVECTOR2D_NEW6 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVECTOR2D_DELETE )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
HB_FUNC_STATIC( QVECTOR2D_ISNULL )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
qreal length () const
*/
HB_FUNC_STATIC( QVECTOR2D_LENGTH )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->length () );
  }
}

/*
qreal lengthSquared () const
*/
HB_FUNC_STATIC( QVECTOR2D_LENGTHSQUARED )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->lengthSquared () );
  }
}

/*
void normalize ()
*/
HB_FUNC_STATIC( QVECTOR2D_NORMALIZE )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->normalize ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QVector2D normalized () const
*/
HB_FUNC_STATIC( QVECTOR2D_NORMALIZED )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector2D * ptr = new QVector2D( obj->normalized () );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR2D" );
  }
}

/*
void setX ( qreal x )
*/
HB_FUNC_STATIC( QVECTOR2D_SETX )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setX ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setY ( qreal y )
*/
HB_FUNC_STATIC( QVECTOR2D_SETY )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setY ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QPoint toPoint () const
*/
HB_FUNC_STATIC( QVECTOR2D_TOPOINT )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPointF toPointF () const
*/
HB_FUNC_STATIC( QVECTOR2D_TOPOINTF )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QVector3D toVector3D () const
*/
HB_FUNC_STATIC( QVECTOR2D_TOVECTOR3D )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector3D * ptr = new QVector3D( obj->toVector3D () );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR3D" );
  }
}

/*
QVector4D toVector4D () const
*/
HB_FUNC_STATIC( QVECTOR2D_TOVECTOR4D )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QVector4D * ptr = new QVector4D( obj->toVector4D () );
    _qt4xhb_createReturnClass ( ptr, "QVECTOR4D" );
  }
}

/*
qreal x () const
*/
HB_FUNC_STATIC( QVECTOR2D_X )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->x () );
  }
}

/*
qreal y () const
*/
HB_FUNC_STATIC( QVECTOR2D_Y )
{
  QVector2D * obj = (QVector2D *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQREAL( obj->y () );
  }
}

/*
qreal dotProduct ( const QVector2D & v1, const QVector2D & v2 )
*/
HB_FUNC_STATIC( QVECTOR2D_DOTPRODUCT )
{
  RQREAL( QVector2D::dotProduct ( *PQVECTOR2D(1), *PQVECTOR2D(2) ) );
}

// TODO: implementar função
// bool qFuzzyCompare ( const QVector2D & v1, const QVector2D & v2 )

$extraMethods

#pragma ENDDUMP
