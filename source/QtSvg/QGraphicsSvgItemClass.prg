/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QSVGRENDERER
REQUEST QRECTF
#endif

CLASS QGraphicsSvgItem INHERIT QGraphicsObject

   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD elementId
   METHOD maximumCacheSize
   METHOD renderer
   METHOD setElementId
   METHOD setMaximumCacheSize
   METHOD setSharedRenderer
   METHOD boundingRect
   METHOD paint
   METHOD type
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QGraphicsSvgItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QGraphicsSvgItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW1 )
{
  QGraphicsSvgItem * o = new QGraphicsSvgItem ( OPQGRAPHICSITEM(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW2 )
{
  QGraphicsSvgItem * o = new QGraphicsSvgItem ( PQSTRING(1), OPQGRAPHICSITEM(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QGraphicsSvgItem ( QGraphicsItem * parent = 0 )
//[2]QGraphicsSvgItem ( const QString & fileName, QGraphicsItem * parent = 0 )

HB_FUNC_STATIC( QGRAPHICSSVGITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQGRAPHICSITEM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSVGITEM_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISCHAR(1) && (ISQGRAPHICSITEM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QGRAPHICSSVGITEM_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString elementId () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_ELEMENTID )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->elementId () );
  }
}

/*
QSize maximumCacheSize () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_MAXIMUMCACHESIZE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->maximumCacheSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSvgRenderer * renderer () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_RENDERER )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSvgRenderer * ptr = obj->renderer ();
    _qt4xhb_createReturnClass ( ptr, "QSVGRENDERER" );
  }
}

/*
void setElementId ( const QString & id )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETELEMENTID )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setElementId ( PQSTRING(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setMaximumCacheSize ( const QSize & size )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETMAXIMUMCACHESIZE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMaximumCacheSize ( *PQSIZE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
void setSharedRenderer ( QSvgRenderer * renderer )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_SETSHAREDRENDERER )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSvgRenderer * par1 = (QSvgRenderer *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setSharedRenderer ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual QRectF boundingRect () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_BOUNDINGRECT )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->boundingRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
virtual void paint ( QPainter * painter, const QStyleOptionGraphicsItem * option, QWidget * widget = 0 )
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_PAINT )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const QStyleOptionGraphicsItem * par2 = (const QStyleOptionGraphicsItem *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->paint ( PQPAINTER(1), par2, OPQWIDGET(3,0) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
virtual int type () const
*/
HB_FUNC_STATIC( QGRAPHICSSVGITEM_TYPE )
{
  QGraphicsSvgItem * obj = (QGraphicsSvgItem *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->type () );
  }
}

#pragma ENDDUMP
