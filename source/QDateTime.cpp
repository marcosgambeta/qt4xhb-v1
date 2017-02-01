/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include <QDateTime>

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

/*
QDateTime ()
*/
HB_FUNC( QDATETIME_NEW1 )
{
  QDateTime * o = NULL;
  o = new QDateTime (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateTime *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDateTime ( const QDate & date )
*/
HB_FUNC( QDATETIME_NEW2 )
{
  QDateTime * o = NULL;
  QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDateTime ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateTime *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
*/
HB_FUNC( QDATETIME_NEW3 )
{
  QDateTime * o = NULL;
  QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QTime * par2 = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(2, HB_IT_OBJECT ), "POINTER", 0 ) );
  int par3 = ISNIL(3)? (int) Qt::LocalTime : hb_parni(3);
  o = new QDateTime ( *par1, *par2,  (Qt::TimeSpec) par3 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateTime *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QDateTime ( const QDateTime & other )
*/
HB_FUNC( QDATETIME_NEW4 )
{
  QDateTime * o = NULL;
  QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QDateTime ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QDateTime *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


//[1]QDateTime ()
//[2]QDateTime ( const QDate & date )
//[3]QDateTime ( const QDate & date, const QTime & time, Qt::TimeSpec spec = Qt::LocalTime )
//[4]QDateTime ( const QDateTime & other )

HB_FUNC( QDATETIME_NEW )
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

HB_FUNC( QDATETIME_DELETE )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    delete obj;
    obj = NULL;
    PHB_ITEM self = hb_stackSelfItem();
    PHB_ITEM ptr = hb_itemPutPtr( NULL, NULL );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
  }
  hb_itemReturn( hb_stackSelfItem() );
}



/*
QDateTime addDays ( int ndays ) const
*/
HB_FUNC( QDATETIME_ADDDAYS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDateTime * ptr = new QDateTime( obj->addDays ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
QDateTime addMSecs ( qint64 msecs ) const
*/
HB_FUNC( QDATETIME_ADDMSECS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    QDateTime * ptr = new QDateTime( obj->addMSecs ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
QDateTime addMonths ( int nmonths ) const
*/
HB_FUNC( QDATETIME_ADDMONTHS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDateTime * ptr = new QDateTime( obj->addMonths ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
QDateTime addSecs ( int s ) const
*/
HB_FUNC( QDATETIME_ADDSECS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDateTime * ptr = new QDateTime( obj->addSecs ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
QDateTime addYears ( int nyears ) const
*/
HB_FUNC( QDATETIME_ADDYEARS )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDateTime * ptr = new QDateTime( obj->addYears ( par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
QDate date () const
*/
HB_FUNC( QDATETIME_DATE )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->date (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );  }
}


/*
int daysTo ( const QDateTime & other ) const
*/
HB_FUNC( QDATETIME_DAYSTO )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->daysTo ( *par1 );
    hb_retni( i );
  }
}


/*
bool isNull () const
*/
HB_FUNC( QDATETIME_ISNULL )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isNull (  );
    hb_retl( b );
  }
}


/*
bool isValid () const
*/
HB_FUNC( QDATETIME_ISVALID )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    bool b = obj->isValid (  );
    hb_retl( b );
  }
}


/*
qint64 msecsTo ( const QDateTime & other ) const
*/
HB_FUNC( QDATETIME_MSECSTO )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    qint64 i = obj->msecsTo ( *par1 );
    hb_retni( i );
  }
}


/*
int secsTo ( const QDateTime & other ) const
*/
HB_FUNC( QDATETIME_SECSTO )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    int i = obj->secsTo ( *par1 );
    hb_retni( i );
  }
}


/*
void setDate ( const QDate & date )
*/
HB_FUNC( QDATETIME_SETDATE )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setDate ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setMSecsSinceEpoch ( qint64 msecs )
*/
HB_FUNC( QDATETIME_SETMSECSSINCEEPOCH )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 par1 = hb_parni(1);
    obj->setMSecsSinceEpoch ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTime ( const QTime & time )
*/
HB_FUNC( QDATETIME_SETTIME )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * par1 = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
    obj->setTime ( *par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTimeSpec ( Qt::TimeSpec spec )
*/
HB_FUNC( QDATETIME_SETTIMESPEC )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    obj->setTimeSpec (  (Qt::TimeSpec) par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
void setTime_t ( uint seconds )
*/
HB_FUNC( QDATETIME_SETTIME_T )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint par1 = hb_parni(1);
    obj->setTime_t ( par1 );
  }
  hb_itemReturn( hb_stackSelfItem() );
}


/*
QTime time () const
*/
HB_FUNC( QDATETIME_TIME )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * ptr = new QTime( obj->time (  ) );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );  }
}


/*
Qt::TimeSpec timeSpec () const
*/
HB_FUNC( QDATETIME_TIMESPEC )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int i = obj->timeSpec (  );
    hb_retni( i );
  }
}


/*
QDateTime toLocalTime () const
*/
HB_FUNC( QDATETIME_TOLOCALTIME )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toLocalTime (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
qint64 toMSecsSinceEpoch () const
*/
HB_FUNC( QDATETIME_TOMSECSSINCEEPOCH )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    qint64 i = obj->toMSecsSinceEpoch (  );
    hb_retni( i );
  }
}


/*
QString toString ( const QString & format ) const
*/
HB_FUNC( QDATETIME_TOSTRING1 )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QString par1 = hb_parc(1);
    QString str1 = obj->toString ( par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


/*
QString toString ( Qt::DateFormat format = Qt::TextDate ) const
*/
HB_FUNC( QDATETIME_TOSTRING2 )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = ISNIL(1)? (int) Qt::TextDate : hb_parni(1);
    QString str1 = obj->toString (  (Qt::DateFormat) par1 );
    hb_retc( (const char *) str1.toLatin1().data() );
  }
}


//[1]QString toString ( const QString & format ) const
//[2]QString toString ( Qt::DateFormat format = Qt::TextDate ) const

HB_FUNC( QDATETIME_TOSTRING )
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
HB_FUNC( QDATETIME_TOTIMESPEC )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    int par1 = hb_parni(1);
    QDateTime * ptr = new QDateTime( obj->toTimeSpec (  (Qt::TimeSpec) par1 ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}


/*
uint toTime_t () const
*/
HB_FUNC( QDATETIME_TOTIME_T )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    uint i = obj->toTime_t (  );
    hb_retni( i );
  }
}


/*
QDateTime toUTC () const
*/
HB_FUNC( QDATETIME_TOUTC )
{
  QDateTime * obj = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toUTC (  ) );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );  }
}



/*
QDateTime currentDateTime ()
*/
HB_FUNC( QDATETIME_CURRENTDATETIME )
{
  QDateTime * ptr = new QDateTime( QDateTime::currentDateTime (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );}


/*
QDateTime currentDateTimeUtc ()
*/
HB_FUNC( QDATETIME_CURRENTDATETIMEUTC )
{
  QDateTime * ptr = new QDateTime( QDateTime::currentDateTimeUtc (  ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );}


/*
qint64 currentMSecsSinceEpoch ()
*/
HB_FUNC( QDATETIME_CURRENTMSECSSINCEEPOCH )
{
  qint64 i = QDateTime::currentMSecsSinceEpoch (  );
  hb_retni( i );
}


/*
QDateTime fromMSecsSinceEpoch ( qint64 msecs )
*/
HB_FUNC( QDATETIME_FROMMSECSSINCEEPOCH )
{
  qint64 par1 = hb_parni(1);
  QDateTime * ptr = new QDateTime( QDateTime::fromMSecsSinceEpoch ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );}


/*
QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
*/
HB_FUNC( QDATETIME_FROMSTRING1 )
{
  QString par1 = hb_parc(1);
  int par2 = ISNIL(2)? (int) Qt::TextDate : hb_parni(2);
  QDateTime * ptr = new QDateTime( QDateTime::fromString ( par1,  (Qt::DateFormat) par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );}


/*
QDateTime fromString ( const QString & string, const QString & format )
*/
HB_FUNC( QDATETIME_FROMSTRING2 )
{
  QString par1 = hb_parc(1);
  QString par2 = hb_parc(2);
  QDateTime * ptr = new QDateTime( QDateTime::fromString ( par1, par2 ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );}


//[1]QDateTime fromString ( const QString & string, Qt::DateFormat format = Qt::TextDate )
//[2]QDateTime fromString ( const QString & string, const QString & format )

HB_FUNC( QDATETIME_FROMSTRING )
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
HB_FUNC( QDATETIME_FROMTIME_T )
{
  uint par1 = hb_parni(1);
  QDateTime * ptr = new QDateTime( QDateTime::fromTime_t ( par1 ) );
  _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );}



