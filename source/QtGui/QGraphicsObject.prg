/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2023 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

/*
  DO NOT EDIT THIS FILE - the content was created using a source code generator
*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QGraphicsObject INHERIT QObject,QGraphicsItem

   METHOD grabGesture
   METHOD ungrabGesture

   METHOD onEnabledChanged
   METHOD onOpacityChanged
   METHOD onParentChanged
   METHOD onRotationChanged
   METHOD onScaleChanged
   METHOD onVisibleChanged
   METHOD onXChanged
   METHOD onYChanged
   METHOD onZChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsObject
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QtGui/QGraphicsObject>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"
#include "qt4xhb_events.h"
#include "qt4xhb_signals.h"

/*
void grabGesture( Qt::GestureType gesture, Qt::GestureFlags flags = Qt::GestureFlags() )
*/
HB_FUNC_STATIC( QGRAPHICSOBJECT_GRABGESTURE )
{
  QGraphicsObject * obj = qobject_cast<QGraphicsObject*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISBETWEEN(1, 2) && HB_ISNUM(1) && ( HB_ISNUM(2) || HB_ISNIL(2) ) )
    {
#endif
      obj->grabGesture( ( Qt::GestureType ) hb_parni(1), HB_ISNIL(2) ? ( Qt::GestureFlags ) Qt::GestureFlags() : ( Qt::GestureFlags ) hb_parni(2) );
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
void ungrabGesture( Qt::GestureType gesture )
*/
HB_FUNC_STATIC( QGRAPHICSOBJECT_UNGRABGESTURE )
{
  QGraphicsObject * obj = qobject_cast<QGraphicsObject*>(Qt4xHb::getQObjectPointerFromSelfItem());

  if( obj != NULL )
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if( ISNUMPAR(1) && HB_ISNUM(1) )
    {
#endif
      obj->ungrabGesture( ( Qt::GestureType ) hb_parni(1) );
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

void QGraphicsObjectSlots_connect_signal(const QString & signal, const QString & slot);

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONENABLEDCHANGED )
{
  QGraphicsObjectSlots_connect_signal("enabledChanged()", "enabledChanged()");
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONOPACITYCHANGED )
{
  QGraphicsObjectSlots_connect_signal("opacityChanged()", "opacityChanged()");
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONPARENTCHANGED )
{
  QGraphicsObjectSlots_connect_signal("parentChanged()", "parentChanged()");
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONROTATIONCHANGED )
{
  QGraphicsObjectSlots_connect_signal("rotationChanged()", "rotationChanged()");
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONSCALECHANGED )
{
  QGraphicsObjectSlots_connect_signal("scaleChanged()", "scaleChanged()");
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONVISIBLECHANGED )
{
  QGraphicsObjectSlots_connect_signal("visibleChanged()", "visibleChanged()");
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONXCHANGED )
{
  QGraphicsObjectSlots_connect_signal("xChanged()", "xChanged()");
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONYCHANGED )
{
  QGraphicsObjectSlots_connect_signal("yChanged()", "yChanged()");
}

HB_FUNC_STATIC( QGRAPHICSOBJECT_ONZCHANGED )
{
  QGraphicsObjectSlots_connect_signal("zChanged()", "zChanged()");
}

#pragma ENDDUMP
