$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTHREAD
#endif

CLASS QThread INHERIT QObject

   DATA self_destruction INIT .F.

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

#include <QThread>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QThread(QObject * parent = 0)
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
void exit(int returnCode = 0)
*/
$method=|void|exit|int=0

/*
bool isFinished() const
*/
$method=|bool|isFinished|

/*
bool isRunning() const
*/
$method=|bool|isRunning|

/*
Priority priority() const
*/
$method=|QThread::Priority|priority|

/*
void setPriority(Priority priority)
*/
$method=|void|setPriority|QThread::Priority

/*
void setStackSize(uint stackSize)
*/
$method=|void|setStackSize|uint

/*
uint stackSize() const
*/
$method=|uint|stackSize|

/*
virtual bool event(QEvent * event)
*/
$virtualMethod=|bool|event|QEvent *

/*
void quit()
*/
$method=|void|quit|

/*
void start(Priority priority = InheritPriority)
*/
$method=|void|start|QThread::Priority=QThread::InheritPriority

/*
void terminate()
*/
$method=|void|terminate|

/*
static QThread * currentThread()
*/
$staticMethod=|QThread *|currentThread|

/*
static int idealThreadCount()
*/
$staticMethod=|int|idealThreadCount|

/*
void yieldCurrentThread()
*/
$method=|void|yieldCurrentThread|

#pragma ENDDUMP
