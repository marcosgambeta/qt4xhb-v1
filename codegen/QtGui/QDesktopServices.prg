%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtGui

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototypeV2=static QString displayName( QDesktopServices::StandardLocation type )

$prototypeV2=static bool openUrl( const QUrl & url )

$prototypeV2=static void setUrlHandler( const QString & scheme, QObject * receiver, const char * method )

$prototypeV2=static QString storageLocation( QDesktopServices::StandardLocation type )

$prototypeV2=static void unsetUrlHandler( const QString & scheme )

$extraMethods

#pragma ENDDUMP
