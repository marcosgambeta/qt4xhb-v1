/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QLocale>

#include "hbapi.h"
#include "hbapiitm.h"
#include "hbapierr.h"
#include "hbvm.h"
#include "hbstack.h"
#ifndef __XHARBOUR__
#include "hbapicls.h"
#define ISNIL HB_ISNIL
#define ISLOG HB_ISLOG
#define ISNUM HB_ISNUM
#define ISCHAR HB_ISCHAR
#define ISPOINTER HB_ISPOINTER
#define ISOBJECT HB_ISOBJECT
#define ISARRAY HB_ISARRAY
#endif
#include "qt4xhb_clsid.h"
#include "qt4xhb_utils.h"

#include <QDate>
#include <QStringList>

/*
QLocale ()
*/
HB_FUNC( QLOCALE_NEW1 )
{
  QLocale * o = NULL;
  o = new QLocale (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLocale ( const QString & name )
*/
HB_FUNC( QLOCALE_NEW2 )
{
  QLocale * o = NULL;
  QString par1 = hb_parc(1);
  o = new QLocale ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLocale ( Language language, Country country = AnyCountry )
*/
HB_FUNC( QLOCALE_NEW3 )
{
  QLocale * o = NULL;
  int par1 = hb_parni(1);
  int par2 = ISNIL(2)? (int) QLocale::AnyCountry : hb_parni(2);
  o = new QLocale (  (QLocale::Language) par1,  (QLocale::Country) par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLocale ( Language language, Script script, Country country )
*/
HB_FUNC( QLOCALE_NEW4 )
{
  QLocale * o = NULL;
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  o = new QLocale (  (QLocale::Language) par1,  (QLocale::Script) par2,  (QLocale::Country) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


/*
QLocale ( const QLocale & other )
*/
HB_FUNC( QLOCALE_NEW5 )
{
  QLocale * o = NULL;
  QLocale * par1 = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QLocale ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QLocale *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  hb_itemReturn( self );
}


//[1] QLocale ()
//[2] QLocale ( const QString & name )
//[3] QLocale ( Language language, Country country = AnyCountry )
//[4] QLocale ( Language language, Script script, Country country )
//[5] QLocale ( const QLocale & other )

HB_FUNC( QLOCALE_NEW )
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
HB_FUNC( QLOCALE_AMTEXT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->amText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString bcp47Name () const
*/
HB_FUNC( QLOCALE_BCP47NAME )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->bcp47Name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
Country country () const
*/
HB_FUNC( QLOCALE_COUNTRY )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->country (  );
    hb_retni( i );
  }
}


/*
QString createSeparatedList ( const QStringList & list ) const
*/
HB_FUNC( QLOCALE_CREATESEPARATEDLIST )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
QStringList par1;
PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aStrings1);
for (i1=0;i1<nLen1;i1++)
{
QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
par1 << temp;
}
    QString str1 = obj->createSeparatedList ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString currencySymbol ( CurrencySymbolFormat format = CurrencySymbol ) const
*/
HB_FUNC( QLOCALE_CURRENCYSYMBOL )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QLocale::CurrencySymbol : hb_parni(1);
    QString str1 = obj->currencySymbol (  (QLocale::CurrencySymbolFormat) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString dateFormat ( FormatType format = LongFormat ) const
*/
HB_FUNC( QLOCALE_DATEFORMAT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QLocale::LongFormat : hb_parni(1);
    QString str1 = obj->dateFormat (  (QLocale::FormatType) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString dateTimeFormat ( FormatType format = LongFormat ) const
*/
HB_FUNC( QLOCALE_DATETIMEFORMAT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QLocale::LongFormat : hb_parni(1);
    QString str1 = obj->dateTimeFormat (  (QLocale::FormatType) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString dayName ( int day, FormatType type = LongFormat ) const
*/
HB_FUNC( QLOCALE_DAYNAME )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QString str1 = obj->dayName ( par1,  (QLocale::FormatType) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QChar decimalPoint () const
*/
HB_FUNC( QLOCALE_DECIMALPOINT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->decimalPoint (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );  }
}


/*
QChar exponential () const
*/
HB_FUNC( QLOCALE_EXPONENTIAL )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->exponential (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );  }
}


/*
Qt::DayOfWeek firstDayOfWeek () const
*/
HB_FUNC( QLOCALE_FIRSTDAYOFWEEK )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->firstDayOfWeek (  );
    hb_retni( i );
  }
}


/*
QChar groupSeparator () const
*/
HB_FUNC( QLOCALE_GROUPSEPARATOR )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->groupSeparator (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );  }
}


/*
Language language () const
*/
HB_FUNC( QLOCALE_LANGUAGE )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->language (  );
    hb_retni( i );
  }
}


/*
MeasurementSystem measurementSystem () const
*/
HB_FUNC( QLOCALE_MEASUREMENTSYSTEM )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->measurementSystem (  );
    hb_retni( i );
  }
}


/*
QString monthName ( int month, FormatType type = LongFormat ) const
*/
HB_FUNC( QLOCALE_MONTHNAME )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QString str1 = obj->monthName ( par1,  (QLocale::FormatType) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString name () const
*/
HB_FUNC( QLOCALE_NAME )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->name (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString nativeCountryName () const
*/
HB_FUNC( QLOCALE_NATIVECOUNTRYNAME )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->nativeCountryName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString nativeLanguageName () const
*/
HB_FUNC( QLOCALE_NATIVELANGUAGENAME )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->nativeLanguageName (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QChar negativeSign () const
*/
HB_FUNC( QLOCALE_NEGATIVESIGN )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->negativeSign (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );  }
}


/*
NumberOptions numberOptions () const
*/
HB_FUNC( QLOCALE_NUMBEROPTIONS )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->numberOptions (  );
    hb_retni( i );
  }
}


/*
QChar percent () const
*/
HB_FUNC( QLOCALE_PERCENT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->percent (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );  }
}


/*
QString pmText () const
*/
HB_FUNC( QLOCALE_PMTEXT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString str1 = obj->pmText (  );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QChar positiveSign () const
*/
HB_FUNC( QLOCALE_POSITIVESIGN )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->positiveSign (  ) );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );  }
}


/*
QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
*/
HB_FUNC( QLOCALE_QUOTESTRING1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? (int) QLocale::StandardQuotation : hb_parni(2);
    QString str1 = obj->quoteString ( par1,  (QLocale::QuotationStyle) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const
*/
HB_FUNC( QLOCALE_QUOTESTRING2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringRef * par1 = (QStringRef *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QLocale::StandardQuotation : hb_parni(2);
    QString str1 = obj->quoteString ( *par1,  (QLocale::QuotationStyle) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


//[1]QString quoteString ( const QString & str, QuotationStyle style = StandardQuotation ) const
//[2]QString quoteString ( const QStringRef & str, QuotationStyle style = StandardQuotation ) const

HB_FUNC( QLOCALE_QUOTESTRING )
{
  HB_FUNC_EXEC( QLOCALE_QUOTESTRING1 );
}

/*
Script script () const
*/
HB_FUNC( QLOCALE_SCRIPT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->script (  );
    hb_retni( i );
  }
}


/*
void setNumberOptions ( NumberOptions options )
*/
HB_FUNC( QLOCALE_SETNUMBEROPTIONS )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setNumberOptions (  (QLocale::NumberOptions) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QString standaloneDayName ( int day, FormatType type = LongFormat ) const
*/
HB_FUNC( QLOCALE_STANDALONEDAYNAME )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QString str1 = obj->standaloneDayName ( par1,  (QLocale::FormatType) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString standaloneMonthName ( int month, FormatType type = LongFormat ) const
*/
HB_FUNC( QLOCALE_STANDALONEMONTHNAME )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QString str1 = obj->standaloneMonthName ( par1,  (QLocale::FormatType) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
Qt::LayoutDirection textDirection () const
*/
HB_FUNC( QLOCALE_TEXTDIRECTION )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->textDirection (  );
    hb_retni( i );
  }
}


/*
QString timeFormat ( FormatType format = LongFormat ) const
*/
HB_FUNC( QLOCALE_TIMEFORMAT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) QLocale::LongFormat : hb_parni(1);
    QString str1 = obj->timeFormat (  (QLocale::FormatType) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toCurrencyString ( qlonglong value, const QString & symbol = QString() ) const
*/
HB_FUNC( QLOCALE_TOCURRENCYSTRING1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qlonglong par1 = hb_parnl(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->toCurrencyString ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toCurrencyString ( short value, const QString & symbol = QString() ) const
*/
HB_FUNC( QLOCALE_TOCURRENCYSTRING2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    short par1 = hb_parni(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->toCurrencyString ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toCurrencyString ( ushort value, const QString & symbol = QString() ) const
*/
HB_FUNC( QLOCALE_TOCURRENCYSTRING3 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    ushort par1 = hb_parni(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->toCurrencyString ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toCurrencyString ( int value, const QString & symbol = QString() ) const
*/
HB_FUNC( QLOCALE_TOCURRENCYSTRING4 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->toCurrencyString ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toCurrencyString ( uint value, const QString & symbol = QString() ) const
*/
HB_FUNC( QLOCALE_TOCURRENCYSTRING5 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint par1 = hb_parni(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->toCurrencyString ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toCurrencyString ( float value, const QString & symbol = QString() ) const
*/
HB_FUNC( QLOCALE_TOCURRENCYSTRING6 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    float par1 = hb_parnd(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->toCurrencyString ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toCurrencyString ( qulonglong value, const QString & symbol = QString() ) const
*/
HB_FUNC( QLOCALE_TOCURRENCYSTRING7 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qulonglong par1 = hb_parnl(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->toCurrencyString ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toCurrencyString ( double value, const QString & symbol = QString() ) const
*/
HB_FUNC( QLOCALE_TOCURRENCYSTRING8 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    QString par2 = ISNIL(2)? QString() : hb_parc(2);
    QString str1 = obj->toCurrencyString ( par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
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

HB_FUNC( QLOCALE_TOCURRENCYSTRING )
{
}

/*
QDate toDate ( const QString & string, FormatType format = LongFormat ) const
*/
HB_FUNC( QLOCALE_TODATE1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QDate * ptr = new QDate( obj->toDate ( par1,  (QLocale::FormatType) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );  }
}


/*
QDate toDate ( const QString & string, const QString & format ) const
*/
HB_FUNC( QLOCALE_TODATE2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QDate * ptr = new QDate( obj->toDate ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );  }
}


//[1]QDate toDate ( const QString & string, FormatType format = LongFormat ) const
//[2]QDate toDate ( const QString & string, const QString & format ) const

HB_FUNC( QLOCALE_TODATE )
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
HB_FUNC( QLOCALE_TODATETIME1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QDateTime * ptr = new QDateTime( obj->toDateTime ( par1,  (QLocale::FormatType) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
QDateTime toDateTime ( const QString & string, const QString & format ) const
*/
HB_FUNC( QLOCALE_TODATETIME2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QDateTime * ptr = new QDateTime( obj->toDateTime ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


//[1]QDateTime toDateTime ( const QString & string, FormatType format = LongFormat ) const
//[2]QDateTime toDateTime ( const QString & string, const QString & format ) const

HB_FUNC( QLOCALE_TODATETIME )
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
HB_FUNC( QLOCALE_TODOUBLE )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    double r = obj->toDouble ( par1, &par2 );
    hb_retnd( r );
    hb_storl( par2, 2 );
  }
}


/*
float toFloat ( const QString & s, bool * ok = 0 ) const
*/
HB_FUNC( QLOCALE_TOFLOAT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    float r = obj->toFloat ( par1, &par2 );
    hb_retnd( r );
    hb_storl( par2, 2 );
  }
}


/*
int toInt ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC( QLOCALE_TOINT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    int par3 = ISNIL(3)? 0 : hb_parni(3);
    int i = obj->toInt ( par1, &par2, par3 );
    hb_retni( i );
    hb_storl( par2, 2 );
  }
}


/*
qlonglong toLongLong ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC( QLOCALE_TOLONGLONG )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    int par3 = ISNIL(3)? 0 : hb_parni(3);
    qlonglong l = obj->toLongLong ( par1, &par2, par3 );
    hb_retnl( l );
    hb_storl( par2, 2 );
  }
}


/*
QString toLower ( const QString & str ) const
*/
HB_FUNC( QLOCALE_TOLOWER )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->toLower ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
short toShort ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC( QLOCALE_TOSHORT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    int par3 = ISNIL(3)? 0 : hb_parni(3);
    short i = obj->toShort ( par1, &par2, par3 );
    hb_retni( i );
    hb_storl( par2, 2 );
  }
}


/*
QString toString ( qlonglong i ) const
*/
HB_FUNC( QLOCALE_TOSTRING1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qlonglong par1 = hb_parnl(1);
    QString str1 = obj->toString ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( const QDate & date, const QString & format ) const
*/
HB_FUNC( QLOCALE_TOSTRING2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    QString str1 = obj->toString ( *par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( const QDate & date, FormatType format = LongFormat ) const
*/
HB_FUNC( QLOCALE_TOSTRING3 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QString str1 = obj->toString ( *par1,  (QLocale::FormatType) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( const QTime & time, const QString & format ) const
*/
HB_FUNC( QLOCALE_TOSTRING4 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * par1 = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    QString str1 = obj->toString ( *par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( const QTime & time, FormatType format = LongFormat ) const
*/
HB_FUNC( QLOCALE_TOSTRING5 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * par1 = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QString str1 = obj->toString ( *par1,  (QLocale::FormatType) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( const QDateTime & dateTime, FormatType format = LongFormat ) const
*/
HB_FUNC( QLOCALE_TOSTRING6 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QString str1 = obj->toString ( *par1,  (QLocale::FormatType) par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( const QDateTime & dateTime, const QString & format ) const
*/
HB_FUNC( QLOCALE_TOSTRING7 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    QString par2 = hb_parc(2);
    QString str1 = obj->toString ( *par1, par2 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( short i ) const
*/
HB_FUNC( QLOCALE_TOSTRING8 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    short par1 = hb_parni(1);
    QString str1 = obj->toString ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( ushort i ) const
*/
HB_FUNC( QLOCALE_TOSTRING9 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    ushort par1 = hb_parni(1);
    QString str1 = obj->toString ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( int i ) const
*/
HB_FUNC( QLOCALE_TOSTRING10 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QString str1 = obj->toString ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( uint i ) const
*/
HB_FUNC( QLOCALE_TOSTRING11 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint par1 = hb_parni(1);
    QString str1 = obj->toString ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( float i, char f = 'g', int prec = 6 ) const
*/
HB_FUNC( QLOCALE_TOSTRING12 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    float par1 = hb_parnd(1);
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    int par3 = ISNIL(3)? 6 : hb_parni(3);
    QString str1 = obj->toString ( par1, par2, par3 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( qulonglong i ) const
*/
HB_FUNC( QLOCALE_TOSTRING13 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qulonglong par1 = hb_parnl(1);
    QString str1 = obj->toString ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( double i, char f = 'g', int prec = 6 ) const
*/
HB_FUNC( QLOCALE_TOSTRING14 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    double par1 = hb_parnd(1);
    char par2 = ISNIL(2)? 103 : (ISCHAR(2)? (char) hb_parc(2)[0] : (ISNUM(2)? hb_parni(2) : 0));
    int par3 = ISNIL(3)? 6 : hb_parni(3);
    QString str1 = obj->toString ( par1, par2, par3 );
    hb_retc( (const char *) str1.toLatin1().data() );
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

HB_FUNC( QLOCALE_TOSTRING )
{
}

/*
QTime toTime ( const QString & string, FormatType format = LongFormat ) const
*/
HB_FUNC( QLOCALE_TOTIME1 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    int par2 = ISNIL(2)? (int) QLocale::LongFormat : hb_parni(2);
    QTime * ptr = new QTime( obj->toTime ( par1,  (QLocale::FormatType) par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );  }
}


/*
QTime toTime ( const QString & string, const QString & format ) const
*/
HB_FUNC( QLOCALE_TOTIME2 )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString par2 = hb_parc(2);
    QTime * ptr = new QTime( obj->toTime ( par1, par2 ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );  }
}


//[1]QTime toTime ( const QString & string, FormatType format = LongFormat ) const
//[2]QTime toTime ( const QString & string, const QString & format ) const

HB_FUNC( QLOCALE_TOTIME )
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
HB_FUNC( QLOCALE_TOUINT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    int par3 = ISNIL(3)? 0 : hb_parni(3);
    uint i = obj->toUInt ( par1, &par2, par3 );
    hb_retni( i );
    hb_storl( par2, 2 );
  }
}


/*
qlonglong toULongLong ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC( QLOCALE_TOULONGLONG )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    int par3 = ISNIL(3)? 0 : hb_parni(3);
    qlonglong l = obj->toULongLong ( par1, &par2, par3 );
    hb_retnl( l );
    hb_storl( par2, 2 );
  }
}


/*
ushort toUShort ( const QString & s, bool * ok = 0, int base = 0 ) const
*/
HB_FUNC( QLOCALE_TOUSHORT )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    bool par2;
    int par3 = ISNIL(3)? 0 : hb_parni(3);
    ushort i = obj->toUShort ( par1, &par2, par3 );
    hb_retni( i );
    hb_storl( par2, 2 );
  }
}


/*
QString toUpper ( const QString & str ) const
*/
HB_FUNC( QLOCALE_TOUPPER )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->toUpper ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QStringList uiLanguages () const
*/
HB_FUNC( QLOCALE_UILANGUAGES )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QStringList strl = obj->uiLanguages (  );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<strl.count();i++)
    {
      PHB_ITEM pItem = hb_itemPutC( NULL, (const char *) strl[i].toLatin1().data() );
      hb_arrayAddForward( pArray, pItem );
      hb_itemRelease(pItem);
    }
    hb_itemReturnRelease(pArray);
  }
}


/*
QList<Qt::DayOfWeek> weekdays () const
*/
HB_FUNC( QLOCALE_WEEKDAYS )
{
  QLocale * obj = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<Qt::DayOfWeek> list = obj->weekdays (  );
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
HB_FUNC( QLOCALE_C )
{
  QLocale * ptr = new QLocale( QLocale::c (  ) );
  _qt4xhb_createReturnClass ( ptr, "QLOCALE" );}


/*
QString countryToString ( Country country )
*/
HB_FUNC( QLOCALE_COUNTRYTOSTRING )
{
  int par1 = hb_parni(1);
  QString str1 = QLocale::countryToString (  (QLocale::Country) par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QString languageToString ( Language language )
*/
HB_FUNC( QLOCALE_LANGUAGETOSTRING )
{
  int par1 = hb_parni(1);
  QString str1 = QLocale::languageToString (  (QLocale::Language) par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
QList<QLocale> matchingLocales ( QLocale::Language language, QLocale::Script script, QLocale::Country country )
*/
HB_FUNC( QLOCALE_MATCHINGLOCALES )
{
  int par1 = hb_parni(1);
  int par2 = hb_parni(2);
  int par3 = hb_parni(3);
  QList<QLocale> list = QLocale::matchingLocales (  (QLocale::Language) par1,  (QLocale::Script) par2,  (QLocale::Country) par3 );
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
QString scriptToString ( Script script )
*/
HB_FUNC( QLOCALE_SCRIPTTOSTRING )
{
  int par1 = hb_parni(1);
  QString str1 = QLocale::scriptToString (  (QLocale::Script) par1 );
  hb_retc( (const char *) str1.toLatin1().data() );
}


/*
void setDefault ( const QLocale & locale )
*/
HB_FUNC( QLOCALE_SETDEFAULT )
{
  QLocale * par1 = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QLocale::setDefault ( *par1 );
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QLocale system ()
*/
HB_FUNC( QLOCALE_SYSTEM )
{
  QLocale * ptr = new QLocale( QLocale::system (  ) );
  _qt4xhb_createReturnClass ( ptr, "QLOCALE" );}



