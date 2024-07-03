//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QIMAGEIOHANDLER
#endif

CLASS QImageIOPlugin INHERIT QObject

   METHOD delete
   METHOD capabilities
   METHOD create
   METHOD keys

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QImageIOPlugin
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QImageIOPlugin>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QIMAGEIOPLUGIN_DELETE)
{
  QImageIOPlugin *obj = qobject_cast<QImageIOPlugin *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
virtual QImageIOPlugin::Capabilities capabilities( QIODevice * device, const QByteArray & format ) const = 0
*/
HB_FUNC_STATIC(QIMAGEIOPLUGIN_CAPABILITIES)
{
  QImageIOPlugin *obj = qobject_cast<QImageIOPlugin *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQIODEVICE(1) && ISQBYTEARRAY(2))
    {
#endif
      RENUM(obj->capabilities(PQIODEVICE(1), *PQBYTEARRAY(2)));
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
virtual QImageIOHandler * create( QIODevice * device, const QByteArray & format = QByteArray() ) const = 0
*/
HB_FUNC_STATIC(QIMAGEIOPLUGIN_CREATE)
{
  QImageIOPlugin *obj = qobject_cast<QImageIOPlugin *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && ISQIODEVICE(1) && (ISQBYTEARRAY(2) || HB_ISNIL(2)))
    {
#endif
      QImageIOHandler *ptr =
          obj->create(PQIODEVICE(1), HB_ISNIL(2) ? QByteArray() : *static_cast<QByteArray *>(Qt4xHb::itemGetPtr(2)));
      Qt4xHb::createReturnClass(ptr, "QIMAGEIOHANDLER", false);
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
virtual QStringList keys() const = 0
*/
HB_FUNC_STATIC(QIMAGEIOPLUGIN_KEYS)
{
  QImageIOPlugin *obj = qobject_cast<QImageIOPlugin *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRINGLIST(obj->keys());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

#pragma ENDDUMP
