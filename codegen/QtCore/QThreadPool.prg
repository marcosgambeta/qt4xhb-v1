$header

#include "hbclass.ch"

#ifndef QT4XHB_NO_REQUESTS
REQUEST QTHREADPOOL
#endif

CLASS QThreadPool INHERIT QObject

   METHOD new
   METHOD delete
   METHOD activeThreadCount
   METHOD expiryTimeout
   METHOD maxThreadCount
   METHOD releaseThread
   METHOD reserveThread
   METHOD setExpiryTimeout
   METHOD setMaxThreadCount
   METHOD start
   METHOD tryStart
   METHOD waitForDone
   METHOD globalInstance

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QThreadPool>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

$prototype=QThreadPool ( QObject * parent = 0 )
$constructor=|new|QObject *=0

$deleteMethod

$prototype=int activeThreadCount () const
$method=|int|activeThreadCount|

$prototype=int expiryTimeout () const
$method=|int|expiryTimeout|

$prototype=int maxThreadCount () const
$method=|int|maxThreadCount|

$prototype=void releaseThread ()
$method=|void|releaseThread|

$prototype=void reserveThread ()
$method=|void|reserveThread|

$prototype=void setExpiryTimeout ( int expiryTimeout )
$method=|void|setExpiryTimeout|int

$prototype=void setMaxThreadCount ( int maxThreadCount )
$method=|void|setMaxThreadCount|int

$prototype=void start ( QRunnable * runnable, int priority = 0 )
$method=|void|start|QRunnable *,int=0

$prototype=bool tryStart ( QRunnable * runnable )
$method=|bool|tryStart|QRunnable *

$prototype=void waitForDone ()
$internalMethod=|void|waitForDone,waitForDone1|

$prototype=bool waitForDone ( int msecs )
$internalMethod=|bool|waitForDone,waitForDone2|int

//[1]void waitForDone ()
//[2]bool waitForDone ( int msecs )

HB_FUNC_STATIC( QTHREADPOOL_WAITFORDONE )
{
  if( ISNUMPAR(0) )
  {
    QThreadPool_waitForDone1();
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    QThreadPool_waitForDone2();
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$prototype=static QThreadPool * globalInstance ()
$staticMethod=|QThreadPool *|globalInstance|

#pragma ENDDUMP
