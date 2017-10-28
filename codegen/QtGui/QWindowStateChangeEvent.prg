$header

#include "hbclass.ch"

CLASS QWindowStateChangeEvent INHERIT QEvent

   METHOD new1
   METHOD new2
   METHOD new
   METHOD delete
   METHOD oldState
   METHOD isOverride

   DESTRUCTOR destroyObject

END CLASS

$destructor

#pragma BEGINDUMP

#include <QWindowStateChangeEvent>

#include "qt4xhb_common.h"
#include "qt4xhb_macros.h"
#include "qt4xhb_utils.h"

/*
QWindowStateChangeEvent(Qt::WindowStates aOldState)
*/
$constructor=|new1|Qt::WindowStates

/*
QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride)
*/
$constructor=|new2|Qt::WindowStates,bool

//[1]QWindowStateChangeEvent(Qt::WindowStates aOldState)
//[2]QWindowStateChangeEvent(Qt::WindowStates aOldState, bool isOverride)

HB_FUNC_STATIC( QWINDOWSTATECHANGEEVENT_NEW )
{
  if( ISNUMPAR(1) && ISNUM(1) )
  {
    HB_FUNC_EXEC( QWINDOWSTATECHANGEEVENT_NEW1 );
  }
  else if( ISNUMPAR(2) && ISNUM(1) && ISLOG(2) )
  {
    HB_FUNC_EXEC( QWINDOWSTATECHANGEEVENT_NEW2 );
  }
  else
  {
    hb_errRT_BASE( EG_ARG, 3012, NULL, HB_ERR_FUNCNAME, HB_ERR_ARGS_BASEPARAMS );
  }
}

$deleteMethod

/*
Qt::WindowStates oldState() const
*/
$method=|Qt::WindowStates|oldState|

/*
bool isOverride() const
*/
$method=|bool|isOverride|

#pragma ENDDUMP
