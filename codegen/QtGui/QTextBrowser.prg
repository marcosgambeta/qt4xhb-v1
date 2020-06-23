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

$beginClassFrom=QTextEdit

$addMethods

$addSignals

$endClass

$destructor

#pragma BEGINDUMP

$includes

$prototype=QTextBrowser ( QWidget * parent = 0 )
$constructor=|new|QWidget *=0

$prototypeV2=int backwardHistoryCount() const

$prototypeV2=void clearHistory()

$prototypeV2=int forwardHistoryCount() const

$prototypeV2=QString historyTitle( int i ) const

$prototypeV2=QUrl historyUrl( int i ) const

$prototypeV2=bool isBackwardAvailable() const

$prototypeV2=bool isForwardAvailable() const

$prototypeV2=bool openExternalLinks() const

$prototypeV2=bool openLinks() const

$prototypeV2=QStringList searchPaths() const

$prototypeV2=void setOpenExternalLinks( bool open )

$prototypeV2=void setOpenLinks( bool open )

$prototypeV2=void setSearchPaths( const QStringList & paths )

$prototypeV2=QUrl source() const

$prototypeV2=virtual QVariant loadResource( int type, const QUrl & name )

$prototypeV2=virtual void backward()

$prototypeV2=virtual void forward()

$prototypeV2=virtual void home()

$prototypeV2=virtual void reload()

$prototypeV2=virtual void setSource( const QUrl & name )

$beginSignals
$signal=|anchorClicked(QUrl)
$signal=|backwardAvailable(bool)
$signal=|forwardAvailable(bool)
$beginGroup
$signal=|highlighted(QUrl)
$signal=|highlighted(QString)
$endGroup
$signal=|historyChanged()
$signal=|sourceChanged(QUrl)
$endSignals

#pragma ENDDUMP
