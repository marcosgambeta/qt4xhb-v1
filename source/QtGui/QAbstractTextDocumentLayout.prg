//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPAINTDEVICE
REQUEST QRECTF
REQUEST QSIZEF
REQUEST QTEXTDOCUMENT
REQUEST QTEXTOBJECTINTERFACE
#endif

CLASS QAbstractTextDocumentLayout INHERIT QObject

   METHOD anchorAt
   METHOD blockBoundingRect
   METHOD document
   METHOD documentSize
   METHOD frameBoundingRect
   METHOD handlerForObject
   METHOD hitTest
   METHOD pageCount
   METHOD paintDevice
   METHOD registerHandler
   METHOD setPaintDevice

   METHOD onDocumentSizeChanged
   METHOD onPageCountChanged
   METHOD onUpdate
   METHOD onUpdateBlock

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QAbstractTextDocumentLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QAbstractTextDocumentLayout>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QString anchorAt(const QPointF &position) const
    */
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_ANCHORAT)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPOINTF(1))
    {
#endif
      RQSTRING(obj->anchorAt(*PQPOINTF(1)));
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
virtual QRectF blockBoundingRect(const QTextBlock &block) const = 0
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_BLOCKBOUNDINGRECT)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTBLOCK(1))
    {
#endif
      QRectF *ptr = new QRectF(obj->blockBoundingRect(*PQTEXTBLOCK(1)));
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
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
QTextDocument *document() const
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENT)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextDocument *ptr = obj->document();
      Qt4xHb::createReturnQObjectClass(ptr, "QTEXTDOCUMENT");
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
virtual QSizeF documentSize() const = 0
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_DOCUMENTSIZE)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSizeF *ptr = new QSizeF(obj->documentSize());
      Qt4xHb::createReturnClass(ptr, "QSIZEF", true);
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
virtual QRectF frameBoundingRect(QTextFrame *frame) const = 0
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_FRAMEBOUNDINGRECT)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTFRAME(1))
    {
#endif
      QRectF *ptr = new QRectF(obj->frameBoundingRect(PQTEXTFRAME(1)));
      Qt4xHb::createReturnClass(ptr, "QRECTF", true);
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
QTextObjectInterface *handlerForObject(int objectType) const
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_HANDLERFOROBJECT)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QTextObjectInterface *ptr = obj->handlerForObject(PINT(1));
      Qt4xHb::createReturnClass(ptr, "QTEXTOBJECTINTERFACE", false);
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
virtual int hitTest(const QPointF &point, Qt::HitTestAccuracy accuracy) const = 0
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_HITTEST)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQPOINTF(1) && HB_ISNUM(2))
    {
#endif
      RINT(obj->hitTest(*PQPOINTF(1), (Qt::HitTestAccuracy)hb_parni(2)));
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
virtual int pageCount() const = 0
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_PAGECOUNT)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->pageCount());
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
QPaintDevice *paintDevice() const
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_PAINTDEVICE)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPaintDevice *ptr = obj->paintDevice();
      Qt4xHb::createReturnClass(ptr, "QPAINTDEVICE", false);
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
void registerHandler(int objectType, QObject *component)
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_REGISTERHANDLER)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQOBJECT(2))
    {
#endif
      obj->registerHandler(PINT(1), PQOBJECT(2));
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
void setPaintDevice(QPaintDevice *device)
*/
HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_SETPAINTDEVICE)
{
  QAbstractTextDocumentLayout *obj =
      qobject_cast<QAbstractTextDocumentLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPAINTDEVICE(1))
    {
#endif
      obj->setPaintDevice(PQPAINTDEVICE(1));
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

void QAbstractTextDocumentLayoutSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_ONDOCUMENTSIZECHANGED)
{
  QAbstractTextDocumentLayoutSlots_connect_signal("documentSizeChanged(QSizeF)", "documentSizeChanged(QSizeF)");
}

HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_ONPAGECOUNTCHANGED)
{
  QAbstractTextDocumentLayoutSlots_connect_signal("pageCountChanged(int)", "pageCountChanged(int)");
}

HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_ONUPDATE)
{
  QAbstractTextDocumentLayoutSlots_connect_signal("update(QRectF)", "update(QRectF)");
}

HB_FUNC_STATIC(QABSTRACTTEXTDOCUMENTLAYOUT_ONUPDATEBLOCK)
{
  QAbstractTextDocumentLayoutSlots_connect_signal("updateBlock(QTextBlock)", "updateBlock(QTextBlock)");
}

#pragma ENDDUMP
