//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QSIZE
REQUEST QSVGRENDERER
#endif

CLASS QSvgWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD renderer
   METHOD sizeHint
   METHOD load

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSvgWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtSvg/QSvgWidget>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtSvg/QSvgRenderer>

HB_FUNC_STATIC(QSVGWIDGET_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    // QSvgWidget(QWidget *parent = 0)
    QSvgWidget *obj = new QSvgWidget(OPQWIDGET(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && HB_ISCHAR(1) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    // QSvgWidget(const QString &file, QWidget *parent = 0)
    QSvgWidget *obj = new QSvgWidget(PQSTRING(1), OPQWIDGET(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSVGWIDGET_DELETE)
{
  QSvgWidget *obj = qobject_cast<QSvgWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
    Qt4xHb::Events_disconnect_all_events(obj, true);
    Qt4xHb::Signals_disconnect_all_signals(obj, true);
    delete obj;
    obj = NULL;
    PHB_ITEM ptr = hb_itemPutPtr(NULL, NULL);
    hb_objSendMsg(hb_stackSelfItem(), "_POINTER", 1, ptr);
    hb_itemRelease(ptr);
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QSvgRenderer *renderer() const
*/
HB_FUNC_STATIC(QSVGWIDGET_RENDERER)
{
  QSvgWidget *obj = qobject_cast<QSvgWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSvgRenderer *ptr = obj->renderer();
      Qt4xHb::createReturnQObjectClass(ptr, "QSVGRENDERER");
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
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC(QSVGWIDGET_SIZEHINT)
{
  QSvgWidget *obj = qobject_cast<QSvgWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->sizeHint());
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QSVGWIDGET_LOAD)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    /*
    void load(const QString &file)
    */
    QSvgWidget *obj = qobject_cast<QSvgWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->load(PQSTRING(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(1) && ISQBYTEARRAY(1))
  {
    /*
    void load(const QByteArray &contents)
    */
    QSvgWidget *obj = qobject_cast<QSvgWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->load(*PQBYTEARRAY(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
