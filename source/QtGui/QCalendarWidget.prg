//
// Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
//
// Copyright (c) 2024 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
//

// DO NOT EDIT THIS FILE - the content was created using a source code generator

// clang-format off

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATE
REQUEST QSIZE
REQUEST QTEXTCHARFORMAT
#endif

CLASS QCalendarWidget INHERIT QWidget

   METHOD new
   METHOD delete
   METHOD dateEditAcceptDelay
   METHOD dateTextFormat
   METHOD firstDayOfWeek
   METHOD headerTextFormat
   METHOD horizontalHeaderFormat
   METHOD isDateEditEnabled
   METHOD isGridVisible
   METHOD isNavigationBarVisible
   METHOD maximumDate
   METHOD minimumDate
   METHOD monthShown
   METHOD selectedDate
   METHOD selectionMode
   METHOD setDateEditAcceptDelay
   METHOD setDateEditEnabled
   METHOD setDateTextFormat
   METHOD setFirstDayOfWeek
   METHOD setHeaderTextFormat
   METHOD setHorizontalHeaderFormat
   METHOD setMaximumDate
   METHOD setMinimumDate
   METHOD setSelectionMode
   METHOD setVerticalHeaderFormat
   METHOD setWeekdayTextFormat
   METHOD verticalHeaderFormat
   METHOD weekdayTextFormat
   METHOD yearShown
   METHOD minimumSizeHint
   METHOD sizeHint
   METHOD setCurrentPage
   METHOD setDateRange
   METHOD setGridVisible
   METHOD setNavigationBarVisible
   METHOD setSelectedDate
   METHOD showNextMonth
   METHOD showNextYear
   METHOD showPreviousMonth
   METHOD showPreviousYear
   METHOD showSelectedDate
   METHOD showToday

   METHOD onActivated
   METHOD onClicked
   METHOD onCurrentPageChanged
   METHOD onSelectionChanged

   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject() CLASS QCalendarWidget
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

// clang-format on

#pragma BEGINDUMP

#include <QtGui/QCalendarWidget>

#include "qt4xhb_common.hpp"
#include "qt4xhb_macros.hpp"
#include "qt4xhb_utils.hpp"
#include "qt4xhb_events.hpp"
#include "qt4xhb_signals.hpp"

#include <QtGui/QTextCharFormat>

    /*
    QCalendarWidget( QWidget * parent = 0 )
    */
HB_FUNC_STATIC(QCALENDARWIDGET_NEW)
{
  if (ISBETWEEN(0, 1) && (ISQWIDGET(1) || HB_ISNIL(1)))
  {
    QCalendarWidget *obj = new QCalendarWidget(OPQWIDGET(1, 0));
    Qt4xHb::returnNewObject(obj, false);
  }
  else
  {
    hb_errRT_BASE(EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS);
  }
}

HB_FUNC_STATIC(QCALENDARWIDGET_DELETE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

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
int dateEditAcceptDelay() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_DATEEDITACCEPTDELAY)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->dateEditAcceptDelay());
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
QTextCharFormat dateTextFormat( const QDate & date ) const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_DATETEXTFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDATE(1))
    {
#endif
      QTextCharFormat *ptr = new QTextCharFormat(obj->dateTextFormat(*PQDATE(1)));
      Qt4xHb::createReturnClass(ptr, "QTEXTCHARFORMAT", true);
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
Qt::DayOfWeek firstDayOfWeek() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_FIRSTDAYOFWEEK)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->firstDayOfWeek());
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
QTextCharFormat headerTextFormat() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_HEADERTEXTFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QTextCharFormat *ptr = new QTextCharFormat(obj->headerTextFormat());
      Qt4xHb::createReturnClass(ptr, "QTEXTCHARFORMAT", true);
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
QCalendarWidget::HorizontalHeaderFormat horizontalHeaderFormat() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_HORIZONTALHEADERFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->horizontalHeaderFormat());
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
bool isDateEditEnabled() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_ISDATEEDITENABLED)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isDateEditEnabled());
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
bool isGridVisible() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_ISGRIDVISIBLE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isGridVisible());
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
bool isNavigationBarVisible() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_ISNAVIGATIONBARVISIBLE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RBOOL(obj->isNavigationBarVisible());
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
QDate maximumDate() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_MAXIMUMDATE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDate *ptr = new QDate(obj->maximumDate());
      Qt4xHb::createReturnClass(ptr, "QDATE", true);
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
QDate minimumDate() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_MINIMUMDATE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDate *ptr = new QDate(obj->minimumDate());
      Qt4xHb::createReturnClass(ptr, "QDATE", true);
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
int monthShown() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_MONTHSHOWN)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->monthShown());
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
QDate selectedDate() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SELECTEDDATE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QDate *ptr = new QDate(obj->selectedDate());
      Qt4xHb::createReturnClass(ptr, "QDATE", true);
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
QCalendarWidget::SelectionMode selectionMode() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SELECTIONMODE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->selectionMode());
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
void setDateEditAcceptDelay( int delay )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETDATEEDITACCEPTDELAY)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setDateEditAcceptDelay(PINT(1));
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
void setDateEditEnabled( bool enable )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETDATEEDITENABLED)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setDateEditEnabled(PBOOL(1));
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
void setDateTextFormat( const QDate & date, const QTextCharFormat & format )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETDATETEXTFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQDATE(1) && ISQTEXTCHARFORMAT(2))
    {
#endif
      obj->setDateTextFormat(*PQDATE(1), *PQTEXTCHARFORMAT(2));
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
void setFirstDayOfWeek( Qt::DayOfWeek dayOfWeek )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETFIRSTDAYOFWEEK)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setFirstDayOfWeek((Qt::DayOfWeek)hb_parni(1));
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
void setHeaderTextFormat( const QTextCharFormat & format )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETHEADERTEXTFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQTEXTCHARFORMAT(1))
    {
#endif
      obj->setHeaderTextFormat(*PQTEXTCHARFORMAT(1));
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
void setHorizontalHeaderFormat( QCalendarWidget::HorizontalHeaderFormat format )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETHORIZONTALHEADERFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setHorizontalHeaderFormat((QCalendarWidget::HorizontalHeaderFormat)hb_parni(1));
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
void setMaximumDate( const QDate & date )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETMAXIMUMDATE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDATE(1))
    {
#endif
      obj->setMaximumDate(*PQDATE(1));
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
void setMinimumDate( const QDate & date )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETMINIMUMDATE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDATE(1))
    {
#endif
      obj->setMinimumDate(*PQDATE(1));
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
void setSelectionMode( QCalendarWidget::SelectionMode mode )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETSELECTIONMODE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setSelectionMode((QCalendarWidget::SelectionMode)hb_parni(1));
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
void setVerticalHeaderFormat( QCalendarWidget::VerticalHeaderFormat format )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETVERTICALHEADERFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      obj->setVerticalHeaderFormat((QCalendarWidget::VerticalHeaderFormat)hb_parni(1));
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
void setWeekdayTextFormat( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETWEEKDAYTEXTFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && ISQTEXTCHARFORMAT(2))
    {
#endif
      obj->setWeekdayTextFormat((Qt::DayOfWeek)hb_parni(1), *PQTEXTCHARFORMAT(2));
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
QCalendarWidget::VerticalHeaderFormat verticalHeaderFormat() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_VERTICALHEADERFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RENUM(obj->verticalHeaderFormat());
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
QTextCharFormat weekdayTextFormat( Qt::DayOfWeek dayOfWeek ) const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_WEEKDAYTEXTFORMAT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISNUM(1))
    {
#endif
      QTextCharFormat *ptr = new QTextCharFormat(obj->weekdayTextFormat((Qt::DayOfWeek)hb_parni(1)));
      Qt4xHb::createReturnClass(ptr, "QTEXTCHARFORMAT", true);
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
int yearShown() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_YEARSHOWN)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      RINT(obj->yearShown());
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
virtual QSize minimumSizeHint() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_MINIMUMSIZEHINT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->minimumSizeHint());
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
virtual QSize sizeHint() const
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SIZEHINT)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      QSize *ptr = new QSize(obj->sizeHint());
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
void setCurrentPage( int year, int month )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETCURRENTPAGE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && HB_ISNUM(1) && HB_ISNUM(2))
    {
#endif
      obj->setCurrentPage(PINT(1), PINT(2));
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
void setDateRange( const QDate & min, const QDate & max )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETDATERANGE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(2) && ISQDATE(1) && ISQDATE(2))
    {
#endif
      obj->setDateRange(*PQDATE(1), *PQDATE(2));
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
void setGridVisible( bool show )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETGRIDVISIBLE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setGridVisible(PBOOL(1));
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
void setNavigationBarVisible( bool visible )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETNAVIGATIONBARVISIBLE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && HB_ISLOG(1))
    {
#endif
      obj->setNavigationBarVisible(PBOOL(1));
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
void setSelectedDate( const QDate & date )
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SETSELECTEDDATE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(1) && ISQDATE(1))
    {
#endif
      obj->setSelectedDate(*PQDATE(1));
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
void showNextMonth()
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SHOWNEXTMONTH)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->showNextMonth();
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
void showNextYear()
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SHOWNEXTYEAR)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->showNextYear();
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
void showPreviousMonth()
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SHOWPREVIOUSMONTH)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->showPreviousMonth();
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
void showPreviousYear()
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SHOWPREVIOUSYEAR)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->showPreviousYear();
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
void showSelectedDate()
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SHOWSELECTEDDATE)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->showSelectedDate();
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
void showToday()
*/
HB_FUNC_STATIC(QCALENDARWIDGET_SHOWTODAY)
{
  QCalendarWidget *obj = qobject_cast<QCalendarWidget *>(Qt4xHb::getQObjectPointerFromSelfItem());

  if (obj != NULL)
  {
#ifndef QT4XHB_DONT_CHECK_PARAMETERS
    if (ISNUMPAR(0))
    {
#endif
      obj->showToday();
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

void QCalendarWidgetSlots_connect_signal(const QString &signal, const QString &slot);

HB_FUNC_STATIC(QCALENDARWIDGET_ONACTIVATED)
{
  QCalendarWidgetSlots_connect_signal("activated(QDate)", "activated(QDate)");
}

HB_FUNC_STATIC(QCALENDARWIDGET_ONCLICKED)
{
  QCalendarWidgetSlots_connect_signal("clicked(QDate)", "clicked(QDate)");
}

HB_FUNC_STATIC(QCALENDARWIDGET_ONCURRENTPAGECHANGED)
{
  QCalendarWidgetSlots_connect_signal("currentPageChanged(int,int)", "currentPageChanged(int,int)");
}

HB_FUNC_STATIC(QCALENDARWIDGET_ONSELECTIONCHANGED)
{
  QCalendarWidgetSlots_connect_signal("selectionChanged()", "selectionChanged()");
}

#pragma ENDDUMP
