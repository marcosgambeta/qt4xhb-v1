%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXmlPatterns

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtXmlPatterns/QXmlNamePool>

$prototype=QXmlName ()
$internalConstructor=|new1|

$prototype=QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )
$internalConstructor=|new2|QXmlNamePool &,const QString &,const QString &=QString(),const QString &=QString()

/*
[1]QXmlName ()
[2]QXmlName ( QXmlNamePool & namePool, const QString & localName, const QString & namespaceURI = QString(), const QString & prefix = QString() )
*/

HB_FUNC_STATIC( QXMLNAME_NEW )
{
  if( ISNUMPAR(0) )
  {
    QXmlName_new1();
  }
  else if( ISBETWEEN(2,4) && ISQXMLNAMEPOOL(1) && ISCHAR(2) && (ISCHAR(3)||ISNIL(3)) && (ISCHAR(4)||ISNIL(4)) )
  {
    QXmlName_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$prototypeV2=bool isNull() const

$prototypeV2=QString localName( const QXmlNamePool & namePool ) const

$prototypeV2=QString namespaceUri( const QXmlNamePool & namePool ) const

$prototypeV2=QString prefix( const QXmlNamePool & namePool ) const

$prototypeV2=QString toClarkName( const QXmlNamePool & namePool ) const

$prototypeV2=static QXmlName fromClarkName( const QString & clarkName, const QXmlNamePool & namePool )

$prototypeV2=static bool isNCName( const QString & candidate )

$extraMethods

#pragma ENDDUMP
