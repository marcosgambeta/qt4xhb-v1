//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT4XHB_NO_REQUESTS
REQUEST QACTION
REQUEST QACTIONGROUP
REQUEST QLAYOUT
REQUEST QWIDGET
#endif

CLASS HUiLoader INHERIT QUiLoader

   METHOD new
   METHOD delete

   METHOD setCreateActionCB
   METHOD setCreateActionGroupCB
   METHOD setCreateLayoutCB
   METHOD setCreateWidgetCB

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HUiLoader
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HUiLoader.hpp"

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#define GET_PTR_FROM_SELF(p) HUiLoader *p = qobject_cast<HUiLoader *>(Qt4xHb::getQObjectPointerFromSelfItem())

// HUiLoader(QObject *parent = 0)
HB_FUNC_STATIC(HUILOADER_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    HUiLoader *obj = new HUiLoader(OPQOBJECT(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// ~HUiLoader()
HB_FUNC_STATIC(HUILOADER_DELETE)
{
  GET_PTR_FROM_SELF(obj);

  DELETE_QOBJECT(obj);

  hb_itemReturn(hb_stackSelfItem());
}

// QAction *createAction(QObject *parent = 0, const QString &name = QString())

// QActionGroup *createActionGroup(QObject *parent = 0, const QString &name = QString())

// QLayout *createLayout(const QString &className, QObject *parent = 0, const QString &name = QString())

// QWidget *createWidget(const QString &className, QWidget *parent = 0, const QString &name = QString())

// void setCreateActionCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATEACTIONCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateActionCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setCreateActionGroupCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATEACTIONGROUPCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateActionGroupCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setCreateLayoutCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATELAYOUTCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateLayoutCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

// void setCreateWidgetCB (PHB_ITEM block)
HB_FUNC_STATIC(HUILOADER_SETCREATEWIDGETCB)
{
  GET_PTR_FROM_SELF(obj);

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setCreateWidgetCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
