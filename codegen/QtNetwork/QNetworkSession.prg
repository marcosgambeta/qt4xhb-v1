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

$beginClassFrom=QObject

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QNetworkSession ( const QNetworkConfiguration & connectionConfig, QObject * parent = 0 )
$constructor=|new|const QNetworkConfiguration &,QObject *=0

$deleteMethod

$prototypeV2=quint64 activeTime() const

$prototypeV2=quint64 bytesReceived() const

$prototypeV2=quint64 bytesWritten() const

$prototypeV2=QNetworkConfiguration configuration() const

$prototypeV2=QNetworkSession::SessionError error() const

$prototypeV2=QString errorString() const

$prototypeV2=QNetworkInterface interface() const

$prototypeV2=bool isOpen() const

$prototype=QVariant sessionProperty ( const QString & key ) const
$method=|QVariant|sessionProperty|const QString &

$prototype=void setSessionProperty ( const QString & key, const QVariant & value )
$method=|void|setSessionProperty|const QString &,const QVariant &

$prototypeV2=QNetworkSession::State state() const

$prototype=bool waitForOpened ( int msecs = 30000 )
$method=|bool|waitForOpened|int=30000

$prototypeV2=void accept()

$prototypeV2=void close()

$prototypeV2=void ignore()

$prototypeV2=void migrate()

$prototypeV2=void open()

$prototypeV2=void reject()

$prototypeV2=void stop()

$beginSignals
$signal=|closed()
$signal=|error(QNetworkSession::SessionError)
$signal=|newConfigurationActivated()
$signal=|opened()
$signal=|preferredConfigurationChanged(QNetworkConfiguration,bool)
$signal=|stateChanged(QNetworkSession::State)
$endSignals

#pragma ENDDUMP
