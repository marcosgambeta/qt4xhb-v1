%%
%% Qt4xHb - Bindings libraries for Harbour/xHarbour and Qt Framework 4
%%
%% Copyright (C) 2018 Marcos Antonio Gambeta <marcosgambeta AT outlook DOT com>
%%

$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTHREAD
#endif

CLASS QThread INHERIT QObject

   METHOD new
   METHOD delete
   METHOD exit
   METHOD isFinished
   METHOD isRunning
   METHOD priority
   METHOD setPriority
   METHOD setStackSize
   METHOD stackSize
   METHOD event
   METHOD quit
   METHOD start
   METHOD terminate
   METHOD currentThread
   METHOD idealThreadCount
   METHOD yieldCurrentThread

   METHOD onFinished
   METHOD onStarted

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

$includes

$prototype=QThread(QObject * parent = 0)
$constructor=|new|QObject *=0

$deleteMethod

$prototype=void exit(int returnCode = 0)
$method=|void|exit|int=0

$prototype=bool isFinished() const
$method=|bool|isFinished|

$prototype=bool isRunning() const
$method=|bool|isRunning|

$prototype=Priority priority() const
$method=|QThread::Priority|priority|

$prototype=void setPriority(Priority priority)
$method=|void|setPriority|QThread::Priority

$prototype=void setStackSize(uint stackSize)
$method=|void|setStackSize|uint

$prototype=uint stackSize() const
$method=|uint|stackSize|

$prototype=virtual bool event(QEvent * event)
$virtualMethod=|bool|event|QEvent *

$prototype=void quit()
$method=|void|quit|

$prototype=void start(Priority priority = InheritPriority)
$method=|void|start|QThread::Priority=QThread::InheritPriority

$prototype=void terminate()
$method=|void|terminate|

$prototype=static QThread * currentThread()
$staticMethod=|QThread *|currentThread|

$prototype=static int idealThreadCount()
$staticMethod=|int|idealThreadCount|

$prototype=void yieldCurrentThread()
$method=|void|yieldCurrentThread|

#pragma ENDDUMP
