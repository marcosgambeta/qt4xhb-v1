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

$prototype=QAuthenticator ()
$internalConstructor=|new1|

$prototype=QAuthenticator ( const QAuthenticator & other )
$internalConstructor=|new2|const QAuthenticator &

/*
[1]QAuthenticator ()
[2]QAuthenticator ( const QAuthenticator & other )
*/

HB_FUNC_STATIC( QAUTHENTICATOR_NEW )
{
  if( ISNUMPAR(0) )
  {
    QAuthenticator_new1();
  }
  else if( ISNUMPAR(1) && ISQAUTHENTICATOR(1) )
  {
    QAuthenticator_new2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}
$addMethod=new

$deleteMethod

$prototypeV2=bool isNull() const

$prototype=QVariant option ( const QString & opt ) const
$method=|QVariant|option|const QString &

$prototype=QVariantHash options () const
%% TODO: implementar 'QVariantHash'
%% $method=|QVariantHash|options|

$prototypeV2=QString password() const

$prototypeV2=QString realm() const

$prototype=void setOption ( const QString & opt, const QVariant & value )
$method=|void|setOption|const QString &,const QVariant &

$prototype=void setPassword ( const QString & password )
$method=|void|setPassword|const QString &

$prototype=void setUser ( const QString & user )
$method=|void|setUser|const QString &

$prototypeV2=QString user() const

$extraMethods

#pragma ENDDUMP
