$header

#include "hbclass.ch"

CLASS QTimer INHERIT QObject

   DATA self_destruction INIT .F.

   METHOD new
   METHOD delete
   METHOD interval
   METHOD isActive
   METHOD isSingleShot
   METHOD setInterval
   METHOD setSingleShot
   METHOD timerId
   METHOD start1
   METHOD start2
   METHOD start
   METHOD stop
   METHOD singleShot

   METHOD onTimeout

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QTimer>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QTimer ( QObject * parent = 0 )
*/
$constructor=|new|QObject *=0

$deleteMethod

/*
int interval () const
*/
$method=|int|interval|

/*
bool isActive () const
*/
$method=|bool|isActive|

/*
bool isSingleShot () const
*/
$method=|bool|isSingleShot|

/*
void setInterval ( int msec )
*/
$method=|void|setInterval|int

/*
void setSingleShot ( bool singleShot )
*/
$method=|void|setSingleShot|bool

/*
int timerId () const
*/
$method=|int|timerId|

/*
void start ( int msec )
*/
$method=|void|start,start1|int

/*
void start ()
*/
$method=|void|start,start2|

//[1]void start ( int msec )
//[2]void start ()

HB_FUNC_STATIC( QTIMER_START )
{
  if( ISNUMPAR(0) )
  {
    HB_FUNC_EXEC( QTIMER_START2 );
  }
  else if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QTIMER_START1 );
  }
}

/*
void stop ()
*/
$method=|void|stop|

/*
static void singleShot ( int msec, QObject * receiver, const char * member )
*/
$staticMethod=|void|singleShot|int,QObject *,const char *

#pragma ENDDUMP
