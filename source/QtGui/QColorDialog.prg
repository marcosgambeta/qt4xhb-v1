//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCOLOR
#endif

CLASS QColorDialog INHERIT QDialog

   METHOD new
   METHOD delete
   METHOD currentColor
   METHOD open
   METHOD options
   METHOD selectedColor
   METHOD setCurrentColor
   METHOD setOption
   METHOD setOptions
   METHOD testOption
   METHOD setVisible
   METHOD customColor
   METHOD customCount
   METHOD getColor
   METHOD setCustomColor
   METHOD setStandardColor

   METHOD onColorSelected
   METHOD onCurrentColorChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QColorDialog
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QColorDialog>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QCOLORDIALOG_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    // QColorDialog(QWidget *parent = 0)
    QColorDialog *obj = new QColorDialog(OPQWIDGET(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISBETWEEN(1, 2) && (ISQCOLOR(1) || HB_ISCHAR(1)) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    // QColorDialog(const QColor &initial, QWidget *parent = 0)
    QColorDialog *obj = new QColorDialog(
        HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt4xHb::itemGetPtr(1)) : QColor(hb_parc(1)), OPQWIDGET(2, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QCOLORDIALOG_DELETE)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

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

// QColor currentColor() const
HB_FUNC_STATIC(QCOLORDIALOG_CURRENTCOLOR)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QColor *ptr = new QColor(obj->currentColor());
      Qt4xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

HB_FUNC_STATIC(QCOLORDIALOG_OPEN)
{
  if (ISNUMPAR(0))
  {
    // void open()
    QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->open();
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else if (ISNUMPAR(2) && ISQOBJECT(1) && HB_ISCHAR(2))
  {
    // void open(QObject *receiver, const char *member)
    QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

    if (obj != NULL)
    {
      obj->open(PQOBJECT(1), PCONSTCHAR(2));
    }

    hb_itemReturn(hb_stackSelfItem());
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// QColorDialog::ColorDialogOptions options() const
HB_FUNC_STATIC(QCOLORDIALOG_OPTIONS)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->options());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// QColor selectedColor() const
HB_FUNC_STATIC(QCOLORDIALOG_SELECTEDCOLOR)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QColor *ptr = new QColor(obj->selectedColor());
      Qt4xHb::createReturnClass(ptr, "QCOLOR", true);
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// void setCurrentColor(const QColor &color)
HB_FUNC_STATIC(QCOLORDIALOG_SETCURRENTCOLOR)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && (ISQCOLOR(1) || HB_ISCHAR(1)))
    {
#endif
      obj->setCurrentColor(HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt4xHb::itemGetPtr(1)) : QColor(hb_parc(1)));
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

// void setOption(QColorDialog::ColorDialogOption option, bool on = true)
HB_FUNC_STATIC(QCOLORDIALOG_SETOPTION)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 2) && HB_ISNUM(1) && (HB_ISLOG(2) || HB_ISNIL(2)))
    {
#endif
      obj->setOption((QColorDialog::ColorDialogOption)hb_parni(1), OPBOOL(2, true));
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

// void setOptions(QColorDialog::ColorDialogOptions options)
HB_FUNC_STATIC(QCOLORDIALOG_SETOPTIONS)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setOptions((QColorDialog::ColorDialogOptions)hb_parni(1));
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

// bool testOption(QColorDialog::ColorDialogOption option) const
HB_FUNC_STATIC(QCOLORDIALOG_TESTOPTION)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      RBOOL(obj->testOption((QColorDialog::ColorDialogOption)hb_parni(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    }
    else
    {
      hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
    }
#endif
  }
}

// virtual void setVisible(bool visible)
HB_FUNC_STATIC(QCOLORDIALOG_SETVISIBLE)
{
  QColorDialog *obj = qobject_cast<QColorDialog *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setVisible(PBOOL(1));
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

// static QRgb customColor(int index)
HB_FUNC_STATIC(QCOLORDIALOG_CUSTOMCOLOR)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(1) && HB_ISNUM(1))
  {
#endif
    RQRGB(QColorDialog::customColor(PINT(1)));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

// static int customCount()
HB_FUNC_STATIC(QCOLORDIALOG_CUSTOMCOUNT)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(0))
  {
#endif
    RINT(QColorDialog::customCount());
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif
}

HB_FUNC_STATIC(QCOLORDIALOG_GETCOLOR)
{
  if (ISBETWEEN(3, 4) && (ISQCOLOR(1) || HB_ISCHAR(1)) && ISQWIDGET(2) && HB_ISCHAR(3) && (HB_ISNUM(4) || HB_ISNIL(4)))
  {
    // static QColor getColor(const QColor &initial, QWidget *parent, const QString &title,
    // QColorDialog::ColorDialogOptions options = 0)

    QColor *ptr = new QColor(QColorDialog::getColor(
        HB_ISOBJECT(1) ? *static_cast<QColor *>(Qt4xHb::itemGetPtr(1)) : QColor(hb_parc(1)), PQWIDGET(2), PQSTRING(3),
        HB_ISNIL(4) ? (QColorDialog::ColorDialogOptions)0 : (QColorDialog::ColorDialogOptions)hb_parni(4)));
    Qt4xHb::createReturnClass(ptr, "QCOLOR", true);
  }
  else if (ISBETWEEN(0, 2) && (ISQCOLOR(1) || HB_ISCHAR(1) || HB_ISNIL(1)) && (ISQWIDGET(2) || HB_ISNIL(2)))
  {
    // static QColor getColor(const QColor &initial = Qt::white, QWidget *parent = 0)

    QColor *ptr = new QColor(QColorDialog::getColor(
        HB_ISNIL(1) ? Qt::white : *static_cast<QColor *>(Qt4xHb::itemGetPtr(1)), OPQWIDGET(2, 0)));
    Qt4xHb::createReturnClass(ptr, "QCOLOR", true);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

// static void setCustomColor(int index, QRgb color)
HB_FUNC_STATIC(QCOLORDIALOG_SETCUSTOMCOLOR)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
#endif
    QColorDialog::setCustomColor(PINT(1), PQRGB(2));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

// static void setStandardColor(int index, QRgb color)
HB_FUNC_STATIC(QCOLORDIALOG_SETSTANDARDCOLOR)
{
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
  {
#endif
    QColorDialog::setStandardColor(PINT(1), PQRGB(2));
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
#endif

  hb_itemReturn(hb_stackSelfItem());
}

void QColorDialogSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCOLORDIALOG_ONCOLORSELECTED)
{
  QColorDialogSlots_connect_signal("colorSelected(QColor)", "colorSelected(QColor)");
}

HB_FUNC_STATIC(QCOLORDIALOG_ONCURRENTCOLORCHANGED)
{
  QColorDialogSlots_connect_signal("currentColorChanged(QColor)", "currentColorChanged(QColor)");
}

#pragma ENDDUMP
