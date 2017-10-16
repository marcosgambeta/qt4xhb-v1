$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCALENDARWIDGET
REQUEST QDATE
REQUEST QDATETIME
REQUEST QTIME
REQUEST QSIZE
#endif

CLASS QDateTimeEdit INHERIT QAbstractSpinBox

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD calendarPopup
   METHOD calendarWidget
   METHOD clearMaximumDate
   METHOD clearMaximumDateTime
   METHOD clearMaximumTime
   METHOD clearMinimumDate
   METHOD clearMinimumDateTime
   METHOD clearMinimumTime
   METHOD currentSection
   METHOD currentSectionIndex
   METHOD date
   METHOD dateTime
   METHOD displayFormat
   METHOD displayedSections
   METHOD maximumDate
   METHOD maximumDateTime
   METHOD maximumTime
   METHOD minimumDate
   METHOD minimumDateTime
   METHOD minimumTime
   METHOD sectionAt
   METHOD sectionCount
   METHOD sectionText
   METHOD setCalendarPopup
   METHOD setCalendarWidget
   METHOD setCurrentSection
   METHOD setCurrentSectionIndex
   METHOD setDateRange
   METHOD setDateTimeRange
   METHOD setDisplayFormat
   METHOD setMaximumDate
   METHOD setMaximumDateTime
   METHOD setMaximumTime
   METHOD setMinimumDate
   METHOD setMinimumDateTime
   METHOD setMinimumTime
   METHOD setSelectedSection
   METHOD setTimeRange
   METHOD setTimeSpec
   METHOD time
   METHOD timeSpec
   METHOD clear
   METHOD event
   METHOD sizeHint
   METHOD stepBy
   METHOD setDate
   METHOD setDateTime
   METHOD setTime

   METHOD onDateChanged
   METHOD onDateTimeChanged
   METHOD onTimeChanged

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDateTimeEdit>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDateTimeEdit ( QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_NEW1 )
{
  QDateTimeEdit * o = new QDateTimeEdit ( OPQWIDGET(1,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_NEW2 )
{
  QDateTimeEdit * o = new QDateTimeEdit ( *PQDATETIME(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QDateTimeEdit ( const QDate & date, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_NEW3 )
{
  QDateTimeEdit * o = new QDateTimeEdit ( *PQDATE(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

/*
QDateTimeEdit ( const QTime & time, QWidget * parent = 0 )
*/
HB_FUNC_STATIC( QDATETIMEEDIT_NEW4 )
{
  QDateTimeEdit * o = new QDateTimeEdit ( *PQTIME(1), OPQWIDGET(2,0) );
  _qt4xhb_storePointerAndFlag ( o, false );
}

//[1]QDateTimeEdit ( QWidget * parent = 0 )
//[2]QDateTimeEdit ( const QDateTime & datetime, QWidget * parent = 0 )
//[3]QDateTimeEdit ( const QDate & date, QWidget * parent = 0 )
//[4]QDateTimeEdit ( const QTime & time, QWidget * parent = 0 )

HB_FUNC_STATIC( QDATETIMEEDIT_NEW )
{
  if( ISBETWEEN(0,1) && (ISQWIDGET(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDATETIMEEDIT_NEW1 );
  }
  else if( ISBETWEEN(1,2) && ISQDATETIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATETIMEEDIT_NEW2 );
  }
  else if( ISBETWEEN(1,2) && ISQDATE(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATETIMEEDIT_NEW3 );
  }
  else if( ISBETWEEN(1,2) && ISQTIME(1) && (ISQWIDGET(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATETIMEEDIT_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
bool calendarPopup () const
*/
$method=|bool|calendarPopup|

/*
QCalendarWidget * calendarWidget () const
*/
$method=|QCalendarWidget *|calendarWidget|

/*
void clearMaximumDate ()
*/
$method=|void|clearMaximumDate|

/*
void clearMaximumDateTime ()
*/
$method=|void|clearMaximumDateTime|

/*
void clearMaximumTime ()
*/
$method=|void|clearMaximumTime|

/*
void clearMinimumDate ()
*/
$method=|void|clearMinimumDate|

/*
void clearMinimumDateTime ()
*/
$method=|void|clearMinimumDateTime|

/*
void clearMinimumTime ()
*/
$method=|void|clearMinimumTime|

/*
Section currentSection () const
*/
$method=|QDateTimeEdit::Section|currentSection|

/*
int currentSectionIndex () const
*/
$method=|int|currentSectionIndex|

/*
QDate date () const
*/
$method=|QDate|date|

/*
QDateTime dateTime () const
*/
$method=|QDateTime|dateTime|

/*
QString displayFormat () const
*/
$method=|QString|displayFormat|

/*
Sections displayedSections () const
*/
$method=|QDateTimeEdit::Sections|displayedSections|

/*
QDate maximumDate () const
*/
$method=|QDate|maximumDate|

/*
QDateTime maximumDateTime () const
*/
$method=|QDateTime|maximumDateTime|

/*
QTime maximumTime () const
*/
$method=|QTime|maximumTime|

/*
QDate minimumDate () const
*/
$method=|QDate|minimumDate|

/*
QDateTime minimumDateTime () const
*/
$method=|QDateTime|minimumDateTime|

/*
QTime minimumTime () const
*/
$method=|QTime|minimumTime|

/*
Section sectionAt ( int index ) const
*/
$method=|QDateTimeEdit::Section|sectionAt|int

/*
int sectionCount () const
*/
$method=|int|sectionCount|

/*
QString sectionText ( Section section ) const
*/
$method=|QString|sectionText|QDateTimeEdit::Section

/*
void setCalendarPopup ( bool enable )
*/
$method=|void|setCalendarPopup|bool

/*
void setCalendarWidget ( QCalendarWidget * calendarWidget )
*/
$method=|void|setCalendarWidget|QCalendarWidget *

/*
void setCurrentSection ( Section section )
*/
$method=|void|setCurrentSection|QDateTimeEdit::Section

/*
void setCurrentSectionIndex ( int index )
*/
$method=|void|setCurrentSectionIndex|int

/*
void setDateRange ( const QDate & min, const QDate & max )
*/
$method=|void|setDateRange|const QDate &,const QDate &

/*
void setDateTimeRange ( const QDateTime & min, const QDateTime & max )
*/
$method=|void|setDateTimeRange|const QDateTime &,const QDateTime &

/*
void setDisplayFormat ( const QString & format )
*/
$method=|void|setDisplayFormat|const QString &

/*
void setMaximumDate ( const QDate & max )
*/
$method=|void|setMaximumDate|const QDate &

/*
void setMaximumDateTime ( const QDateTime & dt )
*/
$method=|void|setMaximumDateTime|const QDateTime &

/*
void setMaximumTime ( const QTime & max )
*/
$method=|void|setMaximumTime|const QTime &

/*
void setMinimumDate ( const QDate & min )
*/
$method=|void|setMinimumDate|const QDate &

/*
void setMinimumDateTime ( const QDateTime & dt )
*/
$method=|void|setMinimumDateTime|const QDateTime &

/*
void setMinimumTime ( const QTime & min )
*/
$method=|void|setMinimumTime|const QTime &

/*
void setSelectedSection ( Section section )
*/
$method=|void|setSelectedSection|QDateTimeEdit::Section

/*
void setTimeRange ( const QTime & min, const QTime & max )
*/
$method=|void|setTimeRange|const QTime &,const QTime &

/*
void setTimeSpec ( Qt::TimeSpec spec )
*/
$method=|void|setTimeSpec|Qt::TimeSpec

/*
QTime time () const
*/
$method=|QTime|time|

/*
Qt::TimeSpec timeSpec () const
*/
$method=|Qt::TimeSpec|timeSpec|

/*
virtual void clear ()
*/
$virtualMethod=|void|clear|

/*
virtual bool event ( QEvent * event )
*/
$virtualMethod=|bool|event|QEvent *

/*
virtual QSize sizeHint () const
*/
$virtualMethod=|QSize|sizeHint|

/*
virtual void stepBy ( int steps )
*/
$virtualMethod=|void|stepBy|int

/*
void setDate ( const QDate & date )
*/
$method=|void|setDate|const QDate &

/*
void setDateTime ( const QDateTime & dateTime )
*/
$method=|void|setDateTime|const QDateTime &

/*
void setTime ( const QTime & time )
*/
$method=|void|setTime|const QTime &

#pragma ENDDUMP
