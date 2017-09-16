$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QDATE
#endif

CLASS QDate

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD addDays
   METHOD addMonths
   METHOD addYears
   METHOD day
   METHOD dayOfWeek
   METHOD dayOfYear
   METHOD daysInMonth
   METHOD daysInYear
   METHOD daysTo
   METHOD getDate
   METHOD isNull
   METHOD isValid1
   METHOD month
   METHOD setDate
   METHOD toJulianDay
   METHOD toString1
   METHOD toString2
   METHOD toString
   METHOD weekNumber
   METHOD year
   METHOD currentDate
   METHOD fromJulianDay
   METHOD fromString1
   METHOD fromString2
   METHOD fromString
   METHOD isLeapYear
   METHOD isValid2
   METHOD isValid
   METHOD longDayName1
   METHOD longDayName2
   METHOD longDayName
   METHOD longMonthName1
   METHOD longMonthName2
   METHOD longMonthName
   METHOD shortDayName1
   METHOD shortDayName2
   METHOD shortDayName
   METHOD shortMonthName1
   METHOD shortMonthName2
   METHOD shortMonthName

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QDate>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QDate ()
*/
$constructor=|new1|

/*
QDate ( int y, int m, int d )
*/
$constructor=|new2|int,int,int

//[1]QDate ()
//[2]QDate ( int y, int m, int d )

HB_FUNC_STATIC( QDATE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATE_NEW1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDATE_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
QDate addDays ( int ndays ) const
*/
$method=|QDate|addDays|int

/*
QDate addMonths ( int nmonths ) const
*/
$method=|QDate|addMonths|int

/*
QDate addYears ( int nyears ) const
*/
$method=|QDate|addYears|int

/*
int day () const
*/
$method=|int|day|

/*
int dayOfWeek () const
*/
$method=|int|dayOfWeek|

/*
int dayOfYear () const
*/
$method=|int|dayOfYear|

/*
int daysInMonth () const
*/
$method=|int|daysInMonth|

/*
int daysInYear () const
*/
$method=|int|daysInYear|

/*
int daysTo ( const QDate & d ) const
*/
$method=|int|daysTo|const QDate &

/*
void getDate ( int * year, int * month, int * day )
*/
$method=|void|getDate|int *,int *,int *

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isValid () const
*/
$method=|bool|isValid,isValid1|

/*
int month () const
*/
$method=|int|month|

/*
bool setDate ( int year, int month, int day )
*/
$method=|bool|setDate|int,int,int

/*
int toJulianDay () const
*/
$method=|int|toJulianDay|

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

HB_FUNC_STATIC( QDATE_TOSTRING )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QDATE_TOSTRING1 );
  }
  else if( ISBETWEEN(0,1) && (ISNUM(1)||ISNIL(1)) )
  {
    HB_FUNC_EXEC( QDATE_TOSTRING2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
int weekNumber ( int * yearNumber = 0 ) const
*/
$method=|int|weekNumber|int *=0

/*
int year () const
*/
$method=|int|year|

/*
static QDate currentDate ()
*/
$staticMethod=|QDate|currentDate|

/*
static QDate fromJulianDay ( int jd )
*/
$staticMethod=|QDate|fromJulianDay|int

/*
static QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
$staticMethod=|QDate|fromString,fromString1|const QString &,Qt::DateFormat=Qt::TextDate

/*
static QDate fromString ( const QString & string, const QString & format )
*/
$staticMethod=|QDate|fromString,fromString2|const QString &,const QString &

//[1]QDate fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
//[2]QDate fromString ( const QString & string, const QString & format )

HB_FUNC_STATIC( QDATE_FROMSTRING )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QDATE_FROMSTRING1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QDATE_FROMSTRING2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static bool isLeapYear ( int year )
*/
$staticMethod=|bool|isLeapYear|int

/*
static bool isValid ( int year, int month, int day )
*/
$staticMethod=|bool|isValid,isValid2|int,int,int

//[1]bool isValid () const
//[2]bool isValid ( int year, int month, int day )

HB_FUNC_STATIC( QDATE_ISVALID )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QDATE_ISVALID1 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QDATE_ISVALID2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString longDayName ( int weekday )
*/
$staticMethod=|QString|longDayName,longDayName1|int

/*
static QString longDayName ( int weekday, MonthNameType type )
*/
$staticMethod=|QString|longDayName,longDayName2|int,QDate::MonthNameType

//[1]QString longDayName ( int weekday )
//[2]QString longDayName ( int weekday, MonthNameType type )

HB_FUNC_STATIC( QDATE_LONGDAYNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_LONGDAYNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_LONGDAYNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString longMonthName ( int month )
*/
$staticMethod=|QString|longMonthName,longMonthName1|int

/*
static QString longMonthName ( int month, MonthNameType type )
*/
$staticMethod=|QString|longMonthName,longMonthName2|int,QDate::MonthNameType

//[1]QString longMonthName ( int month )
//[2]QString longMonthName ( int month, MonthNameType type )

HB_FUNC_STATIC( QDATE_LONGMONTHNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_LONGMONTHNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_LONGMONTHNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString shortDayName ( int weekday )
*/
$staticMethod=|QString|shortDayName,shortDayName1|int

/*
static QString shortDayName ( int weekday, MonthNameType type )
*/
$staticMethod=|QString|shortDayName,shortDayName2|int,QDate::MonthNameType

//[1]QString shortDayName ( int weekday )
//[2]QString shortDayName ( int weekday, MonthNameType type )

HB_FUNC_STATIC( QDATE_SHORTDAYNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_SHORTDAYNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_SHORTDAYNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
static QString shortMonthName ( int month )
*/
$staticMethod=|QString|shortMonthName,shortMonthName1|int

/*
static QString shortMonthName ( int month, MonthNameType type )
*/
$staticMethod=|QString|shortMonthName,shortMonthName2|int,QDate::MonthNameType

//[1]QString shortMonthName ( int month )
//[2]QString shortMonthName ( int month, MonthNameType type )

HB_FUNC_STATIC( QDATE_SHORTMONTHNAME )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QDATE_SHORTMONTHNAME1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QDATE_SHORTMONTHNAME2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$extraMethods

#pragma ENDDUMP
