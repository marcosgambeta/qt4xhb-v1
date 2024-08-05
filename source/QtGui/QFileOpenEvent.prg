//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QURL
#endif

CLASS QFileOpenEvent INHERIT QEvent

   METHOD new
   METHOD delete
   METHOD file
   METHOD openFile
   METHOD url

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QFileOpenEvent
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QFileOpenEvent>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"

#include <QtCore/QUrl>

HB_FUNC_STATIC(QFILEOPENEVENT_NEW)
{
  if (ISNUMPAR(1) && HB_ISCHAR(1))
  {
    // QFileOpenEvent(const QString &file)
    QFileOpenEvent *obj = new QFileOpenEvent(PQSTRING(1));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(1) && ISQURL(1))
  {
    // QFileOpenEvent(const QUrl &url)
    QFileOpenEvent *obj = new QFileOpenEvent(*PQURL(1));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QFILEOPENEVENT_DELETE)
{
  QFileOpenEvent *obj = static_cast<QFileOpenEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

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

// QString file() const
HB_FUNC_STATIC(QFILEOPENEVENT_FILE)
{
  QFileOpenEvent *obj = static_cast<QFileOpenEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RQSTRING(obj->file());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// bool openFile(QFile &file, QIODevice::OpenMode flags) const
HB_FUNC_STATIC(QFILEOPENEVENT_OPENFILE)
{
  QFileOpenEvent *obj = static_cast<QFileOpenEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQFILE(1) && HB_ISNUM(2))
    {
#endif
      RBOOL(obj->openFile(*PQFILE(1), (QIODevice::OpenMode)hb_parni(2)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QUrl url() const
HB_FUNC_STATIC(QFILEOPENEVENT_URL)
{
  QFileOpenEvent *obj = static_cast<QFileOpenEvent *>(Qt4xHb::itemGetPtrStackSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QUrl *ptr = new QUrl(obj->url());
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

#pragma ENDDUMP
