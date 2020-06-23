%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtNetwork

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

#include <QtCore/QDateTime>

$prototype=QNetworkCacheMetaData ()
$internalConstructor=|new1|

$prototype=QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )
$internalConstructor=|new2|const QNetworkCacheMetaData &

/*
[1]QNetworkCacheMetaData ()
[2]QNetworkCacheMetaData ( const QNetworkCacheMetaData & other )
*/

HB_FUNC_STATIC( QNETWORKCACHEMETADATA_NEW )
{
  if( ISNUMPAR(0) )
  {
    QNetworkCacheMetaData_new1();
  }
  else if( ISNUMPAR(1) && ISQNETWORKCACHEMETADATA(1) )
  {
    QNetworkCacheMetaData_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=QDateTime expirationDate() const

$prototypeV2=bool isValid() const

$prototypeV2=QDateTime lastModified() const

$prototypeV2=bool saveToDisk() const

$prototypeV2=void setExpirationDate( const QDateTime & dateTime )

$prototypeV2=void setLastModified( const QDateTime & dateTime )

$prototypeV2=void setSaveToDisk( bool allow )

$prototypeV2=void setUrl( const QUrl & url )

$prototypeV2=QUrl url() const

$extraMethods

#pragma ENDDUMP
