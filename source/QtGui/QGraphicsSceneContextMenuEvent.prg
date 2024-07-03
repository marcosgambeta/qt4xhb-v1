//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINT
REQUEST QPOINTF
#endif

CLASS QGraphicsSceneContextMenuEvent INHERIT QGraphicsSceneEvent

   METHOD delete
   METHOD modifiers
   METHOD pos
   METHOD reason
   METHOD scenePos
   METHOD screenPos

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsSceneContextMenuEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QGraphicsSceneContextMenuEvent>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QGRAPHICSSCENECONTEXTMENUEVENT_DELETE)
{
  QGraphicsSceneContextMenuEvent *obj =
      static_cast<QGraphicsSceneContextMenuEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::KeyboardModifiers modifiers() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENECONTEXTMENUEVENT_MODIFIERS)
{
  QGraphicsSceneContextMenuEvent *obj =
      static_cast<QGraphicsSceneContextMenuEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->modifiers());
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
QPointF pos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENECONTEXTMENUEVENT_POS)
{
  QGraphicsSceneContextMenuEvent *obj =
      static_cast<QGraphicsSceneContextMenuEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->pos());
      Qt4xHb::createReturnClass(ptr, "QPOINTF", true);
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
QGraphicsSceneContextMenuEvent::Reason reason() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENECONTEXTMENUEVENT_REASON)
{
  QGraphicsSceneContextMenuEvent *obj =
      static_cast<QGraphicsSceneContextMenuEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->reason());
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
QPointF scenePos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENECONTEXTMENUEVENT_SCENEPOS)
{
  QGraphicsSceneContextMenuEvent *obj =
      static_cast<QGraphicsSceneContextMenuEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->scenePos());
      Qt4xHb::createReturnClass(ptr, "QPOINTF", true);
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
QPoint screenPos() const
*/
HB_FUNC_STATIC(QGRAPHICSSCENECONTEXTMENUEVENT_SCREENPOS)
{
  QGraphicsSceneContextMenuEvent *obj =
      static_cast<QGraphicsSceneContextMenuEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPoint *ptr = new QPoint(obj->screenPos());
      Qt4xHb::createReturnClass(ptr, "QPOINT", true);
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
