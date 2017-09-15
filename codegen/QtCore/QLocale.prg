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
$constructor=|new1|

/*
QLocale ( const QString & name )
*/
$constructor=|new2|const QString &

/*
QLocale ( Language language, Country country = AnyCountry )
*/
$constructor=|new3|QLocale::Language,QLocale::Country=QLocale::AnyCountry

/*
QLocale ( Language language, Script script, Country country )
*/
$constructor=|new4|QLocale::Language,QLocale::Script,QLocale::Country

/*
QLocale ( const QLocale & other )
*/
$constructor=|new5|const QLocale &

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
$method=|QLocale::Country|country|

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
$method=|QChar|decimalPoint|

/*
QChar exponential () const
*/
$method=|QChar|exponential|

/*
Qt::DayOfWeek firstDayOfWeek () const
*/
$method=|Qt::DayOfWeek|firstDayOfWeek|

/*
QChar groupSeparator () const
*/
$method=|QChar|groupSeparator|

/*
Language language () const
*/
$method=|QLocale::Language|language|

/*
MeasurementSystem measurementSystem () const
*/
$method=|QLocale::MeasurementSystem|measurementSystem|

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
$method=|QChar|negativeSign|

/*
NumberOptions numberOptions () const
*/
$method=|QLocale::NumberOptions|numberOptions|

/*
QChar percent () const
*/
$method=|QChar|percent|

/*
QString pmText () const
*/
$method=|QString|pmText|

/*
QChar positiveSign () const
*/
$method=|QChar|positiveSign|

/*
QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
*/
$method=|QString|quoteString,quoteString1|const QString &,QLocale::QuotationStyle=QLocale::StandardQuotation

/*
QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const
*/
$method=|QString|quoteString,quoteString2|const QStringRef &,QLocale::QuotationStyle=QLocale::StandardQuotation

//[1]QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
//[2]QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const

HB_FUNC_STATIC( QLOCALE_QUOTESTRING )
{
  HB_FUNC_EXEC( QLOCALE_QUOTESTRING1 );
}

/*
Script script () const
*/
$method=|QLocale::Script|script|

/*
void setNumberOptions ( NumberOptions options )
*/
$method=|void|setNumberOptions|QLocale::NumberOptions

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
$method=|Qt::LayoutDirection|textDirection|

/*
QString timeFormat ( FormatType format = LongFormat ) const
*/
$method=|QString|timeFormat|QLocale::FormatType=QLocale::LongFormat

/*
QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
*/
$method=|QString|toCurrencyString,toCurrencyString1|qlonglong,const QString &=QString()

/*
QString toCurrencyString ( short value, const QString & symbol = QString() ) const
*/
$method=|QString|toCurrencyString,toCurrencyString2|short,const QString &=QString()

/*
QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
*/
$method=|QString|toCurrencyString,toCurrencyString3|ushort,const QString &=QString()

/*
QString toCurrencyString ( int value, const QString & symbol = QString() ) const
*/
$method=|QString|toCurrencyString,toCurrencyString4|int,const QString &=QString()

/*
QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
*/
$method=|QString|toCurrencyString,toCurrencyString5|uint,const QString &=QString()

/*
QString toCurrencyString ( float value, const QString & symbol = QString() ) const
*/
$method=|QString|toCurrencyString,toCurrencyString6|float,const QString &=QString()

/*
QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
*/
$method=|QString|toCurrencyString,toCurrencyString7|qulonglong,const QString &=QString()

/*
QString toCurrencyString ( double value, const QString & symbol = QString() ) const
*/
$method=|QString|toCurrencyString,toCurrencyString8|double,const QString &=QString()

//[1]QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
//[2]QString toCurrencyString ( short value, const QString & symbol = QString() ) const
//[3]QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
//[4]QString toCurrencyString ( int value, const QString & symbol = QString() ) const
//[5]QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
//[6]QString toCurrencyString ( float value, const QString & symbol = QString() ) const
//[7]QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
//[8]QString toCurrencyString ( double value, const QString & symbol = QString() ) const

%% TODO: verificar se é possível identificar o valor passado como parâmetro

HB_FUNC_STATIC( QLOCALE_TOCURRENCYSTRING )
{
}

/*
QDate toDate ( const QString & string, FormatType format = LongFormat ) const
*/
$method=|QDate|toDate,toDate1|const QString &,QLocale::FormatType=QLocale::LongFormat

/*
QDate toDate ( const QString & string, const QString & format ) const
*/
$method=|QDate|toDate,toDate2|const QString &,const QString &

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
$method=|QDateTime|toDateTime,toDateTime1|const QString &,QLocale::FormatType=QLocale::LongFormat

/*
QDateTime toDateTime ( const QString & string, const QString & format ) const
*/
$method=|QDateTime|toDateTime,toDateTime2|const QString &,const QString &

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
$method=|double|toDouble|const QString &,bool *=0

/*
float toFloat ( const QString & s, bool * ok = 0 ) const
*/
$method=|float|toFloat|const QString &,bool *=0

/*
int toInt ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
$method=|int|toInt|const QString &,bool *=0,int=0

/*
qlonglong toLongLong ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
$method=|qlonglong|toLongLong|const QString &,bool *=0,int=0

/*
QString toLower ( const QString & str ) const
*/
$method=|QString|toLower|const QString &

/*
short toShort ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
$method=|short|toShort|const QString &,bool *=0,int=0

/*
QString toString ( qlonglong i ) const
*/
$method=|QString|toString,toString1|qlonglong

/*
QString toString ( const QDate & date, const QString & format ) const
*/
$method=|QString|toString,toString2|const QDate &,const QString &

/*
QString toString ( const QDate & date, FormatType format = LongFormat ) const
*/
$method=|QString|toString,toString3|const QDate &,QLocale::FormatType=QLocale::LongFormat

/*
QString toString ( const QTime & time, const QString & format ) const
*/
$method=|QString|toString,toString4|const QTime &,const QString &

/*
QString toString ( const QTime & time, FormatType format = LongFormat ) const
*/
$method=|QString|toString,toString5|const QTime &,QLocale::FormatType=QLocale::LongFormat

/*
QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
*/
$method=|QString|toString,toString6|const QDateTime &,QLocale::FormatType=QLocale::LongFormat

/*
QString toString ( const QDateTime & dateTime, const QString & format ) const
*/
$method=|QString|toString,toString7|const QDateTime &,const QString &

/*
QString toString ( short i ) const
*/
$method=|QString|toString,toString8|short

/*
QString toString ( ushort i ) const
*/
$method=|QString|toString,toString9|ushort

/*
QString toString ( int i ) const
*/
$method=|QString|toString,toString10|int

/*
QString toString ( uint i ) const
*/
$method=|QString|toString,toString11|uint

/*
QString toString ( float i, char f = 'g', int prec = 6 ) const
*/
$method=|QString|toString,toString12|float,char='g',int=6

/*
QString toString ( qulonglong i ) const
*/
$method=|QString|toString,toString13|qulonglong

/*
QString toString ( double i, char f = 'g', int prec = 6 ) const
*/
$method=|QString|toString,toString14|double,char='g',int=6

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

%% TODO: implementar verificação dos parâmetros

HB_FUNC_STATIC( QLOCALE_TOSTRING )
{
}

/*
QTime toTime ( const QString & string, FormatType format = LongFormat ) const
*/
$method=|QTime|toTime,toTime1|const QString &,QLocale::FormatType=QLocale::LongFormat

/*
QTime toTime ( const QString & string, const QString & format ) const
*/
$method=|QTime|toTime,toTime2|const QString &,const QString &

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
$method=|uint|toUInt|const QString &,bool *=0,int=0

/*
qlonglong toULongLong ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
$method=|qlonglong|toULongLong|const QString &,bool *=0,int=0

/*
ushort toUShort ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
$method=|ushort|toUShort|const QString &,bool *=0,int=0

/*
QString toUpper ( const QString & str ) const
*/
$method=|QString|toUpper|const QString &

/*
QStringList uiLanguages () const
*/
$method=|QStringList|uiLanguages|

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
static QLocale c ()
*/
$staticMethod=|QLocale|c|

/*
static QString countryToString ( Country country )
*/
$staticMethod=|QString|countryToString|QLocale::Country

/*
static QString languageToString ( Language language )
*/
$staticMethod=|QString|languageToString|QLocale::Language

/*
static QList<QLocale> matchingLocales ( QLocale::Language language, QLocale::Script script, QLocale::Country country )
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
static void setDefault ( const QLocale & locale )
*/
$staticMethod=|void|setDefault|const QLocale &

/*
static QLocale system ()
*/
$staticMethod=|QLocale|system|

$extraMethods

#pragma ENDDUMP
