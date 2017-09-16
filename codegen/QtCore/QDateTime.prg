$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATETIME
REQUEST QDATE
REQUEST QTIME
#endif

CLASS QDateTime

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new
   METHOD delete
   METHOD addDays
   METHOD addMSecs
   METHOD addMonths
   METHOD addSecs
   METHOD addYears
   METHOD date
   METHOD daysTo
   METHOD isNull
   METHOD isValid
   METHOD msecsTo
   METHOD secsTo
   METHOD setDate
   METHOD setMSecsSinceEpoch
   METHOD setTime
   METHOD setTimeSpec
   METHOD setTime_t
   METHOD time
   METHOD timeSpec
   METHOD toLocalTime
   METHOD toMSecsSinceEpoch
   METHOD toString1
   METHOD toString2
   METHOD toString
   METHOD toTimeSpec
   METHOD toTime_t
   METHOD toUTC
   METHOD currentDateTime
   METHOD currentDateTimeUtc
   METHOD currentMSecsSinceEpoch
   METHOD fromMSecsSinceEpoch
   METHOD fromString1
   METHOD fromString2
   METHOD fromString
   METHOD fromTime_t

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDateTime>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDateTime ()
*/
$constructor=|new1|

/*
QDateTime ( const QDate & date )
*/
$constructor=|new2|const QDate &

/*
QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
*/
$constructor=|new3|const QDate &,const QTime &,Qt::TimeSpec=Qt::LocalTime

/*
QDateTime ( const QDateTime & other )
*/
$constructor=|new4|const QDateTime &

//[1]QDateTime ()
//[2]QDateTime ( const QDate & date )
//[3]QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
//[4]QDateTime ( const QDateTime & other )

HB_FUNC_STATIC( QDATETIME_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATETIME_NEW1 );
  }
  else if( ISNUMPAR(1) && ISQDATE(1) )
  {
    HB_FUNC_EXEC( QDATETIME_NEW2 );
  }
  else if( ISBETWEEN(2,3) && ISQDATE(1) && ISQTIME(2) && (ISNUM(3)||ISNIL(3)) )
  {
    HB_FUNC_EXEC( QDATETIME_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQDATETIME(1) )
  {
    HB_FUNC_EXEC( QDATETIME_NEW4 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDateTime addDays ( int ndays ) const
*/
$method=|QDateTime|addDays|int

/*
QDateTime addMSecs ( qint64 msecs ) const
*/
$method=|QDateTime|addMSecs|qint64

/*
QDateTime addMonths ( int nmonths ) const
*/
$method=|QDateTime|addMonths|int

/*
QDateTime addSecs ( int s ) const
*/
$method=|QDateTime|addSecs|int

/*
QDateTime addYears ( int nyears ) const
*/
$method=|QDateTime|addYears|int

/*
QDate date () const
*/
$method=|QDate|date|

/*
int daysTo ( const QDateTime & other ) const
*/
$method=|int|daysTo|const QDateTime &

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
qint64 msecsTo ( const QDateTime & other ) const
*/
$method=|qint64|msecsTo|const QDateTime &

/*
int secsTo ( const QDateTime & other ) const
*/
$method=|int|secsTo|const QDateTime &

/*
void setDate ( const QDate & date )
*/
$method=|void|setDate|const QDate &

/*
void setMSecsSinceEpoch ( qint64 msecs )
*/
$method=|void|setMSecsSinceEpoch|qint64

/*
void setTime ( const QTime & time )
*/
$method=|void|setTime|const QTime &

/*
void setTimeSpec ( Qt::TimeSpec spec )
*/
$method=|void|setTimeSpec|Qt::TimeSpec

/*
void setTime_t ( uint seconds )
*/
$method=|void|setTime_t|uint

/*
QTime time () const
*/
$method=|QTime|time|

/*
Qt::TimeSpec timeSpec () const
*/
$method=|Qt::TimeSpec|timeSpec|

/*
QDateTime toLocalTime () const
*/
$method=|QDateTime|toLocalTime|

/*
qint64 toMSecsSinceEpoch () const
*/
$method=|qint64|toMSecsSinceEpoch|

/*
QString toString ( const QString & format ) const
*/
$method=|QString|toString,toString1|const QString &

/*
QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/
$method=|QString|toString,toString2|Qt::DateFormat=Qt::TextDate

//[1]QString toString ( const QString & format ) const
//[2]QString toString ( Qt::DateFormat format = Qt::TextDate ) const

HB_FUNC_STATIC( QDATETIME_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDATETIME_TOSTRING1 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDATETIME_TOSTRING2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QDateTime toTimeSpec ( Qt::TimeSpec specification ) const
*/
$method=|QDateTime|toTimeSpec|Qt::TimeSpec

/*
uint toTime_t () const
*/
$method=|uint|toTime_t|

/*
QDateTime toUTC () const
*/
$method=|QDateTime|toUTC|

/*
static QDateTime currentDateTime ()
*/
$staticMethod=|QDateTime|currentDateTime|

/*
static QDateTime currentDateTimeUtc ()
*/
$staticMethod=|QDateTime|currentDateTimeUtc|

/*
static qint64 currentMSecsSinceEpoch ()
*/
$staticMethod=|qint64|currentMSecsSinceEpoch|

/*
static QDateTime fromMSecsSinceEpoch ( qint64 msecs )
*/
$staticMethod=|QDateTime|fromMSecsSinceEpoch|qint64

/*
static QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
$staticMethod=|QDateTime|fromString,fromString1|const QString &,Qt::DateFormat=Qt::TextDate

/*
static QDateTime fromString ( const QString & string, const QString & format )
*/
$staticMethod=|QDateTime|fromString,fromString2|const QString &,const QString &

//[1]QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
//[2]QDateTime fromString ( const QString & string, const QString & format )

HB_FUNC_STATIC( QDATETIME_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATETIME_FROMSTRING1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATETIME_FROMSTRING1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QDateTime fromTime_t ( uint seconds )
*/
$staticMethod=|QDateTime|fromTime_t|uint

$extraMethods

#pragma ENDDUMP
