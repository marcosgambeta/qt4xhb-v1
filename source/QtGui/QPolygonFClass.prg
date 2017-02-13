/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"


REQUEST QRECTF
REQUEST QPOLYGONF
REQUEST QPOLYGON

CLASS QPolygonF

   DATA pointer
   DATA class_id INIT Class_Id_QPolygonF
   DATA class_flags INIT 0
   DATA self_destruction INIT .f.

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

METHOD newFrom (p) CLASS QPolygonF
   IF valtype(p) == "O"
      ::pointer := p:pointer
      ::self_destruction := .f.
   ELSEIF valtype(p) == "P"
      ::pointer := p
      ::self_destruction := .f.
   ENDIF
RETURN self

METHOD newFromObject (p) CLASS QPolygonF
   ::pointer := p:pointer
   ::self_destruction := .f.
RETURN self

METHOD newFromPointer (p) CLASS QPolygonF
   ::pointer := p
   ::self_destruction := .f.
RETURN self

METHOD selfDestruction () CLASS QPolygonF
RETURN ::self_destruction

METHOD setSelfDestruction (p) CLASS QPolygonF
   IF valtype(p) == "L"
      ::self_destruction := p
   ENDIF
RETURN self

PROCEDURE destroyObject () CLASS QPolygonF
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QPolygonF>

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
QPolygonF ()
*/
HB_FUNC( QPOLYGONF_NEW1 )
{
  QPolygonF * o = NULL;
  o = new QPolygonF (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygonF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QPolygonF ( int size )
*/
HB_FUNC( QPOLYGONF_NEW2 )
{
  QPolygonF * o = NULL;
  int par1 = hb_parni(1);
  o = new QPolygonF ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygonF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QPolygonF ( const QPolygonF & polygon )
*/
HB_FUNC( QPOLYGONF_NEW3 )
{
  QPolygonF * o = NULL;
  QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPolygonF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygonF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QPolygonF ( const QVector<QPointF> & points )
*/
HB_FUNC( QPOLYGONF_NEW4 )
{
  QPolygonF * o = NULL;
QVector<QPointF> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  o = new QPolygonF ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygonF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QPolygonF ( const QRectF & rectangle )
*/
HB_FUNC( QPOLYGONF_NEW5 )
{
  QPolygonF * o = NULL;
  QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPolygonF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygonF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QPolygonF ( const QPolygon & polygon )
*/
HB_FUNC( QPOLYGONF_NEW6 )
{
  QPolygonF * o = NULL;
  QPolygon * par1 = (QPolygon *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QPolygonF ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QPolygonF *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QPolygonF ()
//[2]QPolygonF ( int size )
//[3]QPolygonF ( const QPolygonF & polygon )
//[4]QPolygonF ( const QVector<QPointF> & points )
//[5]QPolygonF ( const QRectF & rectangle )
//[6]QPolygonF ( const QPolygon & polygon )

HB_FUNC( QPOLYGONF_NEW )
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

HB_FUNC( QPOLYGONF_DELETE )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
QRectF boundingRect () const
*/
HB_FUNC( QPOLYGONF_BOUNDINGRECT )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );  }
}


/*
bool containsPoint ( const QPointF & point, Qt::FillRule fillRule ) const
*/
HB_FUNC( QPOLYGONF_CONTAINSPOINT )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = hb_parni(2);
    bool b = obj->containsPoint ( *par1,  (Qt::FillRule) par2 );
    hb_retl( b );
  }
}


/*
QPolygonF intersected ( const QPolygonF & r ) const
*/
HB_FUNC( QPOLYGONF_INTERSECTED )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->intersected ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );  }
}


/*
bool isClosed () const
*/
HB_FUNC( QPOLYGONF_ISCLOSED )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isClosed (  );
    hb_retl( b );
  }
}


/*
QPolygonF subtracted ( const QPolygonF & r ) const
*/
HB_FUNC( QPOLYGONF_SUBTRACTED )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->subtracted ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );  }
}


/*
void swap ( QPolygonF & other )
*/
HB_FUNC( QPOLYGONF_SWAP )
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
HB_FUNC( QPOLYGONF_TOPOLYGON )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygon * ptr = new QPolygon( obj->toPolygon (  ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGON", true );  }
}


/*
void translate ( const QPointF & offset )
*/
HB_FUNC( QPOLYGONF_TRANSLATE1 )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->translate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void translate ( qreal dx, qreal dy )
*/
HB_FUNC( QPOLYGONF_TRANSLATE2 )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    obj->translate ( par1, par2 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


//[1]void translate ( const QPointF & offset )
//[2]void translate ( qreal dx, qreal dy )

HB_FUNC( QPOLYGONF_TRANSLATE )
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
HB_FUNC( QPOLYGONF_TRANSLATED1 )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->translated ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );  }
}


/*
QPolygonF translated ( qreal dx, qreal dy ) const
*/
HB_FUNC( QPOLYGONF_TRANSLATED2 )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal par1 = hb_parnd(1);
    qreal par2 = hb_parnd(2);
    QPolygonF * ptr = new QPolygonF( obj->translated ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );  }
}


//[1]QPolygonF translated ( const QPointF & offset ) const
//[2]QPolygonF translated ( qreal dx, qreal dy ) const

HB_FUNC( QPOLYGONF_TRANSLATED )
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
HB_FUNC( QPOLYGONF_UNITED )
{
  QPolygonF * obj = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPolygonF * par1 = (QPolygonF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QPolygonF * ptr = new QPolygonF( obj->united ( *par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QPOLYGONF", true );  }
}




#pragma ENDDUMP
