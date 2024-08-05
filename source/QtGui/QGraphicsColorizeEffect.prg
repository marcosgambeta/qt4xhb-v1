//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QGraphicsColorizeEffect INHERIT QGraphicsEffect

   METHOD new
   METHOD delete
   METHOD color
   METHOD strength
   METHOD setColor
   METHOD setStrength

   METHOD onColorChanged
   METHOD onStrengthChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QGraphicsColorizeEffect
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QGraphicsColorizeEffect>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    // QGraphicsColorizeEffect(QObject *parent = 0)
HB_FUNC_STATIC(QGRAPHICSCOLORIZEEFFECT_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQOBJECT(1) || HB_ISNIL(1)))
  {
    QGraphicsColorizeEffect *obj = new QGraphicsColorizeEffect(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QGRAPHICSCOLORIZEEFFECT_DELETE)
{
  QGraphicsColorizeEffect *obj = qobject_cast<QGraphicsColorizeEffect *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// QColor color() const
HB_FUNC_STATIC(QGRAPHICSCOLORIZEEFFECT_COLOR)
{
  QGraphicsColorizeEffect *obj = qobject_cast<QGraphicsColorizeEffect *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QColor *ptr = new QColor(obj->color());
      Qt4xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// qreal strength() const
HB_FUNC_STATIC(QGRAPHICSCOLORIZEEFFECT_STRENGTH)
{
  QGraphicsColorizeEffect *obj = qobject_cast<QGraphicsColorizeEffect *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->strength());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setColor(const QColor &c)
HB_FUNC_STATIC(QGRAPHICSCOLORIZEEFFECT_SETCOLOR)
{
  QGraphicsColorizeEffect *obj = qobject_cast<QGraphicsColorizeEffect *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setColor(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt4xHb::itemGetPtr(1)) : QColor(hb_parc(1)));
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

// void setStrength(qreal strength)
HB_FUNC_STATIC(QGRAPHICSCOLORIZEEFFECT_SETSTRENGTH)
{
  QGraphicsColorizeEffect *obj = qobject_cast<QGraphicsColorizeEffect *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setStrength(PQREAL(1));
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

void QGraphicsColorizeEffectSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QGRAPHICSCOLORIZEEFFECT_ONCOLORCHANGED)
{
  QGraphicsColorizeEffectSlots_connect_signal("colorChanged(QColor)", "colorChanged(QColor)");
}

HB_FUNC_STATIC(QGRAPHICSCOLORIZEEFFECT_ONSTRENGTHCHANGED)
{
  QGraphicsColorizeEffectSlots_connect_signal("strengthChanged(qreal)", "strengthChanged(qreal)");
}

#pragma ENDDUMP
