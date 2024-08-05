//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDECLARATIVEENGINE
REQUEST QOBJECT
REQUEST QURL
REQUEST QVARIANT
#endif

CLASS QDeclarativeContext INHERIT QObject

   METHOD new
   METHOD delete
   METHOD baseUrl
   METHOD contextObject
   METHOD contextProperty
   METHOD engine
   METHOD isValid
   METHOD parentContext
   METHOD resolvedUrl
   METHOD setBaseUrl
   METHOD setContextObject
   METHOD setContextProperty

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QDeclarativeContext
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtDeclarative/QDeclarativeContext>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtDeclarative/QDeclarativeEngine>

HB_FUNC_STATIC(QDECLARATIVECONTEXT_NEW)
{
  if (ISBETWEEN(1, 2) && ISQDECLARATIVEENGINE(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    // QDeclarativeContext(QDeclarativeEngine *engine, QObject *parent = 0)
    QDeclarativeContext *obj = new QDeclarativeContext(PQDECLARATIVEENGINE(1), OPQOBJECT(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && ISQDECLARATIVECONTEXT(1) && (ISQOBJECT(2) || HB_ISNIL(2)))
  {
    // QDeclarativeContext(QDeclarativeContext *parentContext, QObject *parent = 0)
    QDeclarativeContext *obj = new QDeclarativeContext(PQDECLARATIVECONTEXT(1), OPQOBJECT(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QDECLARATIVECONTEXT_DELETE)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// QUrl baseUrl() const
HB_FUNC_STATIC(QDECLARATIVECONTEXT_BASEURL)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUrl *ptr = new QUrl(obj->baseUrl());
      Qt4xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QObject *contextObject() const
HB_FUNC_STATIC(QDECLARATIVECONTEXT_CONTEXTOBJECT)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QObject *ptr = obj->contextObject();
      Qt4xHb::createReturnQObjectClass(ptr, "QOBJECT");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QVariant contextProperty(const QString &name) const
HB_FUNC_STATIC(QDECLARATIVECONTEXT_CONTEXTPROPERTY)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISCHAR(1))
    {
#endif
      QVariant *ptr = new QVariant(obj->contextProperty(PQSTRING(1)));
      Qt4xHb::createReturnClass(ptr, "QVARIANT", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QDeclarativeEngine *engine() const
HB_FUNC_STATIC(QDECLARATIVECONTEXT_ENGINE)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDeclarativeEngine *ptr = obj->engine();
      Qt4xHb::createReturnQObjectClass(ptr, "QDECLARATIVEENGINE");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool isValid() const
HB_FUNC_STATIC(QDECLARATIVECONTEXT_ISVALID)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isValid());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QDeclarativeContext *parentContext() const
HB_FUNC_STATIC(QDECLARATIVECONTEXT_PARENTCONTEXT)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDeclarativeContext *ptr = obj->parentContext();
      Qt4xHb::createReturnQObjectClass(ptr, "QDECLARATIVECONTEXT");
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QUrl resolvedUrl(const QUrl &src)
HB_FUNC_STATIC(QDECLARATIVECONTEXT_RESOLVEDURL)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      QUrl *ptr = new QUrl(obj->resolvedUrl(*PQURL(1)));
      Qt4xHb::createReturnClass(ptr, "QURL", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setBaseUrl(const QUrl &baseUrl)
HB_FUNC_STATIC(QDECLARATIVECONTEXT_SETBASEURL)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQURL(1))
    {
#endif
      obj->setBaseUrl(*PQURL(1));
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

// void setContextObject(QObject *object)
HB_FUNC_STATIC(QDECLARATIVECONTEXT_SETCONTEXTOBJECT)
{
  QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQOBJECT(1))
    {
#endif
      obj->setContextObject(PQOBJECT(1));
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

HB_FUNC_STATIC(QDECLARATIVECONTEXT_SETCONTEXTPROPERTY)
{
  if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQOBJECT(2))
  {
    // void setContextProperty(const QString &name, QObject *value)
    QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setContextProperty(PQSTRING(1), PQOBJECT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && HB_ISCHAR(1) && ISQVARIANT(2))
  {
    // void setContextProperty(const QString &name, const QVariant &value)
    QDeclarativeContext *obj = qobject_cast<QDeclarativeContext *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->setContextProperty(PQSTRING(1), *PQVARIANT(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

#pragma ENDDUMP
