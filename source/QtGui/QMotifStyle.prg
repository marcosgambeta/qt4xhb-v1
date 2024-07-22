//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QPALETTE
REQUEST QPIXMAP
REQUEST QRECT
REQUEST QSIZE
#endif

CLASS QMotifStyle INHERIT QCommonStyle

   METHOD new
   METHOD delete
   METHOD setUseHighlightColors
   METHOD useHighlightColors
   METHOD drawComplexControl
   METHOD drawControl
   METHOD drawPrimitive
   METHOD event
   METHOD pixelMetric
   METHOD polish
   METHOD sizeFromContents
   METHOD standardPalette
   METHOD standardPixmap
   METHOD styleHint
   METHOD subControlRect
   METHOD subElementRect

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QMotifStyle
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QMotifStyle>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

    /*
    QMotifStyle(bool useHighlightCols = false)
    */
HB_FUNC_STATIC(QMOTIFSTYLE_NEW)
{
  if (ISBETWEEN(0, 1) && (HB_ISLOG(1) || HB_ISNIL(1)))
  {
    QMotifStyle *obj = new QMotifStyle(OPBOOL(1, false));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QMOTIFSTYLE_DELETE)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
void setUseHighlightColors(bool arg)
*/
HB_FUNC_STATIC(QMOTIFSTYLE_SETUSEHIGHLIGHTCOLORS)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setUseHighlightColors(PBOOL(1));
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
bool useHighlightColors() const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_USEHIGHLIGHTCOLORS)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->useHighlightColors());
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
virtual void drawComplexControl(QStyle::ComplexControl cc, const QStyleOptionComplex *opt, QPainter *p, const QWidget
* widget = 0) const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_DRAWCOMPLEXCONTROL)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawComplexControl((QStyle::ComplexControl)hb_parni(1), PQSTYLEOPTIONCOMPLEX(2), PQPAINTER(3),
                              OPQWIDGET(4, 0));
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
virtual void drawControl(QStyle::ControlElement element, const QStyleOption *opt, QPainter *p, const QWidget *widget
= 0) const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_DRAWCONTROL)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawControl((QStyle::ControlElement)hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4, 0));
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
virtual void drawPrimitive(QStyle::PrimitiveElement pe, const QStyleOption *opt, QPainter *p, const QWidget *w = 0)
const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_DRAWPRIMITIVE)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQPAINTER(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      obj->drawPrimitive((QStyle::PrimitiveElement)hb_parni(1), PQSTYLEOPTION(2), PQPAINTER(3), OPQWIDGET(4, 0));
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
virtual bool event(QEvent *e)
*/
HB_FUNC_STATIC(QMOTIFSTYLE_EVENT)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQEVENT(1))
    {
#endif
      RBOOL(obj->event(PQEVENT(1)));
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
virtual int pixelMetric(QStyle::PixelMetric pm, const QStyleOption *opt = 0, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_PIXELMETRIC)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 3) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      RINT(obj->pixelMetric((QStyle::PixelMetric)hb_parni(1),
                            HB_ISNIL(2) ? 0 : static_cast<QStyleOption *>(Qt4xHb::itemGetPtr(2)), OPQWIDGET(3, 0)));
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
virtual void polish(QPalette &pal)
*/
HB_FUNC_STATIC(QMOTIFSTYLE_POLISH)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQPALETTE(1))
    {
#endif
      obj->polish(*PQPALETTE(1));
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
virtual QSize sizeFromContents(QStyle::ContentsType ct, const QStyleOption *opt, const QSize &contentsSize, const
QWidget *widget = 0) const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_SIZEFROMCONTENTS)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && ISQSIZE(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      QSize *ptr = new QSize(
          obj->sizeFromContents((QStyle::ContentsType)hb_parni(1), PQSTYLEOPTION(2), *PQSIZE(3), OPQWIDGET(4, 0)));
      Qt4xHb::createReturnClass(ptr, "QSIZE", true);
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
virtual QPalette standardPalette() const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_STANDARDPALETTE)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QPalette *ptr = new QPalette(obj->standardPalette());
      Qt4xHb::createReturnClass(ptr, "QPALETTE", true);
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
virtual QPixmap standardPixmap(QStyle::StandardPixmap standardPixmap, const QStyleOption *opt, const QWidget *widget
= 0) const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_STANDARDPIXMAP)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      QPixmap *ptr =
          new QPixmap(obj->standardPixmap((QStyle::StandardPixmap)hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3, 0)));
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

/*
virtual int styleHint(QStyle::StyleHint hint, const QStyleOption *opt = 0, const QWidget *widget = 0,
QStyleHintReturn *returnData = 0) const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_STYLEHINT)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(1, 4) && HB_ISNUM(1) && (ISQSTYLEOPTION(2) || HB_ISNIL(2)) && (ISQWIDGET(3) || HB_ISNIL(3)) &&
        (ISQSTYLEHINTRETURN(4) || HB_ISNIL(4)))
    {
#endif
      RINT(obj->styleHint((QStyle::StyleHint)hb_parni(1),
                          HB_ISNIL(2) ? 0 : static_cast<QStyleOption *>(Qt4xHb::itemGetPtr(2)), OPQWIDGET(3, 0),
                          HB_ISNIL(4) ? 0 : static_cast<QStyleHintReturn *>(Qt4xHb::itemGetPtr(4))));
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
virtual QRect subControlRect(QStyle::ComplexControl cc, const QStyleOptionComplex *opt, QStyle::SubControl sc, const
QWidget *widget = 0) const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_SUBCONTROLRECT)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(3, 4) && HB_ISNUM(1) && ISQSTYLEOPTIONCOMPLEX(2) && HB_ISNUM(3) && (ISQWIDGET(4) || HB_ISNIL(4)))
    {
#endif
      QRect *ptr = new QRect(obj->subControlRect((QStyle::ComplexControl)hb_parni(1), PQSTYLEOPTIONCOMPLEX(2),
                                                 (QStyle::SubControl)hb_parni(3), OPQWIDGET(4, 0)));
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
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
virtual QRect subElementRect(QStyle::SubElement sr, const QStyleOption *opt, const QWidget *widget = 0) const
*/
HB_FUNC_STATIC(QMOTIFSTYLE_SUBELEMENTRECT)
{
  QMotifStyle *obj = qobject_cast<QMotifStyle *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISBETWEEN(2, 3) && HB_ISNUM(1) && ISQSTYLEOPTION(2) && (ISQWIDGET(3) || HB_ISNIL(3)))
    {
#endif
      QRect *ptr = new QRect(obj->subElementRect((QStyle::SubElement)hb_parni(1), PQSTYLEOPTION(2), OPQWIDGET(3, 0)));
      Qt4xHb::createReturnClass(ptr, "QRECT", true);
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
