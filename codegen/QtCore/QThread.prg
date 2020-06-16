%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2020 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$project=Qt4xHb
$module=QtCore

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

$prototype=QThread(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void exit(int returnCode = 0)
$method=|void|exit|int=0

$prototypeV2=bool isFinished() const

$prototypeV2=bool isRunning() const

$prototypeV2=QThread::Priority priority() const

$prototype=void setPriority(Priority priority)
$method=|void|setPriority|QThread::Priority

$prototype=void setStackSize(uint stackSize)
$method=|void|setStackSize|uint

$prototypeV2=uint stackSize() const

$prototype=virtual bool event(QEvent * event)
$virtualMethod=|bool|event|QEvent *

$prototypeV2=void quit()

$prototype=void start(Priority priority = InheritPriority)
$method=|void|start|QThread::Priority=QThread::InheritPriority

$prototypeV2=void terminate()

$prototypeV2=static QThread * currentThread()

$prototypeV2=static int idealThreadCount()

$prototypeV2=void yieldCurrentThread()

$beginSignals
$signal=|finished()
$signal=|started()
$endSignals

#pragma ENDDUMP
