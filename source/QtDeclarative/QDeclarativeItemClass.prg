/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVEITEM
REQUEST QRECTF
REQUEST QSCRIPTVALUE
#endif

CLASS QDeclarativeItem INHERIT QGraphicsObject,QDeclarativeParserStatus

   DATA class_id INIT Class_Id_QDeclarativeItem
   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD baselineOffset
   METHOD childAt
   METHOD childrenRect
   METHOD clip
   METHOD forceActiveFocus
   METHOD implicitHeight
   METHOD implicitWidth
   METHOD keepMouseGrab
   METHOD mapFromItem
   METHOD mapToItem
   METHOD parentItem
   METHOD setBaselineOffset
   METHOD setClip
   METHOD setKeepMouseGrab
   METHOD setParentItem
   METHOD setSmooth
   METHOD setTransformOrigin
   METHOD smooth
   METHOD transformOrigin
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QDeclarativeItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QDeclarativeItem>

#include "qt4xhb_common.h"
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeItem ( QDeclarativeItem * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_NEW )
{
  QDeclarativeItem * o = NULL;
  QDeclarativeItem * par1 = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDeclarativeItem ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDeclarativeItem *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


HB_FUNC_STATIC( QDECLARATIVEITEM_DELETE )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
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
qreal baselineOffset () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_BASELINEOFFSET )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->baselineOffset (  );
    hb_retnd( r );
  }
}


/*
QDeclarativeItem * childAt ( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CHILDAT )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeItem * ptr = obj->childAt ( PQREAL(1), PQREAL(2) );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEITEM" );
  }
}


/*
QRectF childrenRect ()
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CHILDRENRECT )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->childrenRect (  ) );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}


/*
bool clip () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CLIP )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->clip (  ) );
  }
}


/*
void forceActiveFocus ()
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_FORCEACTIVEFOCUS )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->forceActiveFocus (  );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
qreal implicitHeight () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_IMPLICITHEIGHT )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->implicitHeight (  );
    hb_retnd( r );
  }
}


/*
qreal implicitWidth () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_IMPLICITWIDTH )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qreal r = obj->implicitWidth (  );
    hb_retnd( r );
  }
}


/*
bool keepMouseGrab () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_KEEPMOUSEGRAB )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->keepMouseGrab (  ) );
  }
}


/*
QScriptValue mapFromItem ( const QScriptValue & item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_MAPFROMITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * ptr = new QScriptValue( obj->mapFromItem ( *par1, PQREAL(2), PQREAL(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QScriptValue mapToItem ( const QScriptValue & item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_MAPTOITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QScriptValue * par1 = (QScriptValue *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QScriptValue * ptr = new QScriptValue( obj->mapToItem ( *par1, PQREAL(2), PQREAL(3) ) );
    _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE" );
  }
}


/*
QDeclarativeItem * parentItem () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_PARENTITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeItem * ptr = obj->parentItem (  );
    _qt4xhb_createReturnClass ( ptr, "QDECLARATIVEITEM" );
  }
}


/*
void setBaselineOffset ( qreal )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETBASELINEOFFSET )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setBaselineOffset ( PQREAL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setClip ( bool )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETCLIP )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setClip ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setKeepMouseGrab ( bool keep )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETKEEPMOUSEGRAB )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setKeepMouseGrab ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setParentItem ( QDeclarativeItem * parent )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETPARENTITEM )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDeclarativeItem * par1 = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setParentItem ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setSmooth ( bool smooth )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETSMOOTH )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setSmooth ( PBOOL(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTransformOrigin ( TransformOrigin origin )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETTRANSFORMORIGIN )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTransformOrigin (  (QDeclarativeItem::TransformOrigin) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
bool smooth () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SMOOTH )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retl( obj->smooth (  ) );
  }
}


/*
TransformOrigin transformOrigin () const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_TRANSFORMORIGIN )
{
  QDeclarativeItem * obj = (QDeclarativeItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->transformOrigin (  ) );
  }
}





#pragma ENDDUMP
