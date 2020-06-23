%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=QWidget

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QTextCharFormat>

$prototype=QCalendarWidget ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$deleteMethod

$prototypeV2=int dateEditAcceptDelay() const

$prototype=QMap<QDate, QTextCharFormat> dateTextFormat () const
%% TODO: implementar

$prototype=QTextCharFormat dateTextFormat ( const QDate & date ) const
$internalMethod=|QTextCharFormat|dateTextFormat,dateTextFormat2|const QDate &

/*
[1]QMap<QDate, QTextCharFormat> dateTextFormat () const
[2]QTextCharFormat dateTextFormat ( const QDate & date ) const
*/

HB_FUNC_STATIC( QCALENDARWIDGET_DATETEXTFORMAT )
{
%%  //if( ISNUMPAR(0) )
%%  //{
%%  //  QCalendarWidget_dateTextFormat1();
%%  //}
  if( ISNUMPAR(1) && ISQDATE(1) )
  {
    QCalendarWidget_dateTextFormat2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=dateTextFormat

$prototypeV2=Qt::DayOfWeek firstDayOfWeek() const

$prototypeV2=QTextCharFormat headerTextFormat() const

$prototypeV2=QCalendarWidget::HorizontalHeaderFormat horizontalHeaderFormat() const

$prototypeV2=bool isDateEditEnabled() const

$prototypeV2=bool isGridVisible() const

$prototypeV2=bool isNavigationBarVisible() const

$prototypeV2=QDate maximumDate() const

$prototypeV2=QDate minimumDate() const

$prototypeV2=int monthShown() const

$prototypeV2=QDate selectedDate() const

$prototypeV2=QCalendarWidget::SelectionMode selectionMode() const

$prototypeV2=void setDateEditAcceptDelay( int delay )

$prototypeV2=void setDateEditEnabled( bool enable )

$prototypeV2=void setDateTextFormat( const QDate & date, const QTextCharFormat & format )

$prototypeV2=void setFirstDayOfWeek( Qt::DayOfWeek dayOfWeek )

$prototypeV2=void setHeaderTextFormat( const QTextCharFormat & format )

$prototypeV2=void setHorizontalHeaderFormat( QCalendarWidget::HorizontalHeaderFormat format )

$prototypeV2=void setMaximumDate( const QDate & date )

$prototypeV2=void setMinimumDate( const QDate & date )

$prototypeV2=void setSelectionMode( QCalendarWidget::SelectionMode mode )

$prototypeV2=void setVerticalHeaderFormat( QCalendarWidget::VerticalHeaderFormat format )

$prototypeV2=void setWeekdayTextFormat( Qt::DayOfWeek dayOfWeek, const QTextCharFormat & format )

$prototypeV2=QCalendarWidget::VerticalHeaderFormat verticalHeaderFormat() const

$prototypeV2=QTextCharFormat weekdayTextFormat( Qt::DayOfWeek dayOfWeek ) const

$prototypeV2=int yearShown() const

$prototypeV2=virtual QSize minimumSizeHint() const

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=void setCurrentPage( int year, int month )

$prototypeV2=void setDateRange( const QDate & min, const QDate & max )

$prototypeV2=void setGridVisible( bool show )

$prototypeV2=void setNavigationBarVisible( bool visible )

$prototypeV2=void setSelectedDate( const QDate & date )

$prototypeV2=void showNextMonth()

$prototypeV2=void showNextYear()

$prototypeV2=void showPreviousMonth()

$prototypeV2=void showPreviousYear()

$prototypeV2=void showSelectedDate()

$prototypeV2=void showToday()

$beginSignals
$signal=|activated(QDate)
$signal=|clicked(QDate)
$signal=|currentPageChanged(int,int)
$signal=|selectionChanged()
$endSignals

#pragma ENDDUMP
