$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QCHAR
REQUEST QDATE
REQUEST QDATETIME
REQUEST QTIME
REQUEST QLOCALE
#endif

CLASS QLocale

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new
   METHOD amText
   METHOD bcp47Name
   METHOD country
   METHOD createSeparatedList
   METHOD currencySymbol
   METHOD dateFormat
   METHOD dateTimeFormat
   METHOD dayName
   METHOD decimalPoint
   METHOD exponential
   METHOD firstDayOfWeek
   METHOD groupSeparator
   METHOD language
   METHOD measurementSystem
   METHOD monthName
   METHOD name
   METHOD nativeCountryName
   METHOD nativeLanguageName
   METHOD negativeSign
   METHOD numberOptions
   METHOD percent
   METHOD pmText
   METHOD positiveSign
   METHOD quoteString1
   METHOD quoteString2
   METHOD quoteString
   METHOD script
   METHOD setNumberOptions
   METHOD standaloneDayName
   METHOD standaloneMonthName
   METHOD textDirection
   METHOD timeFormat
   METHOD toCurrencyString1
   METHOD toCurrencyString2
   METHOD toCurrencyString3
   METHOD toCurrencyString4
   METHOD toCurrencyString5
   METHOD toCurrencyString6
   METHOD toCurrencyString7
   METHOD toCurrencyString8
   METHOD toCurrencyString
   METHOD toDate1
   METHOD toDate2
   METHOD toDate
   METHOD toDateTime1
   METHOD toDateTime2
   METHOD toDateTime
   METHOD toDouble
   METHOD toFloat
   METHOD toInt
   METHOD toLongLong
   METHOD toLower
   METHOD toShort
   METHOD toString1
   METHOD toString2
   METHOD toString3
   METHOD toString4
   METHOD toString5
   METHOD toString6
   METHOD toString7
   METHOD toString8
   METHOD toString9
   METHOD toString10
   METHOD toString11
   METHOD toString12
   METHOD toString13
   METHOD toString14
   METHOD toString
   METHOD toTime1
   METHOD toTime2
   METHOD toTime
   METHOD toUInt
   METHOD toULongLong
   METHOD toUShort
   METHOD toUpper
   METHOD uiLanguages
   METHOD weekdays
   METHOD c
   METHOD countryToString
   METHOD languageToString
   METHOD matchingLocales
   METHOD scriptToString
   METHOD setDefault
   METHOD system

   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QLocale>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QDate>
#include <QStringList>

/*
QLocale ()
*/
HB_FUNC_STATIC( QLOCALE_NEW1 )
{
  QLocale * o = new QLocale ();
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QLocale ( const QString & name )
*/
HB_FUNC_STATIC( QLOCALE_NEW2 )
{
  QLocale * o = new QLocale ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QLocale ( Language language, Country country = AnyCountry )
*/
HB_FUNC_STATIC( QLOCALE_NEW3 )
{
  QLocale * o = new QLocale ( (QLocale::Language) hb_parni(1), ISNIL(2)? QLocale::AnyCountry : (QLocale::Country) hb_parni(2) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QLocale ( Language language, Script script, Country country )
*/
HB_FUNC_STATIC( QLOCALE_NEW4 )
{
  QLocale * o = new QLocale ( (QLocale::Language) hb_parni(1), (QLocale::Script) hb_parni(2), (QLocale::Country) hb_parni(3) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


/*
QLocale ( const QLocale & other )
*/
HB_FUNC_STATIC( QLOCALE_NEW5 )
{
  QLocale * o = new QLocale ( *PQLOCALE(1) );
  _qt4xhb_storePointerAndFlag ( o, false );
}


//[1] QLocale ()
//[2] QLocale ( const QString & name )
//[3] QLocale ( Language language, Country country = AnyCountry )
//[4] QLocale ( Language language, Script script, Country country )
//[5] QLocale ( const QLocale & other )

HB_FUNC_STATIC( QLOCALE_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW3 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW3 );
  }
  else if( ISNUMPAR(3) && ISNUM(1) && ISNUM(2) && ISNUM(3) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQLOCALE(1) )
  {
    HB_FUNC_EXEC( QLOCALE_NEW5 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
QString amText () const
*/
$method=|QString|amText|

/*
QString bcp47Name () const
*/
$method=|QString|bcp47Name|

/*
Country country () const
*/
HB_FUNC_STATIC( QLOCALE_COUNTRY )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->country () );
  }
}

/*
QString createSeparatedList ( const QStringList & list ) const
*/
$method=|QString|createSeparatedList|const QStringList &

/*
QString currencySymbol ( CurrencySymbolFormat format = CurrencySymbol ) const
*/
$method=|QString|currencySymbol|QLocale::CurrencySymbolFormat=QLocale::CurrencySymbol

/*
QString dateFormat ( FormatType format = LongFormat ) const
*/
$method=|QString|dateFormat|QLocale::FormatType=QLocale::LongFormat

/*
QString dateTimeFormat ( FormatType format = LongFormat ) const
*/
$method=|QString|dateTimeFormat|QLocale::FormatType=QLocale::LongFormat

/*
QString dayName ( int day, FormatType type = LongFormat ) const
*/
$method=|QString|dayName|int,QLocale::FormatType=QLocale::LongFormat

/*
QChar decimalPoint () const
*/
HB_FUNC_STATIC( QLOCALE_DECIMALPOINT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->decimalPoint () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
QChar exponential () const
*/
HB_FUNC_STATIC( QLOCALE_EXPONENTIAL )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->exponential () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
Qt::DayOfWeek firstDayOfWeek () const
*/
HB_FUNC_STATIC( QLOCALE_FIRSTDAYOFWEEK )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->firstDayOfWeek () );
  }
}


/*
QChar groupSeparator () const
*/
HB_FUNC_STATIC( QLOCALE_GROUPSEPARATOR )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->groupSeparator () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
Language language () const
*/
HB_FUNC_STATIC( QLOCALE_LANGUAGE )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->language () );
  }
}


/*
MeasurementSystem measurementSystem () const
*/
HB_FUNC_STATIC( QLOCALE_MEASUREMENTSYSTEM )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->measurementSystem () );
  }
}

/*
QString monthName ( int month, FormatType type = LongFormat ) const
*/
$method=|QString|monthName|int,QLocale::FormatType=QLocale::LongFormat

/*
QString name () const
*/
$method=|QString|name|

/*
QString nativeCountryName () const
*/
$method=|QString|nativeCountryName|

/*
QString nativeLanguageName () const
*/
$method=|QString|nativeLanguageName|

/*
QChar negativeSign () const
*/
HB_FUNC_STATIC( QLOCALE_NEGATIVESIGN )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->negativeSign () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}


/*
NumberOptions numberOptions () const
*/
HB_FUNC_STATIC( QLOCALE_NUMBEROPTIONS )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->numberOptions () );
  }
}


/*
QChar percent () const
*/
HB_FUNC_STATIC( QLOCALE_PERCENT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->percent () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}

/*
QString pmText () const
*/
$method=|QString|pmText|

/*
QChar positiveSign () const
*/
HB_FUNC_STATIC( QLOCALE_POSITIVESIGN )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->positiveSign () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}

/*
QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
*/
$method=|QString|quoteString,quoteString1|const QString &,QLocale::QuotationStyle=QLocale::StandardQuotation

/*
QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const
*/
HB_FUNC_STATIC( QLOCALE_QUOTESTRING2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * par1 = (QStringRef *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    RQSTRING( obj->quoteString ( *par1, ISNIL(2)? QLocale::StandardQuotation : (QLocale::QuotationStyle) hb_parni(2) ) );
  }
}


//[1]QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
//[2]QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const

HB_FUNC_STATIC( QLOCALE_QUOTESTRING )
{
  HB_FUNC_EXEC( QLOCALE_QUOTESTRING1 );
}

/*
Script script () const
*/
HB_FUNC_STATIC( QLOCALE_SCRIPT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->script () );
  }
}


/*
void setNumberOptions ( NumberOptions options )
*/
HB_FUNC_STATIC( QLOCALE_SETNUMBEROPTIONS )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->setNumberOptions ( (QLocale::NumberOptions) hb_parni(1) );
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
QString standaloneDayName ( int day, FormatType type = LongFormat ) const
*/
$method=|QString|standaloneDayName|int,QLocale::FormatType=QLocale::LongFormat

/*
QString standaloneMonthName ( int month, FormatType type = LongFormat ) const
*/
$method=|QString|standaloneMonthName|int,QLocale::FormatType=QLocale::LongFormat

/*
Qt::LayoutDirection textDirection () const
*/
HB_FUNC_STATIC( QLOCALE_TEXTDIRECTION )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->textDirection () );
  }
}

/*
QString timeFormat ( FormatType format = LongFormat ) const
*/
$method=|QString|timeFormat|QLocale::FormatType=QLocale::LongFormat

/*
QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toCurrencyString ( PQLONGLONG(1), OPQSTRING(2,QString()) ) );
  }
}


/*
QString toCurrencyString ( short value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toCurrencyString ( PSHORT(1), OPQSTRING(2,QString()) ) );
  }
}


/*
QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING3 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toCurrencyString ( PUSHORT(1), OPQSTRING(2,QString()) ) );
  }
}


/*
QString toCurrencyString ( int value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING4 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toCurrencyString ( PINT(1), OPQSTRING(2,QString()) ) );
  }
}


/*
QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING5 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toCurrencyString ( PUINT(1), OPQSTRING(2,QString()) ) );
  }
}


/*
QString toCurrencyString ( float value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING6 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toCurrencyString ( PFLOAT(1), OPQSTRING(2,QString()) ) );
  }
}


/*
QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING7 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toCurrencyString ( PQULONGLONG(1), OPQSTRING(2,QString()) ) );
  }
}


/*
QString toCurrencyString ( double value, const QString & symbol = QString() ) const
*/
HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING8 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toCurrencyString ( PDOUBLE(1), OPQSTRING(2,QString()) ) );
  }
}


//[1]QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
//[2]QString toCurrencyString ( short value, const QString & symbol = QString() ) const
//[3]QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
//[4]QString toCurrencyString ( int value, const QString & symbol = QString() ) const
//[5]QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
//[6]QString toCurrencyString ( float value, const QString & symbol = QString() ) const
//[7]QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
//[8]QString toCurrencyString ( double value, const QString & symbol = QString() ) const

// TODO: verificar se é possível identificar o valor passado como parâmetro

HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING )
{
}

/*
QDate toDate ( const QString & string, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TODATE1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->toDate ( PQSTRING(1), ISNIL(2)? QLocale::LongFormat : (QLocale::FormatType) hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


/*
QDate toDate ( const QString & string, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TODATE2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->toDate ( PQSTRING(1), PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}


//[1]QDate toDate ( const QString & string, FormatType format = LongFormat ) const
//[2]QDate toDate ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TODATE )
{
  if( ISBETWEEN(1,2) && ISCHAR(1) && (ISNUM(2)||ISNIL(2)) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATE1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATE2 );
  }
}

/*
QDateTime toDateTime ( const QString & string, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TODATETIME1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime ( PQSTRING(1), ISNIL(2)? QLocale::LongFormat : (QLocale::FormatType) hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


/*
QDateTime toDateTime ( const QString & string, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TODATETIME2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime ( PQSTRING(1), PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}


//[1]QDateTime toDateTime ( const QString & string, FormatType format = LongFormat ) const
//[2]QDateTime toDateTime ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TODATETIME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATETIME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATETIME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TODATETIME2 );
  }
}

/*
double toDouble ( const QString & s, bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TODOUBLE )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RDOUBLE( obj->toDouble ( PQSTRING(1), &par2 ) );
    hb_storl( par2, 2 );
  }
}


/*
float toFloat ( const QString & s, bool * ok = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOFLOAT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RFLOAT( obj->toFloat ( PQSTRING(1), &par2 ) );
    hb_storl( par2, 2 );
  }
}


/*
int toInt ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOINT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RINT( obj->toInt ( PQSTRING(1), &par2, OPINT(3,0) ) );
    hb_storl( par2, 2 );
  }
}


/*
qlonglong toLongLong ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOLONGLONG )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RQLONGLONG( obj->toLongLong ( PQSTRING(1), &par2, OPINT(3,0) ) );
    hb_storl( par2, 2 );
  }
}

/*
QString toLower ( const QString & str ) const
*/
$method=|QString|toLower|const QString &

/*
short toShort ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSHORT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RSHORT( obj->toShort ( PQSTRING(1), &par2, OPINT(3,0) ) );
    hb_storl( par2, 2 );
  }
}

/*
QString toString ( qlonglong i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( PQLONGLONG(1) ) );
  }
}


/*
QString toString ( const QDate & date, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( *PQDATE(1), PQSTRING(2) ) );
  }
}


/*
QString toString ( const QDate & date, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING3 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( *PQDATE(1), ISNIL(2)? QLocale::LongFormat : (QLocale::FormatType) hb_parni(2) ) );
  }
}


/*
QString toString ( const QTime & time, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING4 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( *PQTIME(1), PQSTRING(2) ) );
  }
}


/*
QString toString ( const QTime & time, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING5 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( *PQTIME(1), ISNIL(2)? QLocale::LongFormat : (QLocale::FormatType) hb_parni(2) ) );
  }
}


/*
QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING6 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( *PQDATETIME(1), ISNIL(2)? QLocale::LongFormat : (QLocale::FormatType) hb_parni(2) ) );
  }
}


/*
QString toString ( const QDateTime & dateTime, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING7 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( *PQDATETIME(1), PQSTRING(2) ) );
  }
}


/*
QString toString ( short i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING8 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( PSHORT(1) ) );
  }
}


/*
QString toString ( ushort i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING9 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( PUSHORT(1) ) );
  }
}


/*
QString toString ( int i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING10 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( PINT(1) ) );
  }
}


/*
QString toString ( uint i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING11 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( PUINT(1) ) );
  }
}


/*
QString toString ( float i, char f = 'g', int prec = 6 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING12 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    RQSTRING( obj->toString ( PFLOAT(1), par2, OPINT(3,6) ) );
  }
}


/*
QString toString ( qulonglong i ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING13 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRING( obj->toString ( PQULONGLONG(1) ) );
  }
}


/*
QString toString ( double i, char f = 'g', int prec = 6 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOSTRING14 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    RQSTRING( obj->toString ( PDOUBLE(1), par2, OPINT(3,6) ) );
  }
}


//[01]QString toString ( qlonglong i ) const
//[02]QString toString ( const QDate & date, const QString & format ) const
//[03]QString toString ( const QDate & date, FormatType format = LongFormat ) const
//[04]QString toString ( const QTime & time, const QString & format ) const
//[05]QString toString ( const QTime & time, FormatType format = LongFormat ) const
//[06]QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
//[07]QString toString ( const QDateTime & dateTime, const QString & format ) const
//[08]QString toString ( short i ) const
//[09]QString toString ( ushort i ) const
//[10]QString toString ( int i ) const
//[11]QString toString ( uint i ) const
//[12]QString toString ( float i, char f = 'g', int prec = 6 ) const
//[13]QString toString ( qulonglong i ) const
//[14]QString toString ( double i, char f = 'g', int prec = 6 ) const

// TODO: implementar verificação dos parâmetros

HB_FUNC_STATIC( QLOCALE_TOSTRING )
{
}

/*
QTime toTime ( const QString & string, FormatType format = LongFormat ) const
*/
HB_FUNC_STATIC( QLOCALE_TOTIME1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * ptr = new QTime( obj->toTime ( PQSTRING(1), ISNIL(2)? QLocale::LongFormat : (QLocale::FormatType) hb_parni(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


/*
QTime toTime ( const QString & string, const QString & format ) const
*/
HB_FUNC_STATIC( QLOCALE_TOTIME2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * ptr = new QTime( obj->toTime ( PQSTRING(1), PQSTRING(2) ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}


//[1]QTime toTime ( const QString & string, FormatType format = LongFormat ) const
//[2]QTime toTime ( const QString & string, const QString & format ) const

HB_FUNC_STATIC( QLOCALE_TOTIME )
{
  if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QLOCALE_TOTIME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISNUM(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOTIME1 );
  }
  else if( ISNUMPAR(2) && ISCHAR(1) && ISCHAR(2) )
  {
    HB_FUNC_EXEC( QLOCALE_TOTIME2 );
  }
}

/*
uint toUInt ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOUINT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    hb_retni( (uint) obj->toUInt ( PQSTRING(1), &par2, OPINT(3,0) ) );
    hb_storl( par2, 2 );
  }
}


/*
qlonglong toULongLong ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOULONGLONG )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RQLONGLONG( obj->toULongLong ( PQSTRING(1), &par2, OPINT(3,0) ) );
    hb_storl( par2, 2 );
  }
}


/*
ushort toUShort ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC_STATIC( QLOCALE_TOUSHORT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool par2;
    RUSHORT( obj->toUShort ( PQSTRING(1), &par2, OPINT(3,0) ) );
    hb_storl( par2, 2 );
  }
}

/*
QString toUpper ( const QString & str ) const
*/
$method=|QString|toUpper|const QString &

/*
QStringList uiLanguages () const
*/
HB_FUNC_STATIC( QLOCALE_UILANGUAGES )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->uiLanguages () );
  }
}


/*
QList<Qt::DayOfWeek> weekdays () const
*/
HB_FUNC_STATIC( QLOCALE_WEEKDAYS )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<Qt::DayOfWeek> list = obj->weekdays ();
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutNI( NULL, (int) list[i] );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}




/*
QLocale c ()
*/
HB_FUNC_STATIC( QLOCALE_C )
{
  QLocale * ptr = new QLocale( QLocale::c () );
  _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
}


/*
static QString countryToString ( Country country )
*/
$staticMethod=|QString|countryToString|QLocale::Country

/*
static QString languageToString ( Language language )
*/
$staticMethod=|QString|languageToString|QLocale::Language

/*
QList<QLocale> matchingLocales ( QLocale::Language language, QLocale::Script script, QLocale::Country country )
*/
HB_FUNC_STATIC( QLOCALE_MATCHINGLOCALES )
{
  QList<QLocale> list = QLocale::matchingLocales ( (QLocale::Language) hb_parni(1), (QLocale::Script) hb_parni(2), (QLocale::Country) hb_parni(3) );
  PHB_DYNS pDynSym;
  #ifdef __XHARBOUR__
  pDynSym = hb_dynsymFind( "QLOCALE" );
  #else
  pDynSym = hb_dynsymFindName( "QLOCALE" );
  #endif
  PHB_ITEM pArray;
  pArray = hb_itemArrayNew(0);
  int i;
  for(i=0;i<list.count();i++)
  {
    if( pDynSym )
    {
      #ifdef __XHARBOUR__
      hb_vmPushSymbol( pDynSym->pSymbol );
      #else
      hb_vmPushDynSym( pDynSym );
      #endif
      hb_vmPushNil();
      hb_vmDo( 0 );
      PHB_ITEM pObject = hb_itemNew( NULL );
      hb_itemCopy( pObject, hb_stackReturnItem() );
      PHB_ITEM pItem = hb_itemNew( NULL );
      hb_itemPutPtr( pItem, (QLocale *) new QLocale ( list[i] ) );
      hb_objSendMsg( pObject, "_POINTER", 1, pItem );
      hb_itemRelease( pItem );
      hb_arrayAddForward( pArray, pObject );
      hb_itemRelease( pObject );
    }
  }
  hb_itemReturnRelease(pArray);
}

/*
static QString scriptToString ( Script script )
*/
$staticMethod=|QString|scriptToString|QLocale::Script

/*
void setDefault ( const QLocale & locale )
*/
HB_FUNC_STATIC( QLOCALE_SETDEFAULT )
{
  QLocale::setDefault ( *PQLOCALE(1) );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QLocale system ()
*/
HB_FUNC_STATIC( QLOCALE_SYSTEM )
{
  QLocale * ptr = new QLocale( QLocale::system () );
  _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
}

$extraMethods

#pragma ENDDUMP
