//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QVECTOR3D
#endif

CLASS QGraphicsScale INHERIT QGraphicsTransform

   METHOD new
   METHOD delete
   METHOD origin
   METHOD setOrigin
   METHOD setXScale
   METHOD setYScale
   METHOD setZScale
   METHOD xScale
   METHOD yScale
   METHOD zScale
   METHOD applyTo

   METHOD onOriginChanged
   METHOD onScaleChanged
   METHOD onXScaleChanged
   METHOD onYScaleChanged
   METHOD onZScaleChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsScale
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QGraphicsScale>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QGraphicsScale( QObject * parent = 0 )
    */
HB_FUNC_STATIC(QGRAPHICSSCALE_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QGraphicsScale *obj = new QGraphicsScale(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSSCALE_DELETE)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
QVector3D origin() const
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_ORIGIN)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QVector3D *ptr = new QVector3D(obj->origin());
      Qt4xHb::createReturnClass(ptr, "QVECTOR3D", true);
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
void setOrigin( const QVector3D &point )
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_SETORIGIN)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQVECTOR3D(1))
    {
#endif
      obj->setOrigin(*PQVECTOR3D(1));
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
void setXScale( qreal )
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_SETXSCALE)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setXScale(PQREAL(1));
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
void setYScale( qreal )
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_SETYSCALE)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setYScale(PQREAL(1));
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
void setZScale( qreal )
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_SETZSCALE)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setZScale(PQREAL(1));
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
qreal xScale() const
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_XSCALE)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->xScale());
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
qreal yScale() const
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_YSCALE)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->yScale());
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
qreal zScale() const
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_ZSCALE)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->zScale());
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
virtual void applyTo( QMatrix4x4 * matrix ) const
*/
HB_FUNC_STATIC(QGRAPHICSSCALE_APPLYTO)
{
  QGraphicsScale *obj = qobject_cast<QGraphicsScale *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQMATRIX4X4(1))
    {
#endif
      obj->applyTo(PQMATRIX4X4(1));
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

void QGraphicsScaleSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QGRAPHICSSCALE_ONORIGINCHANGED)
{
  QGraphicsScaleSlots_connect_signal("originChanged()", "originChanged()");
}

HB_FUNC_STATIC(QGRAPHICSSCALE_ONSCALECHANGED)
{
  QGraphicsScaleSlots_connect_signal("scaleChanged()", "scaleChanged()");
}

HB_FUNC_STATIC(QGRAPHICSSCALE_ONXSCALECHANGED)
{
  QGraphicsScaleSlots_connect_signal("xScaleChanged()", "xScaleChanged()");
}

HB_FUNC_STATIC(QGRAPHICSSCALE_ONYSCALECHANGED)
{
  QGraphicsScaleSlots_connect_signal("yScaleChanged()", "yScaleChanged()");
}

HB_FUNC_STATIC(QGRAPHICSSCALE_ONZSCALECHANGED)
{
  QGraphicsScaleSlots_connect_signal("zScaleChanged()", "zScaleChanged()");
}

#pragma ENDDUMP
