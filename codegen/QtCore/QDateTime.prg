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
HB_FUNC_STATIC( QDATETIME_NEW1 )
{
  QDateTime * o = new QDateTime ();
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDateTime ( const QDate & date )
*/
HB_FUNC_STATIC( QDATETIME_NEW2 )
{
  QDateTime * o = new QDateTime ( *PQDATE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
*/
HB_FUNC_STATIC( QDATETIME_NEW3 )
{
  QDateTime * o = new QDateTime ( *PQDATE(1), *PQTIME(2), ISNIL(3)? Qt::LocalTime : (Qt::TimeSpec) hb_parni(3) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


/*
QDateTime ( const QDateTime & other )
*/
HB_FUNC_STATIC( QDATETIME_NEW4 )
{
  QDateTime * o = new QDateTime ( *PQDATETIME(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}


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
HB_FUNC_STATIC( QDATETIME_ADDDAYS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->addDays ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime addMSecs ( qint64 msecs ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDMSECS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->addMSecs ( PQINT64(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime addMonths ( int nmonths ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDMONTHS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->addMonths ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime addSecs ( int s ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDSECS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->addSecs ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime addYears ( int nyears ) const
*/
HB_FUNC_STATIC( QDATETIME_ADDYEARS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->addYears ( PINT(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDate date () const
*/
HB_FUNC_STATIC( QDATETIME_DATE )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->date () );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
int daysTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_DAYSTO )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->daysTo ( *PQDATETIME(1) ) );
  }
}


/*
bool isNull () const
*/
HB_FUNC_STATIC( QDATETIME_ISNULL )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}


/*
bool isValid () const
*/
HB_FUNC_STATIC( QDATETIME_ISVALID )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}


/*
qint64 msecsTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_MSECSTO )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->msecsTo ( *PQDATETIME(1) ) );
  }
}


/*
int secsTo ( const QDateTime & other ) const
*/
HB_FUNC_STATIC( QDATETIME_SECSTO )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->secsTo ( *PQDATETIME(1) ) );
  }
}


/*
void setDate ( const QDate & date )
*/
HB_FUNC_STATIC( QDATETIME_SETDATE )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setDate ( *PQDATE(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMSecsSinceEpoch ( qint64 msecs )
*/
HB_FUNC_STATIC( QDATETIME_SETMSECSSINCEEPOCH )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setMSecsSinceEpoch ( PQINT64(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTime ( const QTime & time )
*/
HB_FUNC_STATIC( QDATETIME_SETTIME )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTime ( *PQTIME(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTimeSpec ( Qt::TimeSpec spec )
*/
HB_FUNC_STATIC( QDATETIME_SETTIMESPEC )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTimeSpec ( (Qt::TimeSpec) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTime_t ( uint seconds )
*/
HB_FUNC_STATIC( QDATETIME_SETTIME_T )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setTime_t ( PUINT(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTime time () const
*/
HB_FUNC_STATIC( QDATETIME_TIME )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * ptr = new QTime( obj->time () );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
Qt::TimeSpec timeSpec () const
*/
HB_FUNC_STATIC( QDATETIME_TIMESPEC )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->timeSpec () );
  }
}


/*
QDateTime toLocalTime () const
*/
HB_FUNC_STATIC( QDATETIME_TOLOCALTIME )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toLocalTime () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
qint64 toMSecsSinceEpoch () const
*/
HB_FUNC_STATIC( QDATETIME_TOMSECSSINCEEPOCH )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQINT64( obj->toMSecsSinceEpoch () );
  }
}

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
}

/*
QDateTime toTimeSpec ( Qt::TimeSpec specification ) const
*/
HB_FUNC_STATIC( QDATETIME_TOTIMESPEC )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toTimeSpec ( (Qt::TimeSpec) hb_parni(1) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
uint toTime_t () const
*/
HB_FUNC_STATIC( QDATETIME_TOTIME_T )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (uint) obj->toTime_t () );
  }
}


/*
QDateTime toUTC () const
*/
HB_FUNC_STATIC( QDATETIME_TOUTC )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toUTC () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}



/*
QDateTime currentDateTime ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTDATETIME )
{
  QDateTime * ptr = new QDateTime( QDateTime::currentDateTime () );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
}


/*
QDateTime currentDateTimeUtc ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTDATETIMEUTC )
{
  QDateTime * ptr = new QDateTime( QDateTime::currentDateTimeUtc () );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
}


/*
qint64 currentMSecsSinceEpoch ()
*/
HB_FUNC_STATIC( QDATETIME_CURRENTMSECSSINCEEPOCH )
{
  RQINT64( QDateTime::currentMSecsSinceEpoch () );
}


/*
QDateTime fromMSecsSinceEpoch ( qint64 msecs )
*/
HB_FUNC_STATIC( QDATETIME_FROMMSECSSINCEEPOCH )
{
  QDateTime * ptr = new QDateTime( QDateTime::fromMSecsSinceEpoch ( PQINT64(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
}


/*
QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
HB_FUNC_STATIC( QDATETIME_FROMSTRING1 )
{
  QDateTime * ptr = new QDateTime( QDateTime::fromString ( PQSTRING(1), ISNIL(2)? Qt::TextDate : (Qt::DateFormat) hb_parni(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
}


/*
QDateTime fromString ( const QString & string, const QString & format )
*/
HB_FUNC_STATIC( QDATETIME_FROMSTRING2 )
{
  QDateTime * ptr = new QDateTime( QDateTime::fromString ( PQSTRING(1), PQSTRING(2) ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
}


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
}

/*
QDateTime fromTime_t ( uint seconds )
*/
HB_FUNC_STATIC( QDATETIME_FROMTIME_T )
{
  QDateTime * ptr = new QDateTime( QDateTime::fromTime_t ( PUINT(1) ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
}

$extraMethods

#pragma ENDDUMP
