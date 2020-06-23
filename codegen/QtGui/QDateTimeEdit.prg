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

$beginClassFrom=QAbstractSpinBox

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtGui/QCalendarWidget>

$prototype=QDateTimeEdit ( QWidget * parent = 0 )
$internalConstructor=|new1|QWidget *=0

$prototype=QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = 0 )
$internalConstructor=|new2|const QDateTime &,QWidget *=0

$prototype=QDateTimeEdit ( const QDate & date, QWidget * parent = 0 )
$internalConstructor=|new3|const QDate &,QWidget *=0

$prototype=QDateTimeEdit ( const QTime & time, QWidget * parent = 0 )
$internalConstructor=|new4|const QTime &,QWidget *=0

/*
[1]QDateTimeEdit ( QWidget * parent = 0 )
[2]QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = 0 )
[3]QDateTimeEdit ( const QDate & date, QWidget * parent = 0 )
[4]QDateTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/

HB_FUNC_STATIC( QDATETIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    QDateTimeEdit_new1();
  }
  else if( ISBETWEEN(1,2) && ISQDATETIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDateTimeEdit_new2();
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDateTimeEdit_new3();
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    QDateTimeEdit_new4();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool calendarPopup() const

$prototypeV2=QCalendarWidget * calendarWidget() const

$prototypeV2=void clearMaximumDate()

$prototypeV2=void clearMaximumDateTime()

$prototypeV2=void clearMaximumTime()

$prototypeV2=void clearMinimumDate()

$prototypeV2=void clearMinimumDateTime()

$prototypeV2=void clearMinimumTime()

$prototypeV2=QDateTimeEdit::Section currentSection() const

$prototypeV2=int currentSectionIndex() const

$prototypeV2=QDate date() const

$prototypeV2=QDateTime dateTime() const

$prototypeV2=QString displayFormat() const

$prototypeV2=QDateTimeEdit::Sections displayedSections() const

$prototypeV2=QDate maximumDate() const

$prototypeV2=QDateTime maximumDateTime() const

$prototypeV2=QTime maximumTime() const

$prototypeV2=QDate minimumDate() const

$prototypeV2=QDateTime minimumDateTime() const

$prototypeV2=QTime minimumTime() const

$prototypeV2=QDateTimeEdit::Section sectionAt( int index ) const

$prototypeV2=int sectionCount() const

$prototypeV2=QString sectionText( QDateTimeEdit::Section section ) const

$prototypeV2=void setCalendarPopup( bool enable )

$prototypeV2=void setCalendarWidget( QCalendarWidget * calendarWidget )

$prototypeV2=void setCurrentSection( QDateTimeEdit::Section section )

$prototypeV2=void setCurrentSectionIndex( int index )

$prototypeV2=void setDateRange( const QDate & min, const QDate & max )

$prototypeV2=void setDateTimeRange( const QDateTime & min, const QDateTime & max )

$prototypeV2=void setDisplayFormat( const QString & format )

$prototypeV2=void setMaximumDate( const QDate & max )

$prototypeV2=void setMaximumDateTime( const QDateTime & dt )

$prototypeV2=void setMaximumTime( const QTime & max )

$prototypeV2=void setMinimumDate( const QDate & min )

$prototypeV2=void setMinimumDateTime( const QDateTime & dt )

$prototypeV2=void setMinimumTime( const QTime & min )

$prototypeV2=void setSelectedSection( QDateTimeEdit::Section section )

$prototypeV2=void setTimeRange( const QTime & min, const QTime & max )

$prototypeV2=void setTimeSpec( Qt::TimeSpec spec )

$prototypeV2=QTime time() const

$prototypeV2=Qt::TimeSpec timeSpec() const

$prototypeV2=virtual void clear()

$prototypeV2=virtual bool event( QEvent * event )

$prototypeV2=virtual QSize sizeHint() const

$prototypeV2=virtual void stepBy( int steps )

$prototypeV2=void setDate( const QDate & date )

$prototypeV2=void setDateTime( const QDateTime & dateTime )

$prototypeV2=void setTime( const QTime & time )

$beginSignals
$signal=|dateChanged(QDate)
$signal=|dateTimeChanged(QDateTime)
$signal=|timeChanged(QTime)
$endSignals

#pragma ENDDUMP
