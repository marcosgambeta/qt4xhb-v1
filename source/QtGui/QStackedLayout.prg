//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QWIDGET
#endif

CLASS QStackedLayout INHERIT QLayout

   METHOD new
   METHOD delete
   METHOD addWidget
   METHOD currentIndex
   METHOD currentWidget
   METHOD insertWidget
   METHOD setStackingMode
   METHOD stackingMode
   METHOD widget
   METHOD setCurrentIndex
   METHOD setCurrentWidget

   METHOD onSetCurrentIndex
   METHOD onSetCurrentWidget

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QStackedLayout
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QStackedLayout>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

HB_FUNC_STATIC(QSTACKEDLAYOUT_NEW)
{
  if (ISNUMPAR(0))
  {
    /*
    QStackedLayout()
    */
    QStackedLayout *obj = new QStackedLayout();
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(1) && ISQWIDGET(1))
  {
    /*
    QStackedLayout( QWidget * parent )
    */
    QStackedLayout *obj = new QStackedLayout(PQWIDGET(1));
    Qt4xHb::returnNewObject(obj, false);
  }
  else if (ISNUMPAR(1) && ISQLAYOUT(1))
  {
    /*
    QStackedLayout( QLayout * parentLayout )
    */
    QStackedLayout *obj = new QStackedLayout(PQLAYOUT(1));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QSTACKEDLAYOUT_DELETE)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
int addWidget( QWidget * widget )
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_ADDWIDGET)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      RINT(obj->addWidget(PQWIDGET(1)));
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
int currentIndex() const
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_CURRENTINDEX)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->currentIndex());
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
QWidget * currentWidget() const
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_CURRENTWIDGET)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QWidget *ptr = obj->currentWidget();
      Qt4xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
int insertWidget( int index, QWidget * widget )
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_INSERTWIDGET)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQWIDGET(2))
    {
#endif
      RINT(obj->insertWidget(PINT(1), PQWIDGET(2)));
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
void setStackingMode( QStackedLayout::StackingMode stackingMode )
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_SETSTACKINGMODE)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setStackingMode((QStackedLayout::StackingMode)hb_parni(1));
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
QStackedLayout::StackingMode stackingMode() const
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_STACKINGMODE)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->stackingMode());
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
QWidget * widget( int index ) const
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_WIDGET)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QWidget *ptr = obj->widget(PINT(1));
      Qt4xHb::createReturnQWidgetClass(ptr, "QWIDGET");
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
void setCurrentIndex( int index )
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_SETCURRENTINDEX)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setCurrentIndex(PINT(1));
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
void setCurrentWidget( QWidget * widget )
*/
HB_FUNC_STATIC(QSTACKEDLAYOUT_SETCURRENTWIDGET)
{
  QStackedLayout *obj = qobject_cast<QStackedLayout *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQWIDGET(1))
    {
#endif
      obj->setCurrentWidget(PQWIDGET(1));
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

void QStackedLayoutSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QSTACKEDLAYOUT_ONSETCURRENTINDEX)
{
  QStackedLayoutSlots_connect_signal("setCurrentIndex(int)", "setCurrentIndex(int)");
}

HB_FUNC_STATIC(QSTACKEDLAYOUT_ONSETCURRENTWIDGET)
{
  QStackedLayoutSlots_connect_signal("setCurrentWidget(QWidget*)", "setCurrentWidget(QWidget*)");
}

#pragma ENDDUMP
