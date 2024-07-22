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

CLASS QAbstractMessageHandler INHERIT QObject

   METHOD delete
   METHOD message

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractMessageHandler
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtXmlPatterns/QAbstractMessageHandler>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QABSTRACTMESSAGEHANDLER_DELETE)
{
  QAbstractMessageHandler *obj = qobject_cast<QAbstractMessageHandler *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
void message(QtMsgType type, const QString &description, const QUrl &identifier = QUrl(), const QSourceLocation &
sourceLocation = QSourceLocation())
*/
HB_FUNC_STATIC(QABSTRACTMESSAGEHANDLER_MESSAGE)
{
  QAbstractMessageHandler *obj = qobject_cast<QAbstractMessageHandler *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 4) && HB_ISNUM(1) && HB_ISCHAR(2) && (ISQURL(3) || HB_ISNIL(3)) &&
        (ISQSOURCELOCATION(4) || HB_ISNIL(4)))
    {
#endif
      obj->message((QtMsgType)hb_parni(1), PQSTRING(2),
                   HB_ISNIL(3) ? QUrl() : *static_cast<QUrl *>(Qt4xHb::itemGetPtr(3)),
                   HB_ISNIL(4) ? QSourceLocation() : *static_cast<QSourceLocation *>(Qt4xHb::itemGetPtr(4)));
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

#pragma ENDDUMP
