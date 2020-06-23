%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtXml

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QXmlNamespaceSupport ()
$constructor=|new|

$deleteMethod

$prototypeV2=void popContext()

$prototypeV2=QString prefix( const QString & uri ) const

$prototype=QStringList prefixes () const
$internalMethod=|QStringList|prefixes,prefixes1|

$prototype=QStringList prefixes ( const QString & uri ) const
$internalMethod=|QStringList|prefixes,prefixes2|const QString &

/*
[1]QStringList prefixes () const
[2]QStringList prefixes ( const QString & uri ) const
*/

HB_FUNC_STATIC( QXMLNAMESPACESUPPORT_PREFIXES )
{
  if( ISNUMPAR(0) )
  {
    QXmlNamespaceSupport_prefixes1();
  }
  else if( ISNUMPAR(1) && ISCHAR(1) )
  {
    QXmlNamespaceSupport_prefixes2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=prefixes

$prototype=void processName ( const QString & qname, bool isAttribute, QString & nsuri, QString & localname ) const
%% TODO: implementar 'QString &'
%% $method=|void|processName|const QString &,bool,QString &,QString &

$prototypeV2=void pushContext()

$prototypeV2=void reset()

$prototypeV2=void setPrefix( const QString & pre, const QString & uri )

$prototype=void splitName ( const QString & qname, QString & prefix, QString & localname ) const
%% TODO: implementar 'QString &'
%% $method=|void|splitName|const QString &,QString &,QString &

$prototypeV2=QString uri( const QString & prefix ) const

$extraMethods

#pragma ENDDUMP
