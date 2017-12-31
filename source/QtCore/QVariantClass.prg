/*

  Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4

  Copyright (C) 2017 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>

*/

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QBITARRAY
REQUEST QBYTEARRAY
REQUEST QCHAR
REQUEST QDATE
REQUEST QDATETIME
REQUEST QEASINGCURVE
REQUEST QLINE
REQUEST QLINEF
REQUEST QVARIANT
REQUEST QLOCALE
REQUEST QPOINT
REQUEST QPOINTF
REQUEST QRECT
REQUEST QRECTF
REQUEST QREGEXP
REQUEST QSIZE
REQUEST QSIZEF
REQUEST QTIME
REQUEST QURL
#endif

CLASS QVariant

   DATA pointer
   DATA self_destruction INIT .F.

   METHOD new1
   METHOD new2
   METHOD new3
   METHOD new4
   METHOD new5
   METHOD new6
   METHOD new7
   METHOD new8
   METHOD new9
   METHOD new10
   METHOD new11
   METHOD new12
   METHOD new13
   METHOD new14
   METHOD new15
   METHOD new16
   METHOD new17
   METHOD new18
   METHOD new19
   METHOD new20
   METHOD new22
   METHOD new23
   METHOD new24
   METHOD new25
   METHOD new26
   METHOD new27
   METHOD new30
   METHOD new31
   METHOD new32
   METHOD new33
   METHOD new34
   METHOD new35
   METHOD new36
   METHOD new37
   METHOD new38
   METHOD new
   METHOD delete
   METHOD canConvert
   METHOD clear
   METHOD convert
   METHOD isNull
   METHOD isValid
   METHOD toBitArray
   METHOD toBool
   METHOD toByteArray
   METHOD toChar
   METHOD toDate
   METHOD toDateTime
   METHOD toEasingCurve
   METHOD toLine
   METHOD toLineF
   METHOD toList
   METHOD toLocale
   METHOD toPoint
   METHOD toPointF
   METHOD toRect
   METHOD toRectF
   METHOD toRegExp
   METHOD toSize
   METHOD toSizeF
   METHOD toString
   METHOD toStringList
   METHOD toTime
   METHOD toUrl
   METHOD type
   METHOD typeName
   METHOD userType
   METHOD nameToType
   METHOD typeToName
   METHOD newFrom
   METHOD newFromObject
   METHOD newFromPointer
   METHOD selfDestruction
   METHOD setSelfDestruction
   DESTRUCTOR destroyObject

END CLASS

PROCEDURE destroyObject () CLASS QVariant
   IF ::self_destruction
      ::delete()
   ENDIF
RETURN

#pragma BEGINDUMP

#include <QVariant>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

#include <QLocale>
#include <QRegExp>
#include <QEasingCurve>
#include <QDataStream>
#include <QByteArray>
#include <QBitArray>
#include <QString>
#include <QLatin1String>
#include <QStringList>
#include <QChar>
#include <QDate>
#include <QTime>
#include <QDateTime>
#include <QSize>
#include <QSizeF>
#include <QPoint>
#include <QPointF>
#include <QLine>
#include <QLineF>
#include <QRect>
#include <QRectF>
#include <QUrl>

/*
QVariant ()
*/
HB_FUNC_STATIC( QVARIANT_NEW1 )
{
  QVariant * o = new QVariant ();
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QLocale & l )
*/
HB_FUNC_STATIC( QVARIANT_NEW2 )
{
  QVariant * o = new QVariant ( *PQLOCALE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QRegExp & regExp )
*/
HB_FUNC_STATIC( QVARIANT_NEW3 )
{
  QVariant * o = new QVariant ( *PQREGEXP(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QEasingCurve & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW4 )
{
  QVariant * o = new QVariant ( *PQEASINGCURVE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( Qt::GlobalColor color )
*/
HB_FUNC_STATIC( QVARIANT_NEW5 )
{
  QVariant * o = new QVariant ( (Qt::GlobalColor) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( Type type )
*/
HB_FUNC_STATIC( QVARIANT_NEW6 )
{
  QVariant * o = new QVariant ( (QVariant::Type) hb_parni(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( int typeOrUserType, const void * copy )
*/
HB_FUNC_STATIC( QVARIANT_NEW7 )
{
  const void * par2 = (const void *) hb_parptr(2);
  QVariant * o = new QVariant ( PINT(1), par2 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QVariant & p )
*/
HB_FUNC_STATIC( QVARIANT_NEW8 )
{
  QVariant * o = new QVariant ( *PQVARIANT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( QDataStream & s )
*/
HB_FUNC_STATIC( QVARIANT_NEW9 )
{
  QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  QVariant * o = new QVariant ( *par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( int val )
*/
HB_FUNC_STATIC( QVARIANT_NEW10 )
{
  QVariant * o = new QVariant ( PINT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( uint val )
*/
HB_FUNC_STATIC( QVARIANT_NEW11 )
{
  QVariant * o = new QVariant ( PUINT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( qlonglong val )
*/
HB_FUNC_STATIC( QVARIANT_NEW12 )
{
  QVariant * o = new QVariant ( PQLONGLONG(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( qulonglong val )
*/
HB_FUNC_STATIC( QVARIANT_NEW13 )
{
  QVariant * o = new QVariant ( PQULONGLONG(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( bool val )
*/
HB_FUNC_STATIC( QVARIANT_NEW14 )
{
  QVariant * o = new QVariant ( PBOOL(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( double val )
*/
HB_FUNC_STATIC( QVARIANT_NEW15 )
{
  QVariant * o = new QVariant ( PDOUBLE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( float val )
*/
HB_FUNC_STATIC( QVARIANT_NEW16 )
{
  QVariant * o = new QVariant ( PFLOAT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const char * val )
*/
HB_FUNC_STATIC( QVARIANT_NEW17 )
{
  QVariant * o = new QVariant ( (const char *) hb_parc(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QByteArray & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW18 )
{
  QVariant * o = new QVariant ( *PQBYTEARRAY(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QBitArray & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW19 )
{
  QVariant * o = new QVariant ( *PQBITARRAY(1));
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QString & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW20 )
{
  QVariant * o = new QVariant ( PQSTRING(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QStringList & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW22 )
{
  QVariant * o = new QVariant ( PQSTRINGLIST(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QChar & c )
*/
HB_FUNC_STATIC( QVARIANT_NEW23 )
{
  QVariant * o = new QVariant ( *PQCHAR(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QDate & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW24 )
{
  QVariant * o = new QVariant ( *PQDATE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QTime & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW25 )
{
  QVariant * o = new QVariant ( *PQTIME(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QDateTime & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW26 )
{
  QVariant * o = new QVariant ( *PQDATETIME(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QList<QVariant> & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW27 )
{
QList<QVariant> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  QVariant * o = new QVariant ( par1 );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QSize & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW30 )
{
  QVariant * o = new QVariant ( *PQSIZE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QSizeF & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW31 )
{
  QVariant * o = new QVariant ( *PQSIZEF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QPoint & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW32 )
{
  QVariant * o = new QVariant ( *PQPOINT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QPointF & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW33 )
{
  QVariant * o = new QVariant ( *PQPOINTF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QLine & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW34 )
{
  QVariant * o = new QVariant ( *PQLINE(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QLineF & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW35 )
{
  QVariant * o = new QVariant ( *PQLINEF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QRect & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW36 )
{
  QVariant * o = new QVariant ( *PQRECT(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QRectF & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW37 )
{
  QVariant * o = new QVariant ( *PQRECTF(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

/*
QVariant ( const QUrl & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW38 )
{
  QVariant * o = new QVariant ( *PQURL(1) );
  _qt4xhb_storePointerAndFlag ( o, true );
}

//[1]QVariant ()
//[2]QVariant ( const QLocale & l )
//[3]QVariant ( const QRegExp & regExp )
//[4]QVariant ( const QEasingCurve & val )
//[5]QVariant ( Qt::GlobalColor color )
//[6]QVariant ( Type type )
//[7]QVariant ( int typeOrUserType, const void * copy )
//[8]QVariant ( const QVariant & p )
//[9]QVariant ( QDataStream & s )
//[10]QVariant ( int val )
//[11]QVariant ( uint val )
//[12]QVariant ( qlonglong val )
//[13]QVariant ( qulonglong val )
//[14]QVariant ( bool val )
//[15]QVariant ( double val )
//[16]QVariant ( float val )
//[17]QVariant ( const char * val )
//[18]QVariant ( const QByteArray & val )
//[19]QVariant ( const QBitArray & val )
//[20]QVariant ( const QString & val )
//[21]QVariant ( const QLatin1String & val )
//[22]QVariant ( const QStringList & val )
//[23]QVariant ( const QChar & c )
//[24]QVariant ( const QDate & val )
//[25]QVariant ( const QTime & val )
//[26]QVariant ( const QDateTime & val )
//[27]QVariant ( const QList<QVariant> & val )
//[28]QVariant ( const QMap<QString, QVariant> & val )
//[29]QVariant ( const QHash<QString, QVariant> & val )
//[30]QVariant ( const QSize & val )
//[31]QVariant ( const QSizeF & val )
//[32]QVariant ( const QPoint & val )
//[33]QVariant ( const QPointF & val )
//[34]QVariant ( const QLine & val )
//[35]QVariant ( const QLineF & val )
//[36]QVariant ( const QRect & val )
//[37]QVariant ( const QRectF & val )
//[38]QVariant ( const QUrl & val )

// TODO: completar reconhecimento de parâmetros

HB_FUNC_STATIC( QVARIANT_NEW )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW1 );
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW20 );
  }
  else if( ISNUMPAR(1) && ISLOG(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW14 );
  }
  else if( ISNUMPAR(1) && ISQLOCALE(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW2 );
  }
  else if( ISNUMPAR(1) && ISQREGEXP(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW3 );
  }
  else if( ISNUMPAR(1) && ISQEASINGCURVE(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW4 );
  }
  else if( ISNUMPAR(1) && ISQVARIANT(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW8 );
  }
  else if( ISNUMPAR(1) && ISQDATASTREAM(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW9 );
  }
  else if( ISNUMPAR(1) && ISQBYTEARRAY(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW18 );
  }
  else if( ISNUMPAR(1) && ISQBITARRAY(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW19 );
  }
  else if( ISNUMPAR(1) && ISQCHAR(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW23 );
  }
  else if( ISNUMPAR(1) && ISQDATE(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW24 );
  }
  else if( ISNUMPAR(1) && ISQTIME(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW25 );
  }
  else if( ISNUMPAR(1) && ISQDATETIME(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW26 );
  }
  else if( ISNUMPAR(1) && ISQSIZE(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW30 );
  }
  else if( ISNUMPAR(1) && ISQSIZEF(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW31 );
  }
  else if( ISNUMPAR(1) && ISQPOINT(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW32 );
  }
  else if( ISNUMPAR(1) && ISQPOINTF(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW33 );
  }
  else if( ISNUMPAR(1) && ISQLINE(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW34 );
  }
  else if( ISNUMPAR(1) && ISQLINEF(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW35 );
  }
  else if( ISNUMPAR(1) && ISQRECT(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW36 );
  }
  else if( ISNUMPAR(1) && ISQRECTF(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW37 );
  }
  else if( ISNUMPAR(1) && ISQURL(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW38 );
  }
  // TODO: identificar se é array de strings ou objetos
  else if( ISNUMPAR(1) && ISARRAY(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW22 );
    //HB_FUNC_EXEC( QVARIANT_NEW27 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

HB_FUNC_STATIC( QVARIANT_DELETE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

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
bool canConvert ( Type t ) const
*/
HB_FUNC_STATIC( QVARIANT_CANCONVERT )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->canConvert ( (QVariant::Type) hb_parni(1) ) );
  }
}

//[1]bool canConvert ( Type t ) const
//[2]bool canConvert () const

//HB_FUNC_STATIC( QVARIANT_CANCONVERT )
//{
//  if( ISNUMPAR(0) )
//  {
//    HB_FUNC_EXEC( QVARIANT_CANCONVERT2 );
//  }
//  else if( ISNUMPAR(1) && ISNUM(1) )
//  {
//    HB_FUNC_EXEC( QVARIANT_CANCONVERT1 );
//  }
//}

/*
void clear ()
*/
HB_FUNC_STATIC( QVARIANT_CLEAR )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    obj->clear ();
  }
  hb_itemReturn( hb_stackSelfItem() );
}

/*
bool convert ( Type t )
*/
HB_FUNC_STATIC( QVARIANT_CONVERT )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->convert ( (QVariant::Type) hb_parni(1) ) );
  }
}

/*
bool isNull () const
*/
HB_FUNC_STATIC( QVARIANT_ISNULL )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isNull () );
  }
}

/*
bool isValid () const
*/
HB_FUNC_STATIC( QVARIANT_ISVALID )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->isValid () );
  }
}

/*
QBitArray toBitArray () const
*/
HB_FUNC_STATIC( QVARIANT_TOBITARRAY )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QBitArray * ptr = new QBitArray( obj->toBitArray () );
    _qt4xhb_createReturnClass ( ptr, "QBITARRAY" );
  }
}

/*
bool toBool () const
*/
HB_FUNC_STATIC( QVARIANT_TOBOOL )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RBOOL( obj->toBool () );
  }
}

/*
QByteArray toByteArray () const
*/
HB_FUNC_STATIC( QVARIANT_TOBYTEARRAY )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QByteArray * ptr = new QByteArray( obj->toByteArray () );
    _qt4xhb_createReturnClass ( ptr, "QBYTEARRAY" );
  }
}

/*
QChar toChar () const
*/
HB_FUNC_STATIC( QVARIANT_TOCHAR )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QChar * ptr = new QChar( obj->toChar () );
    _qt4xhb_createReturnClass ( ptr, "QCHAR" );
  }
}

/*
QDate toDate () const
*/
HB_FUNC_STATIC( QVARIANT_TODATE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDate * ptr = new QDate( obj->toDate () );
    _qt4xhb_createReturnClass ( ptr, "QDATE", true );
  }
}

/*
QDateTime toDateTime () const
*/
HB_FUNC_STATIC( QVARIANT_TODATETIME )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QDateTime * ptr = new QDateTime( obj->toDateTime () );
    _qt4xhb_createReturnClass ( ptr, "QDATETIME", true );
  }
}

/*
QEasingCurve toEasingCurve () const
*/
HB_FUNC_STATIC( QVARIANT_TOEASINGCURVE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QEasingCurve * ptr = new QEasingCurve( obj->toEasingCurve () );
    _qt4xhb_createReturnClass ( ptr, "QEASINGCURVE" );
  }
}

/*
QLine toLine () const
*/
HB_FUNC_STATIC( QVARIANT_TOLINE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLine * ptr = new QLine( obj->toLine () );
    _qt4xhb_createReturnClass ( ptr, "QLINE", true );
  }
}

/*
QLineF toLineF () const
*/
HB_FUNC_STATIC( QVARIANT_TOLINEF )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLineF * ptr = new QLineF( obj->toLineF () );
    _qt4xhb_createReturnClass ( ptr, "QLINEF", true );
  }
}

/*
QList<QVariant> toList () const
*/
HB_FUNC_STATIC( QVARIANT_TOLIST )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QVariant> list = obj->toList ();
    PHB_DYNS pDynSym = hb_dynsymFindName( "QVARIANT" );
    PHB_ITEM pArray;
    pArray = hb_itemArrayNew(0);
    int i;
    for(i=0;i<list.count();i++)
    {
      if( pDynSym )
      {
        hb_vmPushDynSym( pDynSym );
        hb_vmPushNil();
        hb_vmDo( 0 );
        PHB_ITEM pObject = hb_itemNew( NULL );
        hb_itemCopy( pObject, hb_stackReturnItem() );
        PHB_ITEM pItem = hb_itemNew( NULL );
        hb_itemPutPtr( pItem, (QVariant *) new QVariant ( list[i] ) );
        hb_objSendMsg( pObject, "_POINTER", 1, pItem );
        hb_itemRelease( pItem );
        PHB_ITEM pDestroy = hb_itemNew( NULL );
        hb_itemPutL( pDestroy, true );
        hb_objSendMsg( pObject, "_SELF_DESTRUCTION", 1, pDestroy );
        hb_itemRelease( pDestroy );
        hb_arrayAddForward( pArray, pObject );
        hb_itemRelease( pObject );
      }
    }
    hb_itemReturnRelease(pArray);
  }
}

/*
QLocale toLocale () const
*/
HB_FUNC_STATIC( QVARIANT_TOLOCALE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->toLocale () );
    _qt4xhb_createReturnClass ( ptr, "QLOCALE" );
  }
}

/*
QPoint toPoint () const
*/
HB_FUNC_STATIC( QVARIANT_TOPOINT )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPoint * ptr = new QPoint( obj->toPoint () );
    _qt4xhb_createReturnClass ( ptr, "QPOINT", true );
  }
}

/*
QPointF toPointF () const
*/
HB_FUNC_STATIC( QVARIANT_TOPOINTF )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QPointF * ptr = new QPointF( obj->toPointF () );
    _qt4xhb_createReturnClass ( ptr, "QPOINTF", true );
  }
}

/*
QRect toRect () const
*/
HB_FUNC_STATIC( QVARIANT_TORECT )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRect * ptr = new QRect( obj->toRect () );
    _qt4xhb_createReturnClass ( ptr, "QRECT", true );
  }
}

/*
QRectF toRectF () const
*/
HB_FUNC_STATIC( QVARIANT_TORECTF )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRectF * ptr = new QRectF( obj->toRectF () );
    _qt4xhb_createReturnClass ( ptr, "QRECTF", true );
  }
}

/*
QRegExp toRegExp () const
*/
HB_FUNC_STATIC( QVARIANT_TOREGEXP )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QRegExp * ptr = new QRegExp( obj->toRegExp () );
    _qt4xhb_createReturnClass ( ptr, "QREGEXP", true );
  }
}

/*
QSize toSize () const
*/
HB_FUNC_STATIC( QVARIANT_TOSIZE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSize * ptr = new QSize( obj->toSize () );
    _qt4xhb_createReturnClass ( ptr, "QSIZE", true );
  }
}

/*
QSizeF toSizeF () const
*/
HB_FUNC_STATIC( QVARIANT_TOSIZEF )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QSizeF * ptr = new QSizeF( obj->toSizeF () );
    _qt4xhb_createReturnClass ( ptr, "QSIZEF", true );
  }
}

/*
QString toString () const
*/
HB_FUNC_STATIC( QVARIANT_TOSTRING )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );

  if( obj )
  {
    if( ISNUMPAR(0) )
    {
      RQSTRING( obj->toString () );
    }
    else
    {
      hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
    }
  }
}

/*
QStringList toStringList () const
*/
HB_FUNC_STATIC( QVARIANT_TOSTRINGLIST )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RQSTRINGLIST( obj->toStringList () );
  }
}

/*
QTime toTime () const
*/
HB_FUNC_STATIC( QVARIANT_TOTIME )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * ptr = new QTime( obj->toTime () );
    _qt4xhb_createReturnClass ( ptr, "QTIME", true );
  }
}

/*
QUrl toUrl () const
*/
HB_FUNC_STATIC( QVARIANT_TOURL )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QUrl * ptr = new QUrl( obj->toUrl () );
    _qt4xhb_createReturnClass ( ptr, "QURL", true );
  }
}

/*
Type type () const
*/
HB_FUNC_STATIC( QVARIANT_TYPE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    hb_retni( (int) obj->type () );
  }
}

/*
const char * typeName () const
*/
HB_FUNC_STATIC( QVARIANT_TYPENAME )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    const char * str1 = obj->typeName ();
    hb_retc( str1 );
  }
}

/*
int userType () const
*/
HB_FUNC_STATIC( QVARIANT_USERTYPE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    RINT( obj->userType () );
  }
}

/*
Type nameToType ( const char * name )
*/
HB_FUNC_STATIC( QVARIANT_NAMETOTYPE )
{
  hb_retni( (int) QVariant::nameToType ( (const char *) hb_parc(1) ) );
}

/*
const char * typeToName ( Type typ )
*/
HB_FUNC_STATIC( QVARIANT_TYPETONAME )
{
  const char * str1 = QVariant::typeToName ( (QVariant::Type) hb_parni(1) );
  hb_retc( str1 );
}

HB_FUNC_STATIC( QVARIANT_NEWFROM )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISOBJECT(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else if( hb_pcount() == 1 && ISPOINTER(1) )
  {
    PHB_ITEM ptr = hb_itemPutPtr( NULL, (void *) hb_itemGetPtr( hb_param(1, HB_IT_POINTER ) ) );
    hb_objSendMsg( self, "_pointer", 1, ptr );
    hb_itemRelease( ptr );
    PHB_ITEM des = hb_itemPutL( NULL, false );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

HB_FUNC_STATIC( QVARIANT_NEWFROMOBJECT )
{
  HB_FUNC_EXEC( QVARIANT_NEWFROM );
}

HB_FUNC_STATIC( QVARIANT_NEWFROMPOINTER )
{
  HB_FUNC_EXEC( QVARIANT_NEWFROM );
}

HB_FUNC_STATIC( QVARIANT_SELFDESTRUCTION )
{
  hb_retl( (bool) hb_itemGetL( hb_objSendMsg( hb_stackSelfItem(), "SELF_DESTRUCTION", 0 ) ) );
}

HB_FUNC_STATIC( QVARIANT_SETSELFDESTRUCTION )
{
  PHB_ITEM self = hb_stackSelfItem();

  if( hb_pcount() == 1 && ISLOG(1) )
  {
    PHB_ITEM des = hb_itemPutL( NULL, hb_parl(1) );
    hb_objSendMsg( self, "_self_destruction", 1, des );
    hb_itemRelease( des );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }

  hb_itemReturn( self );
}

#pragma ENDDUMP
