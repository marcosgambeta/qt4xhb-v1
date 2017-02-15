/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QTRANSFORM
REQUEST QPOINTF
REQUEST QPOINT
REQUEST QLINE
REQUEST QLINEF
REQUEST QPOLYGONF
REQUEST QPOLYGON
REQUEST QREGION
REQUEST QPAINTERPATH
REQUEST QRECTF
REQUEST QRECT

CLASS QTransform

   DATA pointer
   DATA class_id INIT Class_Id_QTransform
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD m11
   METHOD m12
   METHOD m13
   METHOD m21
   METHOD m22
   METHOD m23
   METHOD m31
   METHOD m32
   METHOD m33
   METHOD adjoint
   METHOD determinant
   METHOD dx
   METHOD dy
   METHOD inverted
   METHOD isAffine
   METHOD isIdentity
   METHOD isInvertible
   METHOD isRotating
   METHOD isScaling
   METHOD isTranslating
   METHOD map1
   METHOD map2
   METHOD map3
   METHOD map4
   METHOD map5
   METHOD map6
   METHOD map7
   METHOD map8
   METHOD map9
   METHOD map10
   METHOD map
   METHOD mapRect1
   METHOD mapRect2
   METHOD mapRect
   METHOD mapToPolygon
   METHOD reset
   METHOD setMatrix
   METHOD transposed
   METHOD type
   METHOD fromScale
   METHOD fromTranslate
   METHOD quadToQuad
   METHOD quadToSquare
   METHOD squareToQuad
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

METHOD newFrom (p) CLASS QTransform
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QTransform
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QTransform
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QTransform
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QTransform
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QTransform
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QTransform>

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

/*
QTransform ()
*/
HB_FUNC_STATIC( QTRANSFORM_NEW1 )
{
  QTransform * o = NULL;
  o = new QTransform (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTransform *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
*/
HB_FUNC_STATIC( QTRANSFORM_NEW2 )
{
  QTransform * o = NULL;
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  qreal par5 = hb_parnd(5);
  qreal par6 = hb_parnd(6);
  qreal par7 = hb_parnd(7);
  qreal par8 = hb_parnd(8);
  qreal par9 = ISNIL(9)? 1.0 : hb_parnd(9);
  o = new QTransform ( par1, par2, par3, par4, par5, par6, par7, par8, par9 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTransform *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QTRANSFORM_NEW3 )
{
  QTransform * o = NULL;
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  qreal par3 = hb_parnd(3);
  qreal par4 = hb_parnd(4);
  qreal par5 = hb_parnd(5);
  qreal par6 = hb_parnd(6);
  o = new QTransform ( par1, par2, par3, par4, par5, par6 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTransform *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QTransform ( const QMatrix & matrix )
*/
HB_FUNC_STATIC( QTRANSFORM_NEW4 )
{
  QTransform * o = NULL;
  QMatrix * par1 = (QMatrix *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QTransform ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QTransform *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QTransform ()
//[2]QTransform ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 = 1.0 )
//[3]QTransform ( qreal m11, qreal m12, qreal m21, qreal m22, qreal dx, qreal dy )
//[4]QTransform ( const QMatrix & matrix )

HB_FUNC_STATIC( QTRANSFORM_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTRANSFORM_NEW1 );
  }
  else if( ISBETWEEN(8,9) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) && ISNUM(7) && ISNUM(8) && (ISNUM(9)||ISNIL(9)) )
  {
    HB_FUNC_EXEC( QTRANSFORM_NEW2 );
  }
  else if( ISNUMPAR(6) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) && ISNUM(5) && ISNUM(6) )
  {
    HB_FUNC_EXEC( QTRANSFORM_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQMATRIX(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QTRANSFORM_DELETE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal m11 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M11 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m11 (  );
    hb_retnd( r );
  }
}


/*
qreal m12 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M12 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m12 (  );
    hb_retnd( r );
  }
}


/*
qreal m13 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M13 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m13 (  );
    hb_retnd( r );
  }
}


/*
qreal m21 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M21 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m21 (  );
    hb_retnd( r );
  }
}


/*
qreal m22 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M22 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m22 (  );
    hb_retnd( r );
  }
}


/*
qreal m23 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M23 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m23 (  );
    hb_retnd( r );
  }
}


/*
qreal m31 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M31 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m31 (  );
    hb_retnd( r );
  }
}


/*
qreal m32 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M32 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m32 (  );
    hb_retnd( r );
  }
}


/*
qreal m33 () const
*/
HB_FUNC_STATIC( QTRANSFORM_M33 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->m33 (  );
    hb_retnd( r );
  }
}


/*
QTransform adjoint () const
*/
HB_FUNC_STATIC( QTRANSFORM_ADJOINT )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->adjoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
qreal determinant () const
*/
HB_FUNC_STATIC( QTRANSFORM_DETERMINANT )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->determinant (  );
    hb_retnd( r );
  }
}


/*
qreal dx () const
*/
HB_FUNC_STATIC( QTRANSFORM_DX )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->dx (  );
    hb_retnd( r );
  }
}


/*
qreal dy () const
*/
HB_FUNC_STATIC( QTRANSFORM_DY )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->dy (  );
    hb_retnd( r );
  }
}


/*
QTransform inverted ( bool * invertible = 0 ) const
*/
HB_FUNC_STATIC( QTRANSFORM_INVERTED )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par1;
    QTransform * ptr = new QTransform( obj->inverted ( &par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
    hb_storl( par1, 1 );
  }
}


/*
bool isAffine () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISAFFINE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isAffine (  );
    hb_retl( b );
  }
}


/*
bool isIdentity () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISIDENTITY )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isIdentity (  );
    hb_retl( b );
  }
}


/*
bool isInvertible () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISINVERTIBLE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isInvertible (  );
    hb_retl( b );
  }
}


/*
bool isRotating () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISROTATING )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isRotating (  );
    hb_retl( b );
  }
}


/*
bool isScaling () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISSCALING )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isScaling (  );
    hb_retl( b );
  }
}


/*
bool isTranslating () const
*/
HB_FUNC_STATIC( QTRANSFORM_ISTRANSLATING )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isTranslating (  );
    hb_retl( b );
  }
}


/*
void map ( qreal x, qreal y, qreal * tx, qreal * ty ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP1 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3;
    qreal par4;
    obj->map ( par1, par2, &par3, &par4 );
    hb_stornd( par3, 3 );
    hb_stornd( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QPointF map ( const QPointF & p ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP2 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPointF * ptr = new QPointF( obj->map ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}


/*
QPoint map ( const QPoint & point ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP3 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPoint * ptr = new QPoint( obj->map ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}


/*
QLine map ( const QLine & l ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP4 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLine * par1 = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QLine * ptr = new QLine( obj->map ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QLINE", true );
  }
}


/*
QLineF map ( const QLineF & line ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP5 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineF * par1 = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QLineF * ptr = new QLineF( obj->map ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}


/*
QPolygonF map ( const QPolygonF & polygon ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP6 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->map ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );
  }
}


/*
QPolygon map ( const QPolygon & polygon ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP7 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygon * par1 = (QPolygon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygon * ptr = new QPolygon( obj->map ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
QRegion map ( const QRegion & region ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP8 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegion * par1 = (QRegion *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRegion * ptr = new QRegion( obj->map ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QREGION", true );
  }
}


/*
QPainterPath map ( const QPainterPath & path ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP9 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPainterPath * par1 = (QPainterPath *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPainterPath * ptr = new QPainterPath( obj->map ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPAINTERPATH", true );
  }
}


/*
void map ( int x, int y, int * tx, int * ty ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAP10 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = hb_parni(2);
    int par3;
    int par4;
    obj->map ( par1, par2, &par3, &par4 );
    hb_storni( par3, 3 );
    hb_storni( par4, 4 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[01]void map ( qreal x, qreal y, qreal * tx, qreal * ty ) const
//[02]QPointF map ( const QPointF & p ) const
//[03]QPoint map ( const QPoint & point ) const
//[04]QLine map ( const QLine & l ) const
//[05]QLineF map ( const QLineF & line ) const
//[06]QPolygonF map ( const QPolygonF & polygon ) const
//[07]QPolygon map ( const QPolygon & polygon ) const
//[08]QRegion map ( const QRegion & region ) const
//[09]QPainterPath map ( const QPainterPath & path ) const
//[10]void map ( int x, int y, int * tx, int * ty ) const

// TODO: resolver conflito entre [1] e [10] (identificar se é qreal ou int)

HB_FUNC_STATIC( QTRANSFORM_MAP )
{
  if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP1 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP2 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP3 );
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP4 );
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP5 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGONF(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP6 );
  }
  else if( ISNUMPAR(1) && ISQPOLYGON(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP7 );
  }
  else if( ISNUMPAR(1) && ISQREGION(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP8 );
  }
  else if( ISNUMPAR(1) && ISQPAINTERPATH(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP9 );
  }
  else if( ISNUMPAR(4) && ISNUM(1) && ISNUM(2) && ISNUM(3) && ISNUM(4) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAP10 );
  }
}

/*
QRectF mapRect ( const QRectF & rectangle ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAPRECT1 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRectF * ptr = new QRectF( obj->mapRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
QRect mapRect ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAPRECT2 )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QRect * ptr = new QRect( obj->mapRect ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}


//[1]QRectF mapRect ( const QRectF & rectangle ) const
//[2]QRect mapRect ( const QRect & rectangle ) const

HB_FUNC_STATIC( QTRANSFORM_MAPRECT )
{
  if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAPRECT1 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QTRANSFORM_MAPRECT2 );
  }
}

/*
QPolygon mapToPolygon ( const QRect & rectangle ) const
*/
HB_FUNC_STATIC( QTRANSFORM_MAPTOPOLYGON )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygon * ptr = new QPolygon( obj->mapToPolygon ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );
  }
}


/*
void reset ()
*/
HB_FUNC_STATIC( QTRANSFORM_RESET )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->reset (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





/*
void setMatrix ( qreal m11, qreal m12, qreal m13, qreal m21, qreal m22, qreal m23, qreal m31, qreal m32, qreal m33 )
*/
HB_FUNC_STATIC( QTRANSFORM_SETMATRIX )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    qreal par3 = hb_parnd(3);
    qreal par4 = hb_parnd(4);
    qreal par5 = hb_parnd(5);
    qreal par6 = hb_parnd(6);
    qreal par7 = hb_parnd(7);
    qreal par8 = hb_parnd(8);
    qreal par9 = hb_parnd(9);
    obj->setMatrix ( par1, par2, par3, par4, par5, par6, par7, par8, par9 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}





/*
QTransform transposed () const
*/
HB_FUNC_STATIC( QTRANSFORM_TRANSPOSED )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTransform * ptr = new QTransform( obj->transposed (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
  }
}


/*
TransformationType type () const
*/
HB_FUNC_STATIC( QTRANSFORM_TYPE )
{
  QTransform * obj = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->type (  );
    hb_retni( i );
  }
}



/*
QTransform fromScale ( qreal sx, qreal sy )
*/
HB_FUNC_STATIC( QTRANSFORM_FROMSCALE )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  QTransform * ptr = new QTransform( QTransform::fromScale ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}


/*
QTransform fromTranslate ( qreal dx, qreal dy )
*/
HB_FUNC_STATIC( QTRANSFORM_FROMTRANSLATE )
{
  qreal par1 = hb_parnd(1);
  qreal par2 = hb_parnd(2);
  QTransform * ptr = new QTransform( QTransform::fromTranslate ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QTRANSFORM", true );
}


/*
bool quadToQuad ( const QPolygonF & one, const QPolygonF & two, QTransform & trans )
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOQUAD )
{
  QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QPolygonF * par2 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTransform * par3 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(3, HB_IT_OBJECT ), "POINTER", 0 ) );
  bool b = QTransform::quadToQuad ( *par1, *par2, *par3 );
  hb_retl( b );
}


/*
bool quadToSquare ( const QPolygonF & quad, QTransform & trans )
*/
HB_FUNC_STATIC( QTRANSFORM_QUADTOSQUARE )
{
  QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTransform * par2 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  bool b = QTransform::quadToSquare ( *par1, *par2 );
  hb_retl( b );
}


/*
bool squareToQuad ( const QPolygonF & quad, QTransform & trans )
*/
HB_FUNC_STATIC( QTRANSFORM_SQUARETOQUAD )
{
  QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTransform * par2 = (QTransform *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  bool b = QTransform::squareToQuad ( *par1, *par2 );
  hb_retl( b );
}




#pragma ENDDUMP
