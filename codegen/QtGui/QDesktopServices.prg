%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

$addRequests

$beginClassFrom=

$addMethods

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=static QString displayName ( StandardLocation type )
$staticMethod=|QString|displayName|QDesktopServices::StandardLocation

$prototype=static bool openUrl ( const QUrl & url )
$staticMethod=|bool|openUrl|const QUrl &

$prototype=static void setUrlHandler ( const QString & scheme, QObject * receiver, const char * method )
$staticMethod=|void|setUrlHandler|const QString &,QObject *,const char *

$prototype=static QString storageLocation ( StandardLocation type )
$staticMethod=|QString|storageLocation|QDesktopServices::StandardLocation

$prototype=static void unsetUrlHandler ( const QString & scheme )
$staticMethod=|void|unsetUrlHandler|const QString &

$extraMethods

#pragma ENDDUMP
