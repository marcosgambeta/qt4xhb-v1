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

$prototype=QString historyTitle ( int i ) const
$method=|QString|historyTitle|int

$prototype=QUrl historyUrl ( int i ) const
$method=|QUrl|historyUrl|int

$prototypeV2=bool isBackwardAvailable() const

$prototypeV2=bool isForwardAvailable() const

$prototypeV2=bool openExternalLinks() const

$prototypeV2=bool openLinks() const

$prototypeV2=QStringList searchPaths() const

$prototype=void setOpenExternalLinks ( bool open )
$method=|void|setOpenExternalLinks|bool

$prototype=void setOpenLinks ( bool open )
$method=|void|setOpenLinks|bool

$prototype=void setSearchPaths ( const QStringList & paths )
$method=|void|setSearchPaths|const QStringList &

$prototypeV2=QUrl source() const

$prototype=virtual QVariant loadResource ( int type, const QUrl & name )
$virtualMethod=|QVariant|loadResource|int,const QUrl &

$prototypeV2=virtual void backward()

$prototypeV2=virtual void forward()

$prototypeV2=virtual void home()

$prototypeV2=virtual void reload()

$prototype=virtual void setSource ( const QUrl & name )
$virtualMethod=|void|setSource|const QUrl &

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
