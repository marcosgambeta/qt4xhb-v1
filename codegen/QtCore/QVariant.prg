%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QLocale>
#include <QtCore/QRegExp>
#include <QtCore/QEasingCurve>
#include <QtCore/QDataStream>
#include <QtCore/QByteArray>
#include <QtCore/QBitArray>
#include <QtCore/QString>
#include <QtCore/QLatin1String>
#include <QtCore/QStringList>
#include <QtCore/QChar>
#include <QtCore/QDate>
#include <QtCore/QTime>
#include <QtCore/QDateTime>
#include <QtCore/QSize>
#include <QtCore/QSizeF>
#include <QtCore/QPoint>
#include <QtCore/QPointF>
#include <QtCore/QLine>
#include <QtCore/QLineF>
#include <QtCore/QRect>
#include <QtCore/QRectF>
#include <QtCore/QUrl>

$prototype=QVariant ()
$constructor=|new1|

$prototype=QVariant ( const QLocale & l )
$constructor=|new2|const QLocale &

$prototype=QVariant ( const QRegExp & regExp )
$constructor=|new3|const QRegExp &

$prototype=QVariant ( const QEasingCurve & val )
$constructor=|new4|const QEasingCurve &

$prototype=QVariant ( Qt::GlobalColor color )
$constructor=|new5|Qt::GlobalColor

$prototype=QVariant ( Type type )
$constructor=|new6|QVariant::Type

$prototype=QVariant ( int typeOrUserType, const void * copy )
$constructor=|new7|int,const void *

$prototype=QVariant ( const QVariant & p )
$constructor=|new8|const QVariant &

$prototype=QVariant ( QDataStream & s )
$constructor=|new9|QDataStream &

$prototype=QVariant ( int val )
$constructor=|new10|int

$prototype=QVariant ( uint val )
$constructor=|new11|uint

$prototype=QVariant ( qlonglong val )
$constructor=|new12|qlonglong

$prototype=QVariant ( qulonglong val )
$constructor=|new13|qulonglong

$prototype=QVariant ( bool val )
$constructor=|new14|bool

$prototype=QVariant ( double val )
$constructor=|new15|double

$prototype=QVariant ( float val )
$constructor=|new16|float

$prototype=QVariant ( const char * val )
$constructor=|new17|const char *

$prototype=QVariant ( const QByteArray & val )
$constructor=|new18|const QByteArray &

$prototype=QVariant ( const QBitArray & val )
$constructor=|new19|const QBitArray &

$prototype=QVariant ( const QString & val )
$constructor=|new20|const QString &

$prototype=QVariant ( const QLatin1String & val )
$constructor=|new21|const QLatin1String &

$prototype=QVariant ( const QStringList & val )
$constructor=|new22|const QStringList &

$prototype=QVariant ( const QChar & c )
$constructor=|new23|const QChar &

$prototype=QVariant ( const QDate & val )
$constructor=|new24|const QDate &

$prototype=QVariant ( const QTime & val )
$constructor=|new25|const QTime &

$prototype=QVariant ( const QDateTime & val )
$constructor=|new26|const QDateTime &

$prototype=QVariant ( const QList<QVariant> & val )
$constructor=|new27|const QList<QVariant> &

$prototype=QVariant ( const QMap<QString, QVariant> & val )

$prototype=QVariant ( const QHash<QString, QVariant> & val )

$prototype=QVariant ( const QSize & val )
$constructor=|new30|const QSize &

$prototype=QVariant ( const QSizeF & val )
$constructor=|new31|const QSizeF &

$prototype=QVariant ( const QPoint & val )
$constructor=|new32|const QPoint &

$prototype=QVariant ( const QPointF & val )
$constructor=|new33|const QPointF &

$prototype=QVariant ( const QLine & val )
$constructor=|new34|const QLine &

$prototype=QVariant ( const QLineF & val )
$constructor=|new35|const QLineF &

$prototype=QVariant ( const QRect & val )
$constructor=|new36|const QRect &

$prototype=QVariant ( const QRectF & val )
$constructor=|new37|const QRectF &

$prototype=QVariant ( const QUrl & val )
$constructor=|new38|const QUrl &

/*
[1]QVariant ()
[2]QVariant ( const QLocale & l )
[3]QVariant ( const QRegExp & regExp )
[4]QVariant ( const QEasingCurve & val )
[5]QVariant ( Qt::GlobalColor color )
[6]QVariant ( Type type )
[7]QVariant ( int typeOrUserType, const void * copy )
[8]QVariant ( const QVariant & p )
[9]QVariant ( QDataStream & s )
[10]QVariant ( int val )
[11]QVariant ( uint val )
[12]QVariant ( qlonglong val )
[13]QVariant ( qulonglong val )
[14]QVariant ( bool val )
[15]QVariant ( double val )
[16]QVariant ( float val )
[17]QVariant ( const char * val )
[18]QVariant ( const QByteArray & val )
[19]QVariant ( const QBitArray & val )
[20]QVariant ( const QString & val )
[21]QVariant ( const QLatin1String & val )
[22]QVariant ( const QStringList & val )
[23]QVariant ( const QChar & c )
[24]QVariant ( const QDate & val )
[25]QVariant ( const QTime & val )
[26]QVariant ( const QDateTime & val )
[27]QVariant ( const QList<QVariant> & val )
[28]QVariant ( const QMap<QString, QVariant> & val )
[29]QVariant ( const QHash<QString, QVariant> & val )
[30]QVariant ( const QSize & val )
[31]QVariant ( const QSizeF & val )
[32]QVariant ( const QPoint & val )
[33]QVariant ( const QPointF & val )
[34]QVariant ( const QLine & val )
[35]QVariant ( const QLineF & val )
[36]QVariant ( const QRect & val )
[37]QVariant ( const QRectF & val )
[38]QVariant ( const QUrl & val )
*/

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
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    if( hb_param( 1, HB_IT_DOUBLE ) != NULL )
    {
      HB_FUNC_EXEC( QVARIANT_NEW15 );
    }
    else if( hb_param( 1, HB_IT_LONG ) != NULL )
    {
      HB_FUNC_EXEC( QVARIANT_NEW12 );
    }
    else
    {
      HB_FUNC_EXEC( QVARIANT_NEW10 );
    }
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
  else if( ISNUMPAR(1) && ISQLATIN1STRING(1) )
  {
    HB_FUNC_EXEC( QVARIANT_NEW21 );
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
$addMethod=new

$deleteMethod

$prototypeV2=bool canConvert( QVariant::Type t ) const

%% $prototype=bool canConvert ( Type t ) const
%% $method=|bool|canConvert,canConvert1|QVariant::Type

%% $prototype=bool canConvert () const
%% $method=|bool|canConvert,canConvert2|

%% /*
%% [1]bool canConvert ( Type t ) const
%% [2]bool canConvert () const
%% */

%% HB_FUNC_STATIC( QVARIANT_CANCONVERT )
%% {
%%   if( ISNUMPAR(0) )
%%   {
%%     HB_FUNC_EXEC( QVARIANT_CANCONVERT2 );
%%   }
%%   else if( ISNUMPAR(1) && ISNUM(1) )
%%   {
%%     HB_FUNC_EXEC( QVARIANT_CANCONVERT1 );
%%   }
%%   else
%%   {
%%     hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
%%   }
%% }

$prototypeV2=void clear()

$prototypeV2=bool convert( QVariant::Type t )

$prototypeV2=bool isNull() const

$prototypeV2=bool isValid() const

$prototypeV2=QBitArray toBitArray() const

$prototypeV2=bool toBool() const

$prototypeV2=QByteArray toByteArray() const

$prototypeV2=QChar toChar() const

$prototypeV2=QDate toDate() const

$prototypeV2=QDateTime toDateTime() const

$prototypeV2=QEasingCurve toEasingCurve() const

$prototypeV2=QLine toLine() const

$prototypeV2=QLineF toLineF() const

$prototypeV2=QList<QVariant> toList() const

$prototypeV2=QLocale toLocale() const

$prototypeV2=QPoint toPoint() const

$prototypeV2=QPointF toPointF() const

$prototypeV2=qreal toReal( bool * ok = 0 ) const
%% TODO: implementar bool *=0

$prototypeV2=QRect toRect() const

$prototypeV2=QRectF toRectF() const

$prototypeV2=QRegExp toRegExp() const

$prototypeV2=QSize toSize() const

$prototypeV2=QSizeF toSizeF() const

$prototypeV2=QString toString() const

$prototypeV2=QStringList toStringList() const

$prototypeV2=QTime toTime() const

$prototypeV2=QUrl toUrl() const

$prototypeV2=QVariant::Type type() const

$prototypeV2=const char * typeName() const

$prototypeV2=int userType() const

$prototypeV2=static QVariant::Type nameToType( const char * name )

$prototypeV2=static const char * typeToName( QVariant::Type typ )

$extraMethods

#pragma ENDDUMP
