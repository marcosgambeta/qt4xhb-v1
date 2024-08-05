//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPIXMAP
#endif

CLASS QSplashScreen INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD finish
   METHOD pixmap
   METHOD repaint
   METHOD setPixmap
   METHOD clearMessage
   METHOD showMessage

   METHOD onMessageChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QSplashScreen
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QSplashScreen>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QSPLASHSCREEN_NEW)
{
  if (ISBETWEEN(0, 2) && (ISQPIXMAP(1) || HB_ISNIL(1)) && (HB_ISNUM(2) || HB_ISNIL(2)))
  {
    // QSplashScreen(const QPixmap &pixmap = QPixmap(), Qt::WindowFlags f = 0)
    QSplashScreen *obj = new QSplashScreen(HB_ISNIL(1) ? QPixmap() : *static_cast<QPixmap *>(Qt4xHb::itemGetPtr(1)),
                                           HB_ISNIL(2) ? (Qt::WindowFlags)0 : (Qt::WindowFlags)hb_parni(2));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 3) && ISQWIDGET(1) && (ISQPIXMAP(2) || HB_ISNIL(2)) && (HB_ISNUM(3) || HB_ISNIL(3)))
  {
    // QSplashScreen(QWidget *parent, const QPixmap &pixmap = QPixmap(), Qt::WindowFlags f = 0)
    QSplashScreen *obj =
        new QSplashScreen(PQWIDGET(1), HB_ISNIL(2) ? QPixmap() : *static_cast<QPixmap *>(Qt4xHb::itemGetPtr(2)),
                          HB_ISNIL(3) ? (Qt::WindowFlags)0 : (Qt::WindowFlags)hb_parni(3));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSPLASHSCREEN_DELETE)
{
  QSplashScreen *obj = qobject_cast<QSplashScreen *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// void finish(QWidget *mainWin)
HB_FUNC_STATIC(QSPLASHSCREEN_FINISH)
{
  QSplashScreen *obj = qobject_cast<QSplashScreen *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      obj->finish(PQWIDGET(1));
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

// const QPixmap pixmap() const
HB_FUNC_STATIC(QSPLASHSCREEN_PIXMAP)
{
  QSplashScreen *obj = qobject_cast<QSplashScreen *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPixmap *ptr = new QPixmap(obj->pixmap());
      Qt4xHb::createReturnClass(ptr, "QPIXMAP", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void repaint()
HB_FUNC_STATIC(QSPLASHSCREEN_REPAINT)
{
  QSplashScreen *obj = qobject_cast<QSplashScreen *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->repaint();
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

// void setPixmap(const QPixmap &pixmap)
HB_FUNC_STATIC(QSPLASHSCREEN_SETPIXMAP)
{
  QSplashScreen *obj = qobject_cast<QSplashScreen *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPIXMAP(1))
    {
#endif
      obj->setPixmap(*PQPIXMAP(1));
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

// void clearMessage()
HB_FUNC_STATIC(QSPLASHSCREEN_CLEARMESSAGE)
{
  QSplashScreen *obj = qobject_cast<QSplashScreen *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->clearMessage();
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

// void showMessage(const QString &message, int alignment = Qt::AlignLeft, const QColor &color = Qt::black)
HB_FUNC_STATIC(QSPLASHSCREEN_SHOWMESSAGE)
{
  QSplashScreen *obj = qobject_cast<QSplashScreen *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISCHAR(1) && (HB_ISNUM(2) || HB_ISNIL(2)) && (ISQCOLOR(3) || HB_ISNIL(3)))
    {
#endif
      obj->showMessage(PQSTRING(1), OPINT(2, Qt::AlignLeft),
                       HB_ISNIL(3) ? Qt::black : *static_cast<QColor *>(Qt4xHb::itemGetPtr(3)));
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

void QSplashScreenSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QSPLASHSCREEN_ONMESSAGECHANGED)
{
  QSplashScreenSlots_connect_signal("messageChanged(QString)", "messageChanged(QString)");
}

#pragma ENDDUMP
