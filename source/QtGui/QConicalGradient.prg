//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPOINTF
#endif

CLASS QConicalGradient INHERIT QGradient

   METHOD new
   METHOD angle
   METHOD center
   METHOD setAngle
   METHOD setCenter

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QConicalGradient
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QConicalGradient>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QCONICALGRADIENT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QConicalGradient()
    */
    QConicalGradient *obj = new QConicalGradient();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(2) && ISQPOINTF(1) && HB_ISNUM(2))
  {
    /*
    QConicalGradient( const QPointF & center, qreal startAngle )
    */
    QConicalGradient *obj = new QConicalGradient(*PQPOINTF(1), PQREAL(2));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && HB_ISNUM(3))
  {
    /*
    QConicalGradient( qreal cx, qreal cy, qreal startAngle )
    */
    QConicalGradient *obj = new QConicalGradient(PQREAL(1), PQREAL(2), PQREAL(3));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
qreal angle() const
*/
HB_FUNC_STATIC(QCONICALGRADIENT_ANGLE)
{
  QConicalGradient *obj = static_cast<QConicalGradient *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQREAL(obj->angle());
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
QPointF center() const
*/
HB_FUNC_STATIC(QCONICALGRADIENT_CENTER)
{
  QConicalGradient *obj = static_cast<QConicalGradient *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPointF *ptr = new QPointF(obj->center());
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
void setAngle( qreal angle )
*/
HB_FUNC_STATIC(QCONICALGRADIENT_SETANGLE)
{
  QConicalGradient *obj = static_cast<QConicalGradient *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setAngle(PQREAL(1));
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

HB_FUNC_STATIC(QCONICALGRADIENT_SETCENTER)
{
  if (ISNUMPAR(1) && ISQPOINTF(1))
  {
    /*
    void setCenter( const QPointF & center )
    */
    QConicalGradient *obj = static_cast<QConicalGradient *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setCenter(*PQPOINTF(1));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
    /*
    void setCenter( qreal x, qreal y )
    */
    QConicalGradient *obj = static_cast<QConicalGradient *>(Qt4xHb::itemGetPtrStackSelfItem());

    if (obj != NULL)
    {
      obj->setCenter(PQREAL(1), PQREAL(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
