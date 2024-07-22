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

CLASS QAbstractEventDispatcher INHERIT QObject

   METHOD delete
   METHOD filterEvent
   METHOD flush
   METHOD hasPendingEvents
   METHOD interrupt
   METHOD processEvents
   METHOD registerSocketNotifier
   METHOD registerTimer
   METHOD unregisterSocketNotifier
   METHOD unregisterTimer
   METHOD unregisterTimers
   METHOD wakeUp
   METHOD instance

   METHOD onAboutToBlock
   METHOD onAwake

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractEventDispatcher
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtCore/QAbstractEventDispatcher>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_DELETE)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
bool filterEvent( void *message )
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_FILTEREVENT)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISPOINTER(1))
    {
#endif
      RBOOL(obj->filterEvent(static_cast<void *>(hb_parptr(1))));
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
virtual void flush() = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_FLUSH)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->flush();
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
virtual bool hasPendingEvents() = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_HASPENDINGEVENTS)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->hasPendingEvents());
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
virtual void interrupt() = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_INTERRUPT)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->interrupt();
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
virtual bool processEvents( QEventLoop::ProcessEventsFlags flags ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_PROCESSEVENTS)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->processEvents((QEventLoop::ProcessEventsFlags)hb_parni(1)));
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
virtual void registerSocketNotifier( QSocketNotifier *notifier ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_REGISTERSOCKETNOTIFIER)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSOCKETNOTIFIER(1))
    {
#endif
      obj->registerSocketNotifier(PQSOCKETNOTIFIER(1));
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

HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_REGISTERTIMER)
{
  if (ISNUMPAR(2) && HB_ISNUM(1) && ISQOBJECT(2))
  {
    /*
    int registerTimer( int interval, QObject *object )
    */
    QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      RINT(obj->registerTimer(PINT(1), PQOBJECT(2)));
    }
  }
  else if (ISNUMPAR(3) && HB_ISNUM(1) && HB_ISNUM(2) && ISQOBJECT(3))
  {
    /*
    virtual void registerTimer( int timerId, int interval, QObject *object ) = 0
    */
    QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->registerTimer(PINT(1), PINT(2), PQOBJECT(3));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

/*
virtual void unregisterSocketNotifier( QSocketNotifier *notifier ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_UNREGISTERSOCKETNOTIFIER)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQSOCKETNOTIFIER(1))
    {
#endif
      obj->unregisterSocketNotifier(PQSOCKETNOTIFIER(1));
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
virtual bool unregisterTimer( int timerId ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_UNREGISTERTIMER)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->unregisterTimer(PINT(1)));
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
virtual bool unregisterTimers( QObject *object ) = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_UNREGISTERTIMERS)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      RBOOL(obj->unregisterTimers(PQOBJECT(1)));
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
virtual void wakeUp() = 0
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_WAKEUP)
{
  QAbstractEventDispatcher *obj = qobject_cast<QAbstractEventDispatcher *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->wakeUp();
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
static QAbstractEventDispatcher *instance( QThread *thread = 0 )
*/
HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_INSTANCE)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISBETWEEN(0, 1) && (ISQTHREAD(1) || HB_ISNIL(1)))
  {
#endif
    QAbstractEventDispatcher *ptr = QAbstractEventDispatcher::instance(OPQTHREAD(1, 0));
    Qt4xHb::createReturnQObjectClass(ptr, "QABSTRACTEVENTDISPATCHER");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

void QAbstractEventDispatcherSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_ONABOUTTOBLOCK)
{
  QAbstractEventDispatcherSlots_connect_signal("aboutToBlock()", "aboutToBlock()");
}

HB_FUNC_STATIC(QABSTRACTEVENTDISPATCHER_ONAWAKE)
{
  QAbstractEventDispatcherSlots_connect_signal("awake()", "awake()");
}

#pragma ENDDUMP
