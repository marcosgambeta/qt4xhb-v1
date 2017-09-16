/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVEITEM
REQUEST QRECTF
REQUEST QSCRIPTVALUE
#endif

CLASS QDeclarativeItem INHERIT QGraphicsObject,QDeclarativeParserStatus

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
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDeclarativeItem ( QDeclarativeItem * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_NEW )
{
  if( ISBETWEEN(0,1) && (ISQDECLARATIVEITEM(1)||ISNIL(1)) )
  {
    QDeclarativeItem * o = new QDeclarativeItem ( OPQDECLARATIVEITEM(1,0) );
    _qt4xhb_storePointerAndFlag( o, false );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
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
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->baselineOffset () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
    {
      QDeclarativeItem * ptr = obj->childAt ( PQREAL(1), PQREAL(2) );
      _qt4xhb_createReturnQObjectClass ( ptr, "QDECLARATIVEITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QRectF * ptr = new QRectF( obj->childrenRect () );
      _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->clip () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      obj->forceActiveFocus ();
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->implicitHeight () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RQREAL( obj->implicitWidth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->keepMouseGrab () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(3) && ISQSCRIPTVALUE(1) && ISNUM(2) && ISNUM(3) )
    {
      QScriptValue * ptr = new QScriptValue( obj->mapFromItem ( *PQSCRIPTVALUE(1), PQREAL(2), PQREAL(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(3) && ISQSCRIPTVALUE(1) && ISNUM(2) && ISNUM(3) )
    {
      QScriptValue * ptr = new QScriptValue( obj->mapToItem ( *PQSCRIPTVALUE(1), PQREAL(2), PQREAL(3) ) );
      _qt4xhb_createReturnClass ( ptr, "QSCRIPTVALUE", true );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      QDeclarativeItem * ptr = obj->parentItem ();
      _qt4xhb_createReturnQObjectClass ( ptr, "QDECLARATIVEITEM" );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setBaselineOffset ( PQREAL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setClip ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setKeepMouseGrab ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISQDECLARATIVEITEM(1) )
    {
      obj->setParentItem ( PQDECLARATIVEITEM(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISLOG(1) )
    {
      obj->setSmooth ( PBOOL(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(1) && ISNUM(1) )
    {
      obj->setTransformOrigin ( (QDeclarativeItem::TransformOrigin) hb_parni(1) );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RBOOL( obj->smooth () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
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
    if( ISNUMPAR(0) )
    {
      RENUM( obj->transformOrigin () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

#pragma ENDDUMP
