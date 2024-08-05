//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QStyleOptionComplex INHERIT QStyleOption

   METHOD new
   METHOD delete
   METHOD subControls
   METHOD setSubControls
   METHOD activeSubControls
   METHOD setActiveSubControls

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionComplex
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QStyleOptionComplex>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QSTYLEOPTIONCOMPLEX_NEW)
{
  if (ISBETWEEN(0, 2) && (HB_ISNUM(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    // QStyleOptionComplex(int version = QStyleOptionComplex::Version, int type = QStyleOptionComplex::SO_Complex)
    QStyleOptionComplex *obj =
        new QStyleOptionComplex(OPINT(1, QStyleOptionComplex::Version), OPINT(2, QStyleOptionComplex::SO_Complex));
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONCOMPLEX(1))
  {
    // QStyleOptionComplex(const QStyleOptionComplex &other)
    QStyleOptionComplex *obj = new QStyleOptionComplex(*PQSTYLEOPTIONCOMPLEX(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSTYLEOPTIONCOMPLEX_DELETE)
{
  QStyleOptionComplex *obj = static_cast<QStyleOptionComplex *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// QStyle::SubControls subControls
HB_FUNC_STATIC(QSTYLEOPTIONCOMPLEX_SUBCONTROLS)
{
  QStyleOptionComplex *obj = static_cast<QStyleOptionComplex *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->subControls);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONCOMPLEX_SETSUBCONTROLS)
{
  QStyleOptionComplex *obj = static_cast<QStyleOptionComplex *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->subControls=(QStyle::SubControls)hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

// QStyle::SubControls activeSubControls
HB_FUNC_STATIC(QSTYLEOPTIONCOMPLEX_ACTIVESUBCONTROLS)
{
  QStyleOptionComplex *obj = static_cast<QStyleOptionComplex *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->activeSubControls);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONCOMPLEX_SETACTIVESUBCONTROLS)
{
  QStyleOptionComplex *obj = static_cast<QStyleOptionComplex *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->activeSubControls=(QStyle::SubControls)hb_parni(1));
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
