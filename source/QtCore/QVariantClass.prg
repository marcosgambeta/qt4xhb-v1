/*

  Qt4xHb - bibliotecas de ligação entre Harbour/xHarbour e Qt Framework 4

  Copyright (C) 2012-2017 Marcos Antonio Gambeta <marcosgambeta@uol.com.br>

*/

#include "hbclass.ch"
#include "qt4xhb_clsid.ch"

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
   DATA class_id INIT Class_Id_QVariant
   DATA class_flags INIT 0
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
#include "qt4xhb_clsid.h"
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
  QVariant * o = NULL;
  o = new QVariant (  );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QLocale & l )
*/
HB_FUNC_STATIC( QVARIANT_NEW2 )
{
  QVariant * o = NULL;
  QLocale * par1 = (QLocale *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QRegExp & regExp )
*/
HB_FUNC_STATIC( QVARIANT_NEW3 )
{
  QVariant * o = NULL;
  QRegExp * par1 = (QRegExp *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QEasingCurve & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW4 )
{
  QVariant * o = NULL;
  QEasingCurve * par1 = (QEasingCurve *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( Qt::GlobalColor color )
*/
HB_FUNC_STATIC( QVARIANT_NEW5 )
{
  QVariant * o = NULL;
  int par1 = hb_parni(1);
  o = new QVariant (  (Qt::GlobalColor) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( Type type )
*/
HB_FUNC_STATIC( QVARIANT_NEW6 )
{
  QVariant * o = NULL;
  int par1 = hb_parni(1);
  o = new QVariant (  (QVariant::Type) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( int typeOrUserType, const void * copy )
*/
HB_FUNC_STATIC( QVARIANT_NEW7 )
{
  QVariant * o = NULL;
  int par1 = hb_parni(1);
  const void * par2 = (const void *) hb_parptr(2);
  o = new QVariant ( par1, par2 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QVariant & p )
*/
HB_FUNC_STATIC( QVARIANT_NEW8 )
{
  QVariant * o = NULL;
  QVariant * par1 = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( QDataStream & s )
*/
HB_FUNC_STATIC( QVARIANT_NEW9 )
{
  QVariant * o = NULL;
  QDataStream * par1 = (QDataStream *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( int val )
*/
HB_FUNC_STATIC( QVARIANT_NEW10 )
{
  QVariant * o = NULL;
  int par1 = hb_parni(1);
  o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( uint val )
*/
HB_FUNC_STATIC( QVARIANT_NEW11 )
{
  QVariant * o = NULL;
  uint par1 = hb_parni(1);
  o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( qlonglong val )
*/
HB_FUNC_STATIC( QVARIANT_NEW12 )
{
  QVariant * o = NULL;
  qlonglong par1 = hb_parnl(1);
  o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( qulonglong val )
*/
HB_FUNC_STATIC( QVARIANT_NEW13 )
{
  QVariant * o = NULL;
  qulonglong par1 = hb_parnl(1);
  o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( bool val )
*/
HB_FUNC_STATIC( QVARIANT_NEW14 )
{
  QVariant * o = NULL;
  o = new QVariant ( PBOOL(1) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( double val )
*/
HB_FUNC_STATIC( QVARIANT_NEW15 )
{
  QVariant * o = NULL;
  o = new QVariant ( PDOUBLE(1) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( float val )
*/
HB_FUNC_STATIC( QVARIANT_NEW16 )
{
  QVariant * o = NULL;
  o = new QVariant ( PFLOAT(1) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const char * val )
*/
HB_FUNC_STATIC( QVARIANT_NEW17 )
{
  QVariant * o = NULL;
  const char * par1 = hb_parc(1);
  o = new QVariant (  (const char *) par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QByteArray & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW18 )
{
  QVariant * o = NULL;
  QByteArray * par1 = (QByteArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QBitArray & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW19 )
{
  QVariant * o = NULL;
  QBitArray * par1 = (QBitArray *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QString & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW20 )
{
  QVariant * o = NULL;
  o = new QVariant ( PQSTRING(1) );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}



/*
QVariant ( const QStringList & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW22 )
{
  QVariant * o = NULL;
  QStringList par1 = _qt4xhb_convert_array_parameter_to_qstringlist(1);
  //PHB_ITEM aStrings1 = hb_param(1, HB_IT_ARRAY);
  //int i1;
  //int nLen1 = hb_arrayLen(aStrings1);
  //for (i1=0;i1<nLen1;i1++)
  //{
  //  QString temp = hb_arrayGetCPtr(aStrings1, i1+1);
  //  par1 << temp;
  //}
  o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QChar & c )
*/
HB_FUNC_STATIC( QVARIANT_NEW23 )
{
  QVariant * o = NULL;
  QChar * par1 = (QChar *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QDate & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW24 )
{
  QVariant * o = NULL;
  QDate * par1 = (QDate *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QTime & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW25 )
{
  QVariant * o = NULL;
  QTime * par1 = (QTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QDateTime & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW26 )
{
  QVariant * o = NULL;
  QDateTime * par1 = (QDateTime *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QList<QVariant> & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW27 )
{
  QVariant * o = NULL;
QList<QVariant> par1;
PHB_ITEM aList1 = hb_param(1, HB_IT_ARRAY);
int i1;
int nLen1 = hb_arrayLen(aList1);
for (i1=0;i1<nLen1;i1++)
{
par1 << *(QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_arrayGetItemPtr( aList1, i1+1 ), "POINTER", 0 ) );
}
  o = new QVariant ( par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}




/*
QVariant ( const QSize & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW30 )
{
  QVariant * o = NULL;
  QSize * par1 = (QSize *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QSizeF & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW31 )
{
  QVariant * o = NULL;
  QSizeF * par1 = (QSizeF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QPoint & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW32 )
{
  QVariant * o = NULL;
  QPoint * par1 = (QPoint *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QPointF & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW33 )
{
  QVariant * o = NULL;
  QPointF * par1 = (QPointF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QLine & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW34 )
{
  QVariant * o = NULL;
  QLine * par1 = (QLine *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QLineF & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW35 )
{
  QVariant * o = NULL;
  QLineF * par1 = (QLineF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QRect & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW36 )
{
  QVariant * o = NULL;
  QRect * par1 = (QRect *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QRectF & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW37 )
{
  QVariant * o = NULL;
  QRectF * par1 = (QRectF *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
}


/*
QVariant ( const QUrl & val )
*/
HB_FUNC_STATIC( QVARIANT_NEW38 )
{
  QVariant * o = NULL;
  QUrl * par1 = (QUrl *) hb_itemGetPtr( hb_objSendMsg( hb_param(1, HB_IT_OBJECT ), "POINTER", 0 ) );
  o = new QVariant ( *par1 );
  PHB_ITEM self = hb_stackSelfItem();
  PHB_ITEM ptr = hb_itemPutPtr( NULL,(QVariant *) o );
  hb_objSendMsg( self, "_pointer", 1, ptr );
  hb_itemRelease( ptr );
  PHB_ITEM des = hb_itemPutL( NULL, true );
  hb_objSendMsg( self, "_SELF_DESTRUCTION", 1, des );
  hb_itemRelease( des );
  hb_itemReturn( self );
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
    int par1 = hb_parni(1);
    hb_retl( obj->canConvert (  (QVariant::Type) par1 ) );
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
    obj->clear (  );
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
    int par1 = hb_parni(1);
    hb_retl( obj->convert (  (QVariant::Type) par1 ) );
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
    hb_retl( obj->isNull (  ) );
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
    hb_retl( obj->isValid (  ) );
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
    QBitArray * ptr = new QBitArray( obj->toBitArray (  ) );
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
    hb_retl( obj->toBool (  ) );
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
    QByteArray * ptr = new QByteArray( obj->toByteArray (  ) );
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
    QChar * ptr = new QChar( obj->toChar (  ) );
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
    QDate * ptr = new QDate( obj->toDate (  ) );
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
    QDateTime * ptr = new QDateTime( obj->toDateTime (  ) );
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
    QEasingCurve * ptr = new QEasingCurve( obj->toEasingCurve (  ) );
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
    QLine * ptr = new QLine( obj->toLine (  ) );
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
    QLineF * ptr = new QLineF( obj->toLineF (  ) );
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
    QList<QVariant> list = obj->toList (  );
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
HB_FUNC_STATIC( QVARIANT_TOLOCALE )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QLocale * ptr = new QLocale( obj->toLocale (  ) );
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
    QPoint * ptr = new QPoint( obj->toPoint (  ) );
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
    QPointF * ptr = new QPointF( obj->toPointF (  ) );
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
    QRect * ptr = new QRect( obj->toRect (  ) );
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
    QRectF * ptr = new QRectF( obj->toRectF (  ) );
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
    QRegExp * ptr = new QRegExp( obj->toRegExp (  ) );
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
    QSize * ptr = new QSize( obj->toSize (  ) );
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
    QSizeF * ptr = new QSizeF( obj->toSizeF (  ) );
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
    QString str1 = obj->toString (  );
    hb_retc( (const char *) str1.toLatin1().data() );
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
    QStringList strl = obj->toStringList (  );
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
QTime toTime () const
*/
HB_FUNC_STATIC( QVARIANT_TOTIME )
{
  QVariant * obj = (QVariant *) hb_itemGetPtr( hb_objSendMsg( hb_stackSelfItem(), "POINTER", 0 ) );
  if( obj )
  {
    QTime * ptr = new QTime( obj->toTime (  ) );
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
    QUrl * ptr = new QUrl( obj->toUrl (  ) );
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
    hb_retni( (int) obj->type (  ) );
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
    const char * str1 = obj->typeName (  );
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
    hb_retni( obj->userType (  ) );
  }
}





/*
Type nameToType ( const char * name )
*/
HB_FUNC_STATIC( QVARIANT_NAMETOTYPE )
{
  const char * par1 = hb_parc(1);
  hb_retni( (int) QVariant::nameToType (  (const char *) par1 ) );
}


/*
const char * typeToName ( Type typ )
*/
HB_FUNC_STATIC( QVARIANT_TYPETONAME )
{
  int par1 = hb_parni(1);
  const char * str1 = QVariant::typeToName (  (QVariant::Type) par1 );
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

  hb_itemReturn( self );
}


#pragma ENDDUMP
