$header

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

$destructor

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
$constructor=|new1|

/*
QVariant ( const QLocale & l )
*/
$constructor=|new2|const QLocale &

/*
QVariant ( const QRegExp & regExp )
*/
$constructor=|new3|const QRegExp &

/*
QVariant ( const QEasingCurve & val )
*/
$constructor=|new4|const QEasingCurve &

/*
QVariant ( Qt::GlobalColor color )
*/
$constructor=|new5|Qt::GlobalColor

/*
QVariant ( Type type )
*/
$constructor=|new6|QVariant::Type

/*
QVariant ( int typeOrUserType, const void * copy )
*/
$constructor=|new7|int,const void *

/*
QVariant ( const QVariant & p )
*/
$constructor=|new8|const QVariant &

/*
QVariant ( QDataStream & s )
*/
$constructor=|new9|QDataStream &

/*
QVariant ( int val )
*/
$constructor=|new10|int

/*
QVariant ( uint val )
*/
$constructor=|new11|uint

/*
QVariant ( qlonglong val )
*/
$constructor=|new12|qlonglong

/*
QVariant ( qulonglong val )
*/
$constructor=|new13|qulonglong

/*
QVariant ( bool val )
*/
$constructor=|new14|bool

/*
QVariant ( double val )
*/
$constructor=|new15|double

/*
QVariant ( float val )
*/
$constructor=|new16|float

/*
QVariant ( const char * val )
*/
$constructor=|new17|const char *

/*
QVariant ( const QByteArray & val )
*/
$constructor=|new18|const QByteArray &

/*
QVariant ( const QBitArray & val )
*/
$constructor=|new19|const QBitArray &

/*
QVariant ( const QString & val )
*/
$constructor=|new20|const QString &

/*
QVariant ( const QLatin1String & val )
*/
$constructor=|new21|const QLatin1String &

/*
QVariant ( const QStringList & val )
*/
$constructor=|new22|const QStringList &

/*
QVariant ( const QChar & c )
*/
$constructor=|new23|const QChar &

/*
QVariant ( const QDate & val )
*/
$constructor=|new24|const QDate &

/*
QVariant ( const QTime & val )
*/
$constructor=|new25|const QTime &

/*
QVariant ( const QDateTime & val )
*/
$constructor=|new26|const QDateTime &

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
QVariant ( const QMap<QString, QVariant> & val )
*/

/*
QVariant ( const QHash<QString, QVariant> & val )
*/

/*
QVariant ( const QSize & val )
*/
$constructor=|new30|const QSize &

/*
QVariant ( const QSizeF & val )
*/
$constructor=|new31|const QSizeF &

/*
QVariant ( const QPoint & val )
*/
$constructor=|new32|const QPoint &

/*
QVariant ( const QPointF & val )
*/
$constructor=|new33|const QPointF &

/*
QVariant ( const QLine & val )
*/
$constructor=|new34|const QLine &

/*
QVariant ( const QLineF & val )
*/
$constructor=|new35|const QLineF &

/*
QVariant ( const QRect & val )
*/
$constructor=|new36|const QRect &

/*
QVariant ( const QRectF & val )
*/
$constructor=|new37|const QRectF &

/*
QVariant ( const QUrl & val )
*/
$constructor=|new38|const QUrl &

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

%% TODO: completar reconhecimento de parâmetros

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

$deleteMethod

/*
bool canConvert ( Type t ) const
*/
$method=|bool|canConvert,canConvert1|QVariant::Type

/*
bool canConvert () const
*/
$method=|bool|canConvert,canConvert2|

//[1]bool canConvert ( Type t ) const
//[2]bool canConvert () const

HB_FUNC_STATIC( QVARIANT_CANCONVERT )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QVARIANT_CANCONVERT2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QVARIANT_CANCONVERT1 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

/*
void clear ()
*/
$method=|void|clear|

/*
bool convert ( Type t )
*/
$method=|bool|convert|QVariant::Type

/*
bool isNull () const
*/
$method=|bool|isNull|

/*
bool isValid () const
*/
$method=|bool|isValid|

/*
QBitArray toBitArray () const
*/
$method=|QBitArray|toBitArray|

/*
bool toBool () const
*/
$method=|bool|toBool|

/*
QByteArray toByteArray () const
*/
$method=|QByteArray|toByteArray|

/*
QChar toChar () const
*/
$method=|QChar|toChar|

/*
QDate toDate () const
*/
$method=|QDate|toDate|

/*
QDateTime toDateTime () const
*/
$method=|QDateTime|toDateTime|

/*
QEasingCurve toEasingCurve () const
*/
$method=|QEasingCurve|toEasingCurve|

/*
QLine toLine () const
*/
$method=|QLine|toLine|

/*
QLineF toLineF () const
*/
$method=|QLineF|toLineF|

/*
QList<QVariant> toList () const
*/
HB_FUNC_STATIC( QVARIANT_TOLIST )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QList<QVariant> list = obj->toList ();
    PHB_DYNS pDynSym;
    #ifdef __XHARBOUR__
    pDynSym = hb_dynsymFind( "QVARIANT" );
    #else
    pDynSym = hb_dynsymFindName( "QVARIANT" );
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
$method=|QLocale|toLocale|

/*
QPoint toPoint () const
*/
$method=|QPoint|toPoint|

/*
QPointF toPointF () const
*/
$method=|QPointF|toPointF|

/*
QRect toRect () const
*/
$method=|QRect|toRect|

/*
QRectF toRectF () const
*/
$method=|QRectF|toRectF|

/*
QRegExp toRegExp () const
*/
$method=|QRegExp|toRegExp|

/*
QSize toSize () const
*/
$method=|QSize|toSize|

/*
QSizeF toSizeF () const
*/
$method=|QSizeF|toSizeF|

/*
QString toString () const
*/
$method=|QString|toString|

/*
QStringList toStringList () const
*/
$method=|QStringList|toStringList|

/*
QTime toTime () const
*/
$method=|QTime|toTime|

/*
QUrl toUrl () const
*/
$method=|QUrl|toUrl|

/*
Type type () const
*/
$method=|QVariant::Type|type|

/*
const char * typeName () const
*/
$method=|const char *|typeName|

/*
int userType () const
*/
$method=|int|userType|

/*
static Type nameToType ( const char * name )
*/
$staticMethod=|QVariant::Type|nameToType|const char *

/*
static const char * typeToName ( Type typ )
*/
$staticMethod=|const char *|typeToName|QVariant::Type

$extraMethods

#pragma ENDDUMP
