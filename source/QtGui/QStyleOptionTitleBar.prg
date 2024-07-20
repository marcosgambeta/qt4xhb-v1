//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QICON
#endif

CLASS QStyleOptionTitleBar INHERIT QStyleOptionComplex

   METHOD new
   METHOD text
   METHOD setText
   METHOD icon
   METHOD setIcon
   METHOD titleBarState
   METHOD setTitleBarState
   METHOD titleBarFlags
   METHOD setTitleBarFlags

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStyleOptionTitleBar
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QStyleOptionTitleBar>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStyleOptionTitleBar()
    */
    QStyleOptionTitleBar *obj = new QStyleOptionTitleBar();
    Qt4xHb::returnNewObject(obj, true);
  }
  else if (ISNUMPAR(1) && ISQSTYLEOPTIONTITLEBAR(1))
  {
    /*
    QStyleOptionTitleBar( const QStyleOptionTitleBar &other )
    */
    QStyleOptionTitleBar *obj = new QStyleOptionTitleBar(*PQSTYLEOPTIONTITLEBAR(1));
    Qt4xHb::returnNewObject(obj, true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
QString text
*/
HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_TEXT)
{
  QStyleOptionTitleBar *obj = static_cast<QStyleOptionTitleBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RQSTRING(obj->text);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_SETTEXT)
{
  QStyleOptionTitleBar *obj = static_cast<QStyleOptionTitleBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
      obj->text = PQSTRING(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
QIcon icon
*/
HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_ICON)
{
  QStyleOptionTitleBar *obj = static_cast<QStyleOptionTitleBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      QIcon *ptr = new QIcon(obj->icon);
      Qt4xHb::createReturnClass(ptr, "QICON", true);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_SETICON)
{
  QStyleOptionTitleBar *obj = static_cast<QStyleOptionTitleBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && ISQICON(1))
    {
      obj->icon = *PQICON(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
int titleBarState
*/
HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_TITLEBARSTATE)
{
  QStyleOptionTitleBar *obj = static_cast<QStyleOptionTitleBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RINT(obj->titleBarState);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_SETTITLEBARSTATE)
{
  QStyleOptionTitleBar *obj = static_cast<QStyleOptionTitleBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->titleBarState = PINT(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

/*
Qt::WindowFlags titleBarFlags
*/
HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_TITLEBARFLAGS)
{
  QStyleOptionTitleBar *obj = static_cast<QStyleOptionTitleBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(0))
    {
      RENUM(obj->titleBarFlags);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }
}
HB_FUNC_STATIC(QSTYLEOPTIONTITLEBAR_SETTITLEBARFLAGS)
{
  QStyleOptionTitleBar *obj = static_cast<QStyleOptionTitleBar *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
      obj->titleBarFlags = (Qt::WindowFlags)hb_parni(1);
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
