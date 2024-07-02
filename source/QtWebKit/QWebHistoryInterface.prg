/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
#endif

CLASS QWebHistoryInterface INHERIT QObject

   METHOD delete
   METHOD addHistoryEntry
   METHOD historyContains
   METHOD defaultInterface
   METHOD setDefaultInterface

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QWebHistoryInterface
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtWebKit/QWebHistoryInterface>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QWEBHISTORYINTERFACE_DELETE)
{
  QWebHistoryInterface *obj = qobject_cast<QWebHistoryInterface *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
virtual void addHistoryEntry( const QString & url ) = 0
*/
HB_FUNC_STATIC(QWEBHISTORYINTERFACE_ADDHISTORYENTRY)
{
  QWebHistoryInterface *obj = qobject_cast<QWebHistoryInterface *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      obj->addHistoryEntry(PQSTRING(1));
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
virtual bool historyContains( const QString & url ) const = 0
*/
HB_FUNC_STATIC(QWEBHISTORYINTERFACE_HISTORYCONTAINS)
{
  QWebHistoryInterface *obj = qobject_cast<QWebHistoryInterface *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      RBOOL(obj->historyContains(PQSTRING(1)));
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
static QWebHistoryInterface * defaultInterface()
*/
HB_FUNC_STATIC(QWEBHISTORYINTERFACE_DEFAULTINTERFACE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    QWebHistoryInterface *ptr = QWebHistoryInterface::defaultInterface();
    Qt4xHb::createReturnQObjectClass(ptr, "QWEBHISTORYINTERFACE");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

/*
static void setDefaultInterface( QWebHistoryInterface * defaultInterface )
*/
HB_FUNC_STATIC(QWEBHISTORYINTERFACE_SETDEFAULTINTERFACE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && ISQWEBHISTORYINTERFACE(1))
  {
#endif
    QWebHistoryInterface::setDefaultInterface(PQWEBHISTORYINTERFACE(1));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

#pragma ENDDUMP
