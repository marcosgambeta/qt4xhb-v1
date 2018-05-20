%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QOBJECT
#endif

$beginClass

   METHOD create
   METHOD keys

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QObject * create ( const QString & key, const QString & specification )
HB_FUNC_STATIC( QGENERICPLUGINFACTORY_CREATE )
{
  QObject * ptr = QGenericPluginFactory::create ( PQSTRING(1), PQSTRING(2) );
  _qt4xhb_createReturnQObjectClass ( ptr, "QOBJECT" );
}

$prototype=static QStringList keys ()
$staticMethod=|QStringList|keys|

$extraMethods

#pragma ENDDUMP
