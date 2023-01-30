/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QRECTF
REQUEST QSCRIPTVALUE
#endif

CLASS QDeclarativeItem INHERIT QGraphicsObject,QDeclarativeParserStatus

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

PROCEDURE destroyObject() CLASS QDeclarativeItem
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtDeclarative/QDeclarativeItem>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
QDeclarativeItem( QDeclarativeItem * parent = 0 )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_NEW )
{
  if( ISBETWEEN(0, 1) && ( ISQDECLARATIVEITEM(1) || HB_ISNIL(1) ) )
  {
    QDeclarativeItem * obj = new QDeclarativeItem( OPQDECLARATIVEITEM( 1, 0 ) );
    Qt4xHb::returnNewObject( obj, false );
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC( QDECLARATIVEITEM_DELETE )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_pointer", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
qreal baselineOffset() const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_BASELINEOFFSET )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->baselineOffset() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDeclarativeItem * childAt( qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CHILDAT )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2) )
    {
#endif
      QDeclarativeItem * ptr = obj->childAt( PQREAL(1), PQREAL(2) );
      Qt4xHb::createReturnQObjectClass( ptr, "QDECLARATIVEITEM" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QRectF childrenRect()
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CHILDRENRECT )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QRectF * ptr = new QRectF( obj->childrenRect() );
      Qt4xHb::createReturnClass( ptr, "QRECTF", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool clip() const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_CLIP )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->clip() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void forceActiveFocus()
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_FORCEACTIVEFOCUS )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      obj->forceActiveFocus();
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
qreal implicitHeight() const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_IMPLICITHEIGHT )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->implicitHeight() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
qreal implicitWidth() const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_IMPLICITWIDTH )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RQREAL( obj->implicitWidth() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
bool keepMouseGrab() const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_KEEPMOUSEGRAB )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->keepMouseGrab() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QScriptValue mapFromItem( const QScriptValue & item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_MAPFROMITEM )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQSCRIPTVALUE(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->mapFromItem( *PQSCRIPTVALUE(1), PQREAL(2), PQREAL(3) ) );
      Qt4xHb::createReturnClass( ptr, "QSCRIPTVALUE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QScriptValue mapToItem( const QScriptValue & item, qreal x, qreal y ) const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_MAPTOITEM )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(3) && ISQSCRIPTVALUE(1) && HB_ISNUM(2) && HB_ISNUM(3) )
    {
#endif
      QScriptValue * ptr = new QScriptValue( obj->mapToItem( *PQSCRIPTVALUE(1), PQREAL(2), PQREAL(3) ) );
      Qt4xHb::createReturnClass( ptr, "QSCRIPTVALUE", true );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDeclarativeItem * parentItem() const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_PARENTITEM )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      QDeclarativeItem * ptr = obj->parentItem();
      Qt4xHb::createReturnQObjectClass( ptr, "QDECLARATIVEITEM" );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
void setBaselineOffset( qreal )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETBASELINEOFFSET )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setBaselineOffset( PQREAL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setClip( bool )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETCLIP )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setClip( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setKeepMouseGrab( bool keep )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETKEEPMOUSEGRAB )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setKeepMouseGrab( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setParentItem( QDeclarativeItem * parent )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETPARENTITEM )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && ISQDECLARATIVEITEM(1) )
    {
#endif
      obj->setParentItem( PQDECLARATIVEITEM(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setSmooth( bool smooth )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETSMOOTH )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISLOG(1) )
    {
#endif
      obj->setSmooth( PBOOL(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
void setTransformOrigin( QDeclarativeItem::TransformOrigin origin )
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SETTRANSFORMORIGIN )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->setTransformOrigin( ( QDeclarativeItem::TransformOrigin ) hb_parni(1) );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
bool smooth() const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_SMOOTH )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RBOOL( obj->smooth() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

/*
QDeclarativeItem::TransformOrigin transformOrigin() const
*/
HB_FUNC_STATIC( QDECLARATIVEITEM_TRANSFORMORIGIN )
{
  QDeclarativeItem * obj = qobject_cast<QDeclarativeItem*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(0) )
    {
#endif
      RENUM( obj->transformOrigin() );
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
