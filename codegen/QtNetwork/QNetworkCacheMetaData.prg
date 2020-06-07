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

$prototype=QDateTime expirationDate () const
$method=|QDateTime|expirationDate|

$prototypeV2=bool isValid() const

$prototype=QDateTime lastModified () const
$method=|QDateTime|lastModified|

$prototypeV2=bool saveToDisk() const

$prototype=void setExpirationDate ( const QDateTime & dateTime )
$method=|void|setExpirationDate|const QDateTime &

$prototype=void setLastModified ( const QDateTime & dateTime )
$method=|void|setLastModified|const QDateTime &

$prototype=void setSaveToDisk ( bool allow )
$method=|void|setSaveToDisk|bool

$prototype=void setUrl ( const QUrl & url )
$method=|void|setUrl|const QUrl &

$prototype=QUrl url () const
$method=|QUrl|url|

$extraMethods

#pragma ENDDUMP
