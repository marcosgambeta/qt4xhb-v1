//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2025 Marcos Antonio Gambeta <marcosgambeta@outlook.com>
//

// clang-format off

#include <hbclass.ch>

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS HEventFilter INHERIT QObject

   METHOD new
   METHOD delete

   METHOD setEventFilterCB

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS HEventFilter
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include "HEventFilter.hpp"

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

// HEventFilter(QObject *parent = NULL)
HB_FUNC_STATIC(HEVENTFILTER_NEW)
{
  if (ISBETWEEN(0, 1) && ISQOBJECTORNIL(1)) {
    HEventFilter *obj = new HEventFilter(OPQOBJECT(1, NULL));
    Qt4xHb::returnNewObject(obj, false);
  } else {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// ~HEventFilter()
HB_FUNC_STATIC(HEVENTFILTER_DELETE)
{
  HEventFilter *obj = static_cast<HEventFilter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL) {
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

// void setEventFilterCB (PHB_ITEM block)
HB_FUNC_STATIC(HEVENTFILTER_SETEVENTFILTERCB)
{
  HEventFilter *obj = static_cast<HEventFilter *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL) {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1)) {
#endif
      obj->setEventFilterCB(PBLOCKORSYMBOL(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    } else {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
